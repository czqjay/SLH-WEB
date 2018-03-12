<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>

		<title>部门添加</title>
		<%-- 此组件不缓存 --%>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/dept/js/deptForm.js'></script>
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




		<sui:panel title="部门添加" id='deptAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="deptFormAdd" onclick="deptFormSubmit"
				callback="deptFormCRUD.saveOrUpdate"></sui:validate>
			<form id="deptFormAdd" method="post"
				action='${ctxPath}/dept/deptSave.action'>
				
				<sui:field type="input">
					<sui:input title="部门编号：" size="x30"require="true">
					
						<input type="text" name="deptno" id ='deptno'  remoteMessage='部门编号已存在' remote='${ctxPath}/dept/isExists.action' maxlength="200"
						digitLetter="true"	required="true" />
				
					</sui:input>
					<sui:input title="部门名称：" size="x30" require="true">
						<input type="text" name="deptname" id='deptName'  remoteMessage='部门名称已存在' remote='${ctxPath}/dept/isExists.action' maxlength="200"
							required="true" />
					
			
					</sui:input>
				</sui:field>
				
				<sui:field type="input">  
					<sui:input title="上级部门："  size="x30" >  
						<!--<select name="parentDepartStr" id="parentDept">
							<option value="0">--请选择--</option>
								<c:forEach items="${depart_List}" var="departs" > 
					   				 <option value="${departs.id}" >${departs.deptname}</option>
		  					 	</c:forEach>
						</select>  
					-->
						
						<sui:select style='overflow:hidden;width:130px;float:left' id="parentDepartStr"  defaultoption="{id:'0',value:'---请选择---'}"  
							name="parentDepartStr"  dataUrl="${ctxPath}/dept/getDeptParentSelectBody.action"
							jsonreader="{'id':'id','value':'deptname'}">   
						</sui:select> 
					</sui:input>
					
					<sui:input title="是否开启：" size="x30">
						<select name="isenabled" id="isenabled"> 
							<option value="0">开启</option>
							<option value="1">关闭</option>
						</select>
					</sui:input>
				</sui:field>
				
				<sui:field type="input"> 
					<sui:input title="部门地址：" size="x30">
						<input type="text" name="location" id="location" 
							maxlength="50" required="true" /> 
					</sui:input><!--
					
						<sui:input title="数据来源：" size="x25">
						<select name="sources" id="sources"> 
							<option value="">--请选择--</option>
							<option value="1" >同步</option>
							<option value="2" >异步</option>
						</select>
					</sui:input>
					
				-->
				</sui:field> 
			
  				<sui:field type="input">  
					<sui:input title="备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注："  size="x300" > 
						<textarea name="note" rows="3" cols="60" maxlength="50"></textarea>
					</sui:input>
				</sui:field>
  				
				
				<sui:field type="button" style="margin-left:10px">
			
					<sui:button title="保存"
						onclick='deptFormCRUD.deptFormValidateSubmit()'></sui:button>
		
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
