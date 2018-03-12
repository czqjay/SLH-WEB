<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>菜单表修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/navimenu/js/navimenuForm.js'></script>

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
		<sui:panel title="菜单表修改" id='navimenuUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="navimenuFormUpdate" onclick="navimenuFormSubmit"
				callback="navimenuFormCRUD.saveOrUpdate"></sui:validate>
			<form id="navimenuFormUpdate" method="post" 
				action='${ctxPath}/navimenu/navimenuUpdate.action'>
								     
					  
					 
																		   
																															   
																															   
																															   
																								<sui:field type="input"   >
																		<sui:input title="菜单名称：" size="x30"   >
																							<input    letterNumberChinese ='1' type="text"  name='title' id="title"   maxlength='100'  value='${navimenu.title}'/>
																					</sui:input>  
										
						    							    	
														    																								   
																									<sui:input title="对应资源：" size="x30"   >
																							<sui:select   id="sysresourceId" name='sysresourceId'
												 defaultoption="[{'id':'','value':'请选择'}]"  dataUrl="${ctxPath}/sysresource/getParentSysourSelId.action?optionId=id&optionName=name"  jsonreader="{'id':'id','value':'name'}"  value='${navimenu.sysresourceId }'> 
												</sui:select>  
																					</sui:input>  
										
						    							    	
														    																								   
																									<sui:input title="remark：" size="x30"   >
																							<textarea  rows="5"  name='remark' id="remark"   maxlength='200'>${navimenu.remark}</textarea>
																					</sui:input>  
										
						    							    	
																	</sui:field>  
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${navimenu.id}" />
								<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='navimenuFormCRUD.navimenuFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog(this)"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
