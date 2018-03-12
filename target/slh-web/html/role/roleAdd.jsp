<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>

		<title>角色管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/role/js/roleForm.js'></script>
		
	</head>
	
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


		<sui:panel title="角色添加" id='addRole' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="roleFormAdd" onclick="roleFormSubmit"
				callback="roleFormCRUD.saveOrUpdate"></sui:validate>
			<form id="roleFormAdd" method="post"
				action='${ctxPath}/role/addRole.action'>
				<sui:field type="input">
					<sui:input title="角色名称："  size="x100" require="true"> 
						<input type="text"  name='roleName' id="roleNameAdd" maxlength="50" remoteMessage='该名称已经存在' remote='${ctxPath}/role/isExists.action' />  
					</sui:input>
				</sui:field>
					
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='roleFormCRUD.roleFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
