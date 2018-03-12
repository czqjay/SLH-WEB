<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>

		<title>菜单资源管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/sysresource/js/meunResourceAddForm.js'></script>
		<script type='text/javascript' src='${ctxPath}/html/sysresource/js/meunResourceAdd.js'></script>
		
	</head>
	<script>
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


		<sui:panel title="菜单资源添加" id='addsysResource' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="meunResourceFormAdd" onclick="meunResourceAddFormSubmit"
				callback="meunResourceAddFormCRUD.saveOrUpdate"></sui:validate>
			<form id="meunResourceFormAdd" method="post"
				action='${ctxPath}/sysresource/saveSysResource.action'>
				<sui:field type="input">
					<sui:input title="资源名称："  size="x60" require="true"> 
						<input type="text" name='moduleCaption'maxlength="100" />  
					</sui:input>
				</sui:field>
				
				<sui:field type="input">
					<sui:input title="上层资源："  size="x30"  >
						<sui:select id="parent" name="parent" value="${parentId}" defaultoption="{id:'0',value:'--顶层--'}" dataUrl="${ctxPath}/sysresource/getParentSysourSelId.action" jsonreader="{'id':'id','value':'name'}"> 
					    </sui:select>
					</sui:input>
				</sui:field>
				
				<sui:field type="input">
					<sui:input title="资源说明："  size="x30" > 
						<input type="text" name='caption' maxlength="100"  />  
					</sui:input>
					<sui:input title="资源入口："  size="x30" require="true" > 
						<input type="text" name='content' required="true" maxlength="200" />  
					</sui:input>
				</sui:field>
				
				<sui:field type="input">
					<sui:input title="资源编码："  size="x30" require="true" > 
						<input type="text" name='code' required="true" remoteMessage='资源编码已经存在' remote='${ctxPath}/sysresource/isExists.action' maxlength="200"/>  
					</sui:input>
				</sui:field>
				
			 <sui:field type="input"> 
					<sui:input title="资源类型：" size="x25">
						<select name="sourceType" id="sourceType"> 
							<option value="1">--请选择--</option>
							<option value="0">页面</option>
							<option value="1">按钮</option>
							<option value="2">树菜单跟</option>
							<option value="3">树菜单节点</option>
						<!--  
							<option value="4">action</option>
						-->
						</select>
					</sui:input>
			</sui:field>
		
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='meunResourceAddFormCRUD.meunResourceAddFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
