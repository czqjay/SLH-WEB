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
		<script type='text/javascript' src='${ctxPath}/html/user/js/userForm.js'></script>
		<script type='text/javascript' src='${ctxPath}/html/user/js/allocateDeptForUser.js'></script>

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
	
	$(function(){
		$('#allocateUserForDeptBtn').click(function(){
			allocateDeptForUserCRUD.allocateDeptForUser();
		})
	})  
</script>
		<sui:panel title="用户添加" id='userAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="userFormAdd" onclick="userFormSubmit"
				callback="userFormCRUD.saveOrUpdate"></sui:validate>
			<form id="userFormAdd" method="post"
				action='${ctxPath}/user/userSave.action'>
				
				<sui:field type="input">
					<sui:input title="用户帐号：" size="x27" require="true">
					<input type="text" name="accountName" id ='accountName' 
						 required="true" digitLetter="true" remoteMessage='该账号已存在' remote='${ctxPath}/user/isExists.action'  maxlength="200" />
					</sui:input>
					  <sui:input title="用户名称："  size="x27" require="true" > 
						<input type="text"  name="userName" id="userName" remoteMessage='该用户名已存在' remote='${ctxPath}/user/isExists.action' maxlength="200" required="true" />  
					</sui:input>
             
				</sui:field>
                <sui:field type="input"> 
					<sui:input title="密码：" size="x27" require="true">
						<input type="password" name='password' id='pwd' 
							maxlength="32" required="true" password='true'/> 
					</sui:input>
					<sui:input title="确认密码：" size="x27" require="true">
						<input type="password" name='pwd2'  maxlength="32"
							required="true" equalTo='#pwd' />
					</sui:input> 
				</sui:field>
				
				<sui:field type="input"> 
						<sui:input title="身份证："  size="x27" > 
						<input type="text" name='idCard' idCard='true' maxLength="18"  />  
					</sui:input>
					<sui:input title="联系电话：" size="x27" >
						<input type="text" name="phone" id='phone' mixPhone="true" maxlength="20" /> 
					</sui:input>
				      </sui:field>
				      
				      <sui:field type="input"> 
					
					<sui:input title="联系地址：" size="x27" >
						<input type="text" name='address' id="address" maxlength="200"/>
					</sui:input> 
					
					<sui:input title="用户类型：" size="x27">
						<select name="datatype" id="datatype"> 
							<option value="0">普通用户</option>
						</select>
					</sui:input>
				
				</sui:field>

										
				<sui:field type="input" id="showDept">
					<sui:input title="选择部门：" size="x50">
						<textArea cols="60" rows="3" name="deptAddUser" id="deptAddUser" readonly='true'></textArea>
						<sui:button title="选择" id='allocateUserForDeptBtn'></sui:button>
						
					</sui:input>
				</sui:field>
				<input type="hidden" name='deptToDept' id='deptToDept' />
				<input type="hidden" name='deptSelectUserId' id='deptSelectUserId' />
				
					
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='userFormCRUD.userFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
