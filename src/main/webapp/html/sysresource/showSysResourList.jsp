<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<head>

		<title>资源授权管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />

		<script src="${ctxPath}/html/js/jqGrid/js/jquery-1.7.2.min.js"
			type="text/javascript"></script>
		<script type='text/javascript'
			src='${ctxPath}/html/sysresource/js/sysresourceForm.js'></script>
		<script type='text/javascript'
			src='${ctxPath}/html/sysresource/js/sysresourceList.js'></script>

 
	</head>
	<script type="text/javascript">
		$(document).ready(function(){//资源分配页面 将当前角色原有的资源默认选中。
             var sysIds =$('#sysResourceIds').val().split(",");          
                for(i=0;i<sysIds.length;i++){
				    $("[id='"+sysIds[i]+"']").attr("checked",'true');
				}
	
		});
		
		$(function() { //获得当前页面选中的资源id，传到后台做相应的处理。
			var sysResourceIds = new Array();  
			var i=0;  
			var roleId =$('#roleId').val();
			$('#saveSelectSysResour').click(function(){
			    $('#saveSelectSysResour').attr('disabled','true');
			    $(':checked').each(function(index){	
			    	sysResourceIds[i++] =  $(this).attr('id');  		    	
			    })   
			    sysResourceListCRUD.addSysresourceForRole(sysResourceIds,roleId);
			});
		}); 


function checkNextObj(obj){	// 取消选中该节点的所有子孙节点
	$(obj).parent().find('div').each(function(){
	    $(this).find('input').attr('checked',false)
	
	}) 
}

function checkParentObj(obj){ //当点击该节点时默认选中该节点的所有父节点。
 var chs=$(obj).parent().parent().children('input:checkbox');
  if(chs!=null){
  var len=chs.length;
  for(var i=0;i<len;i++){
   if(chs[i]!=obj){
    chs[i].checked = true;
    checkParentObj(chs[i]);   
    }
  }
 }
}
$(function(){
 $('input:checkbox').click(
  function(){
  if(this.checked==false)
   checkNextObj(this);
   checkParentObj(this);
  });    
}
);

function allSelectSys(obj){
	$('input:checkbox').attr('checked',obj.checked);
}

	</script>
	<body>

<style type="text/css">
div {
	margin-left: 20px;
	padding: 2px;
	position: relative;
}
</style> 
	<div >
		<span><font face='微软雅黑' size='3px'><input type="checkbox" name="allSelect" id="allSelect" onclick="allSelectSys(this);" />全选/取消
		</font></span>
	</div>
		<div style="background-color: #eaf2fa">

			<input type="hidden" name="roleId" id="roleId" value="${roleId}" />
			<input type="hidden" name="sysResourceIds" id="sysResourceIds" value="${sysResourceIds}" />
			${sysResource_string}
		</div>
		
			<div class="buttonContent" style="text-align:center;" >
				<button  style="background-color:#eaf2fa;color: #003d7e;"  type="submit" id='saveSelectSysResour'>
				<span><font face='微软雅黑' size='3px'>保存</font></span>
				</button>
			</div>
	</body>
</html>
