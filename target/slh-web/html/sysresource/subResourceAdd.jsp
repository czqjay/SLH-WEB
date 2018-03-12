<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>

		<title>资源管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/sysresource/js/sysresourceForm.js'></script>
		
	</head>
	<script>
	    $(document).ready(function(){
	        $('#saveBut').click(function(){
	            subResourceFormAdd.submit();
	        });
	    });
	</script>
	<body>

		<style type="text/css">
label {
	color: #000000;
	display: inline;
	font-weight: bold;
	text-align: right;
	float: left
}
</style> 


		<sui:panel title="子资源添加" id='addsysResource' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<form id="subResourceFormAdd" method="post"
				action='${ctxPath}/sysresource/saveSubResource.action' target="target1" >
	
				<sui:field type="input">
					<sui:input title="上级资源ID："  size="x100" > 
					<textArea cols="60"  rows="3" name="superiorResourceStr" id="superiorResourceStr"></textArea>  
					</sui:input>
					</sui:field>
				<sui:field type="input">	
				<
					<sui:input title="子资源id："  size="x60" require="true" > 
						<textArea cols="60" rows="5" name="subordinateResourceStr" id="subordinateResourceStr"></textArea>  
					</sui:input>
				</sui:field>
				
	
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存" id='saveBut'
						></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>
<iframe name="target1"></iframe>
	</body>
</html>
