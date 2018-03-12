<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>装置表修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/gzprima/deploy/js/deployForm.js'></script>

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
		<sui:panel title="装置表修改" id='deployUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="deployFormUpdate" onclick="deployFormSubmit"
				callback="deployFormCRUD.saveOrUpdate"></sui:validate>
			<form id="deployFormUpdate" method="post" 
				action='${ctxPath}/deploy/deployUpdate.action'>
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="装置型号：" size="x30" require='true'  >
																		<input  type="text"  name='model' id="model"   maxlength='1000'  value='${deploy.model}' />
																	</sui:input> 
						 
								<sui:input title="装置名称：" size="x30" require='true'  >
																		<input  type="text"  name='deployName' id="deployName"   maxlength='1000'  value='${deploy.deployName}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="出厂编号：" size="x30" require='true'  >
																		<input  type="text"  name='code' id="code"   maxlength='1000'  value='${deploy.code}' />
																	</sui:input> 
						    
								<sui:input title="制造厂商：" size="x30" require='true'  >
																		<input  type="text"  name='maker' id="maker"   maxlength='1000'  value='${deploy.maker}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="有效日期：" size="x30" require='true'  >
																		<input  type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"  name='validDate' id="validDate"   maxlength='30'  value='${deploy.validDate}' />
																	</sui:input> 
						    
								<sui:input title="证书编号：" size="x30" require='true'  >
																		<input  type="text"  name='cerCode' id="cerCode"   maxlength='1000'  value='${deploy.cerCode}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="备注：" size="x30"   >
																		<input  type="text"  name='remark' id="remark"   maxlength='2000'  value='${deploy.remark}' />
																	</sui:input> 
						    </sui:field>   
						    																																					
				<input type="hidden" id="id" name="id" value="${deploy.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='deployFormCRUD.deployFormValidateSubmit()'></sui:button> 
					<sui:button title="取消" 
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
