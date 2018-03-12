<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<title>部门管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />

</head>

<script type="text/javascript">
var deptTreeForDept;
	$(function(){
		$('#delDeptUser').click(function(){ //移除选中的部门.
			var deptObj = $('#selectUsers :selected');
			if(deptObj.length==0){
			    $('#selectUsers option').last().remove();
			}else{
			    deptObj.remove();
			    $('#selectUsers option').last().attr("selected","true");
			}
	});
	
		$('#selectAllButForUser').click(function(){ //全部选中所加的部门记录
		 $('#selectUsers option').each(function (index,domEle){
			        $(this).attr("selected","true");
			  });
			
	   });
		deptTreeForDept={ 
		plhs:{},
			deptClick:function(dtnode, event){  
				//DWZ.debug('deptClick:function(dtnode, event)')
				//DWZ.debug(arguments)  
		 	},
		 	lazyRead: function(dtnode){ //懒加载操作的拦截  一般不用覆盖
		 		DWZ.debug(dtnode)
		 		//onlazyread = "deptTreeForDept.lazyRead"
		 		return true;
		 	}, 
		 	postProcess: function(data,dataType){  //后处理 ajax结果的拦截处理
	        	for(v in data){
	        		if(data[v].deptname){ 
	        			data[v].isFolder=true 
	        			data[v].isLazy=true 
	        			data[v].expand=false  
	        			data[v].title=data[v].deptname
	        		//	data[v].noLink=true   
	        		} 
	        		if(data[v].userName){  
	        			data[v].isFolder=false
	        			data[v].isLazy=false 
	        			data[v].expand=false   
	        			data[v].title=data[v].userName 
	        			//data[v].noLink=true    
	        		} 
	        	} 
        		return data;
        	},  
		 	getSelect: function(){   // 填充隐藏域
		 		$('#deptAddUser').html('') ; 
		 		$('#deptSelectUserId').val('');
 		 		$('#deptToDept').val(''); 
		 		$('#selectUsers option').each(function(){
				    $('#deptAddUser').html($('#deptAddUser').html()+$(this).text()+";")
				    if($('#deptSelectUserId').val()=='')
						$('#deptSelectUserId').val($(this).val()) 
					else		
						$('#deptSelectUserId').val($('#deptSelectUserId').val()+","+$(this).val())
						
					if($('#deptToDept').val()=='')
						$('#deptToDept').val($(this).text().split(":")[0])
					else		                   
						$('#deptToDept').val($('#deptToDept').val()+","+$(this).text().split(":")[0])	
				})
				suntoolkit.destroyDialog("allocateUserForDeptDialog"); 
		 	},  
		 	fillSels: function(){  //填充select by treeSelect
		 		var plhs = dy_deptAddSelectUsers.dynatree("getSelectedNodes");
		 		for(v in plhs){
					deptTreeForDept.fillSel(plhs[v]) 
				} 
				//$('#selectUsers option').last().attr("selected",'true');
			},
		 	dblClick: function(dtnode, event){   //双击加入this to  select
		 		deptTreeForDept.fillSel(dtnode)
			}, 
			fillSel: function(dtnode){  //填充select by node
				var isBreak=0;
				$('#selectUsers option').each(function(){
				    if($(this).val()==dtnode.data.id){
				    	isBreak=1;
				    	return;
				    } 
				}) 
				if($('#selectUsers').text()==''){
				if(isBreak==0)
					$('#selectUsers').append("<option value="+dtnode.data.id+">"+dtnode.data.deptname+"</option>")
				}else{
					$.alert('一个用户只能设置一个部门！');
				}
			},
			setSelect: function(){   // 填充Select  by   隐藏域 
				$("#selectUsers").html('');
				var publishers= $('#deptAddUser').text().split(";")
				var deptSelectUserIds= $('#deptSelectUserId').val().split(",") 
				for(v in deptSelectUserIds){   
					if(publishers[v]!="")
				   		$('#selectUsers').append("<option value="+deptSelectUserIds[v]+">"+ publishers[v]+"</option>")
				}
		 	}
		} 
		deptTreeForDept.setSelect(); 
	})
</script>  
   
 <body> 
<div id='pageLeftForDept' style='float:left;text-align:left;width:300px; height:100%'>
  
<sui:tree  id="deptAddSelectUsers"  selectmode="1"  checkbox="true" postProcess ="deptTreeForDept.postProcess"  postData="root"
 	onDblClick="deptTreeForDept.dblClick"  onclick="deptTreeForDept.deptClick"  url="${ctxPath}/dept/loadChildrenOnlyDepart.action" 
								></sui:tree> 
</div>  

<div id='pageLeft' style='float:left;margin-top:200px;text-align:center;width:50px; height:100%'>

	<button  class="ui-state-default ui-corner-all x5" id="addDeptUser" title="添加部门" onclick="deptTreeForDept.fillSels()" name="addDeptForUser">
	<span>>></span>
	</button>
	<br></br>
	<button  class="ui-state-default ui-corner-all x5" id="delDeptUser" title="移除部门"  name="delDeptForUser">
	<span><<</span>
	</button>
	
	<br></br>
	<button onmouseover="$(this).addClass('ui-state-hover')" onmouseout="$(this).removeClass('ui-state-hover')" class="ui-state-default ui-corner-all x5" id="saveUserBtn" title="提交数据" onclick="deptTreeForDept.getSelect()" name="确认">
	<span>提交</span>
	</button>
</div> 

<div style='float:right; height: 100%;'> 

<sui:select autoCombobox="off" id='selectUsers' name='selectUsers'  multiple="true" size="10" style="width:250px;height:100%" ></sui:select>
</div>
		</body>
</html>