<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>用户密码修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/user/js/personPaswUpdate.js'></script>

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
<script type="text/javascript">
</script>
		<sui:panel title="用户密码修改" id='personPaswUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="personPaswUpdateForm" onclick="personPaswUpdateSubmit"
				callback="personPaswUpdateCRUD.personPaswUpdateOrSave"></sui:validate>
			<form id="personPaswUpdateForm" method="post"
				action='${ctxPath}/user/personPaswUpdate.action'>
				
				
                <sui:field type="input"> 
					<sui:input title="新密码：" size="x30" require="true">
						<input type="password" name='pwd' id='newPwdForAdmin' 
							maxlength="20" required="true" password='true'/> 
					</sui:input>
					<sui:input title="确认密码：" size="x30" require="true">
						<input type="password" name='pwd2'  maxlength="20"
							required="true" equalTo='#newPwdForAdmin' />
					</sui:input>  
				</sui:field> 

				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='personPaswUpdateCRUD.personPaswUpdateValidateSubmit()'></sui:button>
				</sui:field>
		
				
			</form>
		</sui:panel>

	</body>
</html>
