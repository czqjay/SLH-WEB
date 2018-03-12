<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>
<script type="text/javascript">

</script>

		<title>部门修改</title>
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
<script type="text/javascript">


</script>	
		<sui:panel title="部门修改" id='deptUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="deptFormUpdate" onclick="deptFormSubmit"
				callback="deptFormCRUD.saveOrUpdate"></sui:validate>
			<form id="deptFormUpdate" method="post"
				action='${ctxPath}/dept/deptSave.action'>
				
				<sui:field type="input">
					<sui:input title="部门编号：" size="x30" require="true">
						<input type="text"  id ='deptno'  name="deptno" value="${depart.deptno}"  remoteMessage='部门编号已存在' remote='${ctxPath}/dept/isExists.action?id=${depart.id}' maxlength="200"
						digitLetter="true" required="true" />
					</sui:input>
					<sui:input title="部门名称：" size="x30" require="true">
						<input type="text" id ='deptName' name="deptname" value="${depart.deptname}" remoteMessage='部门名称已存在' remote='${ctxPath}/dept/isExists.action?id=${depart.id}'   maxlength="200"
							required="true" />
					</sui:input>
				</sui:field>
				
				<sui:field type="input">  
					<sui:input title="上级部门："  size="x30" > 
						<sui:select style="width:180px"  id="parentDepartStr" name="parentDepartStr" value="${depart.parentDepart.id}" defaultoption="{id:'0',value:'请选择'}" dataUrl="${ctxPath}/dept/getDeptParentSelectBody.action" jsonreader="{'id':'id','value':'deptname'}"> 
					    </sui:select>
					</sui:input>
					
					<sui:input title="是否开启：" size="x30">
						<select name="isenabled" id="isenabled"> 
							<option value="0" <c:if test="${depart.isenabled=='0'}">selected</c:if>>开启</option>
						<option value="1" <c:if test="${depart.isenabled=='1'}">selected</c:if>>关闭</option>
						
						</select>
					</sui:input>
				</sui:field>
				
				<sui:field type="input"> 
					<sui:input title="部门地址：" size="x30">
						<input type="text" name="location" value="${depart.location}" id="location" maxlength="50" 
							 /> 
					</sui:input><!--
					<sui:input title="数据来源：" size="x30">
						<input type="text" name="sources" value="${depart.sources}" id="sources" 
							  /> 
					</sui:input>
				--></sui:field> 

  				<sui:field type="input">  
					<sui:input title="备注："  size="x300" > 
						<textarea name="note" rows="3" cols="60" maxlength="50">${depart.note}</textarea>
					</sui:input>
				</sui:field>
  				<input type="hidden" id="id" name="id" value='${depart.id}' />
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
