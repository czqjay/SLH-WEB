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
		$('#allocateDeptForUserBtn').click(function(){
			allocateDeptForUserCRUD.allocateDeptForUser();
		})
	})  
	
	function processDeptUpdate(){ 
			<c:forEach items="${user.departs}" var="dept">
				<c:if test="${!empty dept}">
			      var names = $('#deptAddUser').text();
			      $('#deptAddUser').text(names+"${dept.deptname};") 
			      var ids = $('#deptSelectUserId').val();
			      $('#deptSelectUserId').val(ids+"${dept.id},") 	
			    </c:if>      
			</c:forEach>  
		};
		processDeptUpdate();
</script>	

		<sui:panel title="用户信息修改" id='userUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="userFormUpdate" onclick="userFormSubmit"
				callback="userFormCRUD.saveOrUpdate"></sui:validate>
			<form id="userFormUpdate" method="post"
				action='${ctxPath}/user/userSave.action'>
				
				<sui:field type="input">
					<sui:input title="用户帐号：" size="x27" require="true">
					<input type="text" name="accountName" value="${user.accountName}"  id ='accountName' maxlength="200"
						remoteMessage='该账号已存在' remote='${ctxPath}/user/isExists.action?id=${user.id}' required="true" digitLetter="true"/> 
					</sui:input>
					  <sui:input title="用户名称："  size="x27" require="true"> 
						<input type="text"  name="userName" maxlength="50" remoteMessage='该用户名已存在' remote='${ctxPath}/user/isExists.action?id=${user.id}' required="true" value="${user.userName}" id="userName" maxlength="200" />  
					</sui:input>
             
				</sui:field>
               
				<sui:field type="input"> 
				
					<sui:input title="身份证："  size="x27" > 
						<input type="text" name='idCard' idCard='true' value="${user.idCard}" maxlength="18" />  
					</sui:input>
					<sui:input title="联系电话：" size="x27" >
						<input type="text" name="phone" value="${user.phone}" id='phone' mixPhone="true" maxlength="20" /> 
					</sui:input>
				      </sui:field>
				      
				      
				     <sui:field type="input"> 
					
					<sui:input title="联系地址：" size="x27" >
						<input type="text" name='address' id="address" value="${user.address}" maxlength="200" />
					</sui:input> 
				
				</sui:field> 
						
				<sui:field type="input" id="showDept">
					<sui:input title="选择部门：" size="x50">
						<textArea cols="60" rows="3" name="deptAddUser" id="deptAddUser" readonly='true'></textArea>
						<sui:button title="选择" id='allocateDeptForUserBtn'></sui:button>
						
					</sui:input>
				</sui:field>
				
				
				<sui:field type="hidden">
					<input type="hidden" id="id" name="id" value="${user.id}" />
					<input type="hidden" id="userSource" name="userSource" value="${user.userSource}" />
					<input type="hidden" name='deptToDept' id='deptToDept' />
				    <input type="hidden" name='deptSelectUserId' id='deptSelectUserId' />
				   </sui:field>
					
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
