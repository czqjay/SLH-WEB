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
		<script type='text/javascript' src='${ctxPath}/html/sysresource/js/sys.js'></script>
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


		<sui:panel title="资源记录修改" id='sysupdateID' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="sysupdate" onclick="sysFormSubmit"
				callback="sysCRUD.saveOrUpdate"></sui:validate>
			<form id="sysupdate" method="post"
				action='${ctxPath}/sysresource/saveSysResource.action'>
				<sui:field type="input">
					<sui:input title="资源名称："  size="x80" require="true"> 
						<input type="text" name='moduleCaption' value="${sysResource.moduleCaption}" maxlength="100" />  
					</sui:input>
				</sui:field>
						
				<sui:field type="input">  
					<sui:input title="上层资源："  size="x30"  ><!--  
						 <select name="parent" id="parents">   
						 		<option value="0" >--顶层--</option>
											<c:forEach items="${sysResource_list}" var="sysResources" > 
											   <option value="${sysResources.id}" <c:if test="${sysResource.parent eq sysResources.id}">selected</c:if>>${sysResources.moduleCaption}</option>
											</c:forEach>		  			 
							</select>
					-->
					<sui:select id="parents" name="parent" value="${sysResource.parent}" defaultoption="{id:'0',value:'--顶层--'}" dataUrl="${ctxPath}/sysresource/getParentSysourSelId.action" jsonreader="{'id':'id','value':'name'}"> 
					    </sui:select>
					</sui:input>
				</sui:field>
				
				<sui:field type="input">
					<sui:input title="资源说明："  size="x30"  > 
						<input type="text" name='caption'  value="${sysResource.caption}" maxlength="100" />  
					</sui:input>
			
					<sui:input title="资源入口："  size="x30" require="true" > 
						<input type="text" name='content' value="${sysResource.content}" required="true" maxlength="200" />  
					</sui:input>
				</sui:field>
				
				<sui:field type="input">
					<sui:input title="资源编码："  size="x30" require="true" > 
						<input type="text" name='code' value="${sysResource.code}" required="true" remoteMessage='资源编码已经存在' remote='${ctxPath}/sysresource/isExists.action?id=${sysResource.id}' maxlength="200" />  
					</sui:input>
				</sui:field>
				
				<sui:field type="input"> 
					 <sui:input title="用户类型：" size="x25">
						<select name="sourceType" id="sourceType"> 
							<option value="0" <c:if test="${sysResource.sourceType=='0'}">selected</c:if>>页面</option>
							<option value="1" <c:if test="${sysResource.sourceType=='1'}">selected</c:if>>按钮</option>
							<option value="2" <c:if test="${sysResource.sourceType=='2'}">selected</c:if>>树菜单根</option>
							<option value="3" <c:if test="${sysResource.sourceType=='3'}">selected</c:if>>树菜单节点</option>		
							<option value="4" <c:if test="${sysResource.sourceType=='4'}">selected</c:if>>action</option>								
						</select>
					</sui:input>
					</sui:field>
					
				<input type="hidden" id="id" name="id" value='${sysResource.id}' />
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='sysCRUD.sysSubmit()'></sui:button>
					<sui:button title="取消" 
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
