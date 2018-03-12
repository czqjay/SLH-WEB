<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<title>子资源维护管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />

</head>

<script type="text/javascript" src="${ctxPath}/html/sysresource/js/sysResourceItem.js"></script>

<script type="text/javascript">
var sysResourceItem;
	$(function(){
		sysResourceItem={ 
		plhs:{},
			deptClick:function(dtnode, event){
				var supid="";			
				var sup = dy_supResource.dynatree("getSelectedNodes");	
				for(v in sup){
					supid = sup[v].data.id;
				}
				if(supid.length>0){
					sysResourceItemAddCRUD.searchSubResource(supid);
				}else{
					sysResourceItemAddCRUD.searchSubResource(dtnode.data.id);
				}
		 	},
		 	lazyRead: function(dtnode){ //懒加载操作的拦截  一般不用覆盖
		 		DWZ.debug(dtnode);
		 		//onlazyread = "supForsubResource.lazyRead"
		 		return true;
		 	}, 
		 	postProcess: function(data,dataType){  //后处理 ajax结果的拦截处理
	        	for(v in data){
	        		if(data[v].moduleCaption){ 
	        			data[v].isFolder=true;
	        			data[v].isLazy=true; 
	        			data[v].expand=false;  
	        			data[v].title=data[v].moduleCaption;
	        		//	data[v].noLink=true   
	        		} 
	        	} 
        		return data;
        	},  
        	postAllProcess: function(data,dataType){  //后处理 ajax结果的拦截处理
	        	for(v in data){
	        		if(data[v].moduleCaption){ 
	        			data[v].isFolder=false;
	        			data[v].isLazy=false;
	        			data[v].expand=false;  
	        			data[v].title=data[v].moduleCaption;
	        		//	data[v].noLink=true   
	        		} 
	        	}  
        		return data;
        	},

        	addSelect: function(){  
        		var supid="";
        		var subid="";
        		var subname="";
        		var $checkBoxModuleCaption = $("input[type='checkbox'][name='searchModuleCaption']:checked");
        		     		
        		var sup = dy_supResource.dynatree("getSelectedNodes");
        		var sub = dy_subAllResource.dynatree("getSelectedNodes");

        		if(sup.length == 0){
        			alert("请选择菜单节点");
        			return;
        		}

				if($checkBoxModuleCaption.length>0){
					$checkBoxModuleCaption.each(function(){
						if($('#subResource option[value='+$(this).val()+']').length==0)
		 					$('#subResource').append("<option value="+$(this).val()+">"+$(this).attr('caption')+"</option>");
		 				if(subid.length==0){  
		 					subid = $(this).val();	
		 				}else{
		 					subid = subid+","+$(this).val();
		 				}
					});
				} else {
	        		for(v in sub){
	        			subid = sub[v].data.id;
	        			subname = sub[v].data.moduleCaption;
	        			if($('#subResource option[value='+subid+']').length==0){
		        			$('#subResource').append("<option value="+subid+">"+subname+"</option>");		
	        			}	
	        		}				
				}
					
        		if(subid.length == 0){
        			alert("请选择Action资源");
        			return;
        		}
			},

			removeSelect : function(){
	
				var sup = dy_supResource.dynatree("getSelectedNodes");

				if(sup.length > 0){
				
					var obj = $('#subResource :selected');//选中的对象
					if(obj.length == 0){
						$('#subResource option').last().remove();
					}else {
						obj.remove();//移除选中的对象
						$('#subResource option').last().attr("selected",'true');//选中的对象变为最后一个
					}				
				} else {
					alert("请选择菜单节点！");
				}	
			},
        	
		 	submitSysResourceItem : function(){ 		
				var  sup = dy_supResource.dynatree("getSelectedNodes");
				var supid = '';
				for(v in sup ){
					supid = sup[v].data.id;
				}
				
				if(supid.length == 0){
					alert("请选择菜单的节点");
					return false;
				}

				var subid ='';
				$('#subResource option').each(function(){
					if(subid.length == 0){
						subid = $(this).val();
					}else {
						subid = subid+","+$(this).val();
					}
				});	
				sysResourceItemAddCRUD.submitSysResourceItem(supid,subid);
		 	  },
		 	fillSels: function(){  
		 		sysResourceItemAddCRUD.sysResourceItemAdd(); //添加菜单资源
			},
		 	dblClick: function(dtnode, event){   //双击加入this to  select
		 		sysResourceItem.fillSel(dtnode);
			}, 
			fillSel: function(dtnode){  //填充select by node

			},
		};
		
		$("#moduleCaptionName").keyup(function(){
			var moduleCaptionName = $("#moduleCaptionName").val(); 
	        if(moduleCaptionName.length>0){
	        	suntoolkit.offLoadingMask(); 
	    		sysResourceItemAddCRUD.searchModuleCaptionName(moduleCaptionName);
	    	}else{
	    		$("#showModuleCaption").html("").attr("class","").attr("style","");
	    	}
		});
		
		$("#moduleCaptionName").click(function(){
			if($(this).css('color').indexOf('204')>-1||$(this).css('color').indexOf('c')>-1){
				$(this).val('');
				$(this).css('color','#111');
			} 		   
      	});
      	
      	$("#moduleCaptionName").blur(function(){ 
			var moduleCaptionName = $("#moduleCaptionName").val().replace(/\s/g,''); 
			if(moduleCaptionName.length==0){ 
				$(this).css('color','#ccc'); 
    			$(this).val('Action资源名称');
			}
		});		
	});	
