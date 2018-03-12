<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<title>菜单配置</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />

</head>

<script type="text/javascript" src="${ctxPath}/html/sysresource/js/meunResourceAdd.js"></script>
<script type="text/javascript" src="${ctxPath}/html/sysresource/js/sysresourceForm.js"></script>
<script type="text/javascript">
var supForsubResource;
	$(function(){
		supForsubResource={ 
		plhs:{},
			
			deptClick:function(dtnode, event){  
				//DWZ.debug('deptClick:function(dtnode, event)')
				//DWZ.debug(arguments)  
		 	},
		 	lazyRead: function(dtnode){ //懒加载操作的拦截  一般不用覆盖
		 		DWZ.debug(dtnode);
		 		//onlazyread = "supForsubResource.lazyRead"
		 		return true;
		 	}, 
		 	postProcess: function(data,dataType){  //后处理 ajax结果的拦截处理
	        	for(v in data){
	        		if(data[v].moduleCaption){ 
	        			data[v].isFolder=false; 
	        			data[v].isLazy=true; 
	        			data[v].expand=false;  
	        			data[v].title=data[v].moduleCaption; 
	        			data[v].tooltip=data[v].content;
	        			(data[v].sourceType==1)?data[v].title=data[v].moduleCaption+"(功能)":data[v].moduleCaption; 
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
        	
        	onactivate : function(dtnode, event){
        		$('#supresourceId').val(dtnode.data.id);
        	},
        	 	
		 	submitSupForsubResource : function(){ 
		 		
		 		var supid = $("#supresourceId").val();
		 		var sub = $("#allResource option:selected");
		 		var subids = "";
		 		var $checkBoxModuleCaption = $("input[type='checkbox'][name='checkModuleCaption']:checked");
        		if($checkBoxModuleCaption.length>0){
					$checkBoxModuleCaption.each(function(){
						if(subids.length==0){  
							subids = $(this).val();	
			 			}else{
			 				subids = subids+","+$(this).val();
			 			}						
					});
				} else {
					$.each(sub,function(){
						if(subids.length==0){  
							subids = $(this).val();	
		 				}else{
		 					subids = subids+","+$(this).val();
		 				}
        			});
					
				}	
        		
				if(supid.length>0 && subids.length>0 ){
				      meunResourceAddCRUD.submitSupForsubResource(supid,subids);
				}else{
					$.alert("请选择父资源或者子资源!"); 
				}
		 	  },
		 	fillSels: function(){
		 		var supid = $("#supresourceId").val(); 
		 		meunResourceAddCRUD.meunResourceAdd(supid); //添加菜单资源
			},
		 	dblClick: function(dtnode, event){   //双击加入this to  select
		 		supForsubResource.fillSel(dtnode);
			}, 
			fillSel: function(dtnode){  //填充select by node
				
			},
			onready:function(){
				$('#allResource').height($('#supForsubResource').height())
			},
			editMeun: function(){
				var supid = $("#supresourceId").val();
				if(supid.length>0)
					meunResourceAddCRUD.meunResourceUpdate(supid);
				else
					$.alert("请选择编辑的菜单");
			},
			delMeun: function(){
				var supid = $("#supresourceId").val();
				if(supid.length>0)
					meunResourceAddCRUD.meunResourceDelete(supid);
				else
					$.alert("请选择编辑的菜单");
			} 
		
		};
		$("#moduleCaptionName").keyup(function(){  
		DWZ.debug('moduleCaptionName keyup')
			var moduleCaptionName = $("#moduleCaptionName").val(); 
	        //if(moduleCaptionName.length>0){
	        	suntoolkit.offLoadingMask();     
	        	$('#allResource').html(''); 
	        	$('#allResource').trigger('reload',{data:{moduleCaptionName: moduleCaptionName}}); 
	        	suntoolkit.offLoadingMask(); 
	    		//meunResourceAddCRUD.searchModuleCaptionName(moduleCaptionName); 
	    	//}else{   
	    		//$("#showSubModuleCaption").html("").attr("class","").attr("style","");
	    	//}
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
				$(this).css('color','#ccc') ; 
    			$(this).val('功能名称');
			}
		});
		
		$('#supForsubResourceUnitbox').css('height',$('div .navTab-panel').height());
	});      
</script>        
    <div id='supForsubResourceUnitbox'  >      
		 <div id='pageLeftForDept' style="float: left;width:40%;height:100% ">  
			<sui:tree  id="supForsubResource"  checkbox="false"  postProcess ="supForsubResource.postProcess" 
			onready='supForsubResource.onready' 
		 	   buttons="{class:'ui-state-default ui-corner-all x10',onclick:'supForsubResource.fillSels()',id:'saveToSelectForRole',name:'添加菜单',operator:'role_setUser_save'},
		 	   			{class:'ui-state-default ui-corner-all x10',onclick:'supForsubResource.editMeun()',id:'editMeun',name:'编辑菜单',operator:'editMeun'},
		 	   			{class:'ui-state-default ui-corner-all x10',onclick:'supForsubResource.delMeun()',id:'delMeun',name:'删除菜单',operator:'delMeun'}"  	
		 		onDblClick="supForsubResource.dblClick" onactivate="supForsubResource.onactivate"  url="${ctxPath}/dept/loadChildrenSysResource.action" ></sui:tree> 
		</div>  
		<div  style="float: right;width:40%;height:100%">    
			<div style='height:22px' id='searchHead' class="ui-state-default ui-th-column ui-th-ltr">
	 		<label class="ui-icon ui-icon-search" for="moduleCaptionName" style="border: 0px none; position: absolute; left: 61%;"></label>
			<input id="moduleCaptionName" size="30" name="moduleCaptionName" value='功能名称' style="float:left;text-align: left ;margin-bottom:10px;margin-left:25px; color: #ccc;"/>
			<button style='float:left;margin-left:50px;margin-bottom: 10px;'  class="ui-state-default ui-corner-all x8" onmouseover="$(this).addClass('ui-state-hover')" onmouseout="$(this).removeClass('ui-state-hover')" onclick="supForsubResource.submitSupForsubResource()">加入至菜单</button>
			</div>
		 	<sui:select name="allResource" id="allResource" dataUrl="${ctxPath}/sysresource/searchModuleCaptionName.action"
				autoCombobox="off" multiple="true"  style='width:100%;text-align:left;height:100%'    
				jsonreader="{'id':'id','value':'moduleCaption'}"></sui:select>	  
		</div>  
 		<input type="hidden" id='supresourceId'/> 
  </div>