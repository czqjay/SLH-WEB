<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>手续费申请表修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/feesapply/js/feesapplyForm.js'></script>

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
		<sui:panel title="手续费申请表修改" id='feesapplyUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="feesapplyFormUpdate" onclick="feesapplyFormSubmit"
				callback="feesapplyFormCRUD.saveOrUpdate"></sui:validate>
			<form id="feesapplyFormUpdate" method="post" 
				action='${ctxPath}/feesapply/feesapplyUpdate.action'>
								     
					  
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="帐户名称：" size="x30" require='true' topStyle="width:263px" >
																							<input  type="text"  name='faName' id="faName"   maxlength='2222'  value='${feesapply.faName}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="开户银行：" size="x30" require='true' topStyle="width:265px" >
																							<input  type="text"  name='faBank' id="faBank"   maxlength='2222'  value='${feesapply.faBank}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="账号：" size="x30" require='true' topStyle="width:278px" >
																							<input  type="text"  name='faAccountname' id="faAccountname"   maxlength='2222'  value='${feesapply.faAccountname}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="联系人：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='faContact' id="faContact"   maxlength='222'  value='${feesapply.faContact}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="联系电话：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='faPhone' id="faPhone"   maxlength='222'  value='${feesapply.faPhone}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${feesapply.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='feesapplyFormCRUD.feesapplyFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