</script>  
   
 <body> 
<div id='pageLeftForDept' style="float: left;width:32%;height:610px; overflow:scroll;" >
 <div class="ui-state-default ui-th-column ui-th-ltr">
 	<!-- 
   <button style='float:left;margin-bottom: 10px;'  class="ui-state-default ui-corner-all x8" onmouseover="$(this).addClass('ui-state-hover')" onmouseout="$(this).removeClass('ui-state-hover')" onclick="sysResourceItem.fillSels()">添加菜单</button>
 	 -->
 	<span style='float:left;margin-bottom:5px;margin-top:5px;margin-left: 10px;' > 资源树</span>
</div>
	<sui:tree  id="supResource"  selectmode="1"  checkbox="true" postProcess ="sysResourceItem.postProcess" 
 		onDblClick="sysResourceItem.dblClick"  onclick="sysResourceItem.deptClick"   url="${ctxPath}/sysresourceItem/getTreeMenuOnlySysResource.action" ></sui:tree> 
</div>

<div style='height: 610px;width:31%; float: left;'>     
	<div class="ui-state-default ui-th-column ui-th-ltr">
    	 <span style='float:left;margin-bottom:5px;margin-top:5px;margin-left:10px' >子资源</span>
	</div>
	<sui:select autoCombobox="off" id='subResource' name='subResource'   multiple="true" size="10" style='width:330px;text-align:left;height:610px' ></sui:select>
</div>

 <div  style='float:left;text-align:center;width:50px; height:100%;padding-top: 130px;'>
	<button  onmouseover="$(this).addClass('ui-state-hover')" 
		onmouseout="$(this).removeClass('ui-state-hover')" class="ui-state-default ui-corner-all x5" id="addSubResourceToSelect" title="添加Action资源" onclick="sysResourceItem.addSelect()">
		<span><<</span>
		</button>
		<br></br> &nbsp;
		<button  onmouseover="$(this).addClass('ui-state-hover')" 
		onmouseout="$(this).removeClass('ui-state-hover')" class="ui-state-default ui-corner-all x5" id="removeSubResourceFromSelect" title="移除Action资源" onclick="sysResourceItem.removeSelect()" >
		<span>>></span>  
	</button>
	<br></br>
	<br></br> &nbsp; 
	<button onmouseover="$(this).addClass('ui-state-hover')" 
		onmouseout="$(this).removeClass('ui-state-hover')" 
		class="ui-state-default ui-corner-all x5" title="提交数据"  
		onclick="sysResourceItem.submitSysResourceItem()">
		<span>提交</span>
	</button>
</div>  


<div  style="float: right;width:32%;height:610px;">
	<div class="ui-state-default ui-th-column ui-th-ltr" >
		<label class="ui-icon ui-icon-search" for="moduleCaptionName" style="border: 0px none; position: absolute; left: 730px;"></label>
		<input id="moduleCaptionName" size="55" name="moduleCaptionName" value='Action资源名称' style="float:right;text-align: left ;margin-bottom:10px;margin-right:20px; color: #ccc;"/>
	</div>

 	<div id="showModuleCaption">	
 	</div>
   
	<div style="height:600px;">
       <sui:tree id="subAllResource"  selectmode="2"  checkbox="true" postProcess ="sysResourceItem.postAllProcess" 
		onclick="sysResourceItem.deptClick"  url="${ctxPath}/sysresourceItem/getAllSubSysResource.action" ></sui:tree> 
	</div>
	
	
</div>

</body>
</html>