<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>用户管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/operator/js/operatorForm.js'></script>

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
		<sui:panel title="用户信息修改" id='operatorUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="operatorFormUpdate" onclick="operatorFormSubmit"
				callback="operatorFormCRUD.saveOrUpdate"></sui:validate>
			<form id="operatorFormUpdate" method="post" 
				action='${ctxPath}/operator/operatorUpdate.action'>
				
				<sui:field type="input">
					  <sui:input title="用户名称："  size="x27" require="true"> 
						<input type="text"  name="userName" value="${operator.userName}"  maxlength="50" maxlength="200" />  
					</sui:input> 
				</sui:field> 
				
				<input type="hidden" id="id" name="id" value="${operator.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='operatorFormCRUD.operatorFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body>
</html>
