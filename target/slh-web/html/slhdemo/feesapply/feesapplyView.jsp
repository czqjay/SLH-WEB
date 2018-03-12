<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>流程办理</title>
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
		
			<sui:validate formId="feesapplyFormUpdate" onclick="feesapplyFormSubmit"
				callback="feesapplyFormCRUD.saveOrUpdate"></sui:validate>
			<form id="feesapplyFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="手续费申请表表单信息" id='feesapplyUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="帐户名称：" size="x30" require='true'  >
																		<input  type="text"  name='faName' id="faName"   maxlength='2222'  value='${feesapply.faName}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="开户银行：" size="x30" require='true'  >
																		<input  type="text"  name='faBank' id="faBank"   maxlength='2222'  value='${feesapply.faBank}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="账号：" size="x30" require='true'  >
																		<input  type="text"  name='faAccountname' id="faAccountname"   maxlength='2222'  value='${feesapply.faAccountname}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="联系人：" size="x30"   >
																		<input  type="text"  name='faContact' id="faContact"   maxlength='222'  value='${feesapply.faContact}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="联系电话：" size="x30"   >
																		<input  type="text"  name='faPhone' id="faPhone"   maxlength='222'  value='${feesapply.faPhone}' />
																	</sui:input> 
						    </sui:field>   
						    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${feesapply.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='feesapplyFormCRUD.feesapplyFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#feesapplyUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
