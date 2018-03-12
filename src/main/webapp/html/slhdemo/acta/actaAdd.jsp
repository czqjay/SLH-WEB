<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>流程测试a添加</title>
		<meta http-equiv="pragma" content="no-cache" /> 
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/acta/js/actaForm.js'></script>
 
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

		<sui:panel title="流程测试a添加" id='actaAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false"> 
			<sui:validate formId="actaFormAdd" onclick="actaFormSubmit"
				callback="actaFormCRUD.saveOrUpdate"></sui:validate>
			<form id="actaFormAdd" method="post"
				action='${ctxPath}/acta/actaSave.action'>  
									   
					  
																		   
																								<sui:field type="input"   >
																		<sui:input title="name：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='actName' id="actName"   maxlength='222'  />
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																				<sui:field type="button" style="margin-left:10px">
				<input type='checkbox' slhFlag='closeFlag'  
				  
				  				  				 
				  ${  param.closeFlag=='false'?'':'checked=1'  }  
				  title='保存后关闭窗口'></input>  
					<sui:button title="保存"
						onclick='actaFormCRUD.actaFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
