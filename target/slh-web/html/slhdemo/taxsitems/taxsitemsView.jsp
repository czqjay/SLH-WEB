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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/taxsitems/js/taxsitemsForm.js'></script>

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
		
			<sui:validate formId="taxsitemsFormUpdate" onclick="taxsitemsFormSubmit"
				callback="taxsitemsFormCRUD.saveOrUpdate"></sui:validate>
			<form id="taxsitemsFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="手续费税种表单信息" id='taxsitemsUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="税种：" size="x30"   >
																		<input  type="text"  name='tiType' id="tiType"   maxlength='2222'  value='${taxsitems.tiType}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="品目：" size="x30"   >
																		<input  type="text"  name='tiItems' id="tiItems"   maxlength='2222'  value='${taxsitems.tiItems}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="凭证号：" size="x30"   >
																		<input  type="text"  name='tiCode' id="tiCode"   maxlength='0'  value='${taxsitems.tiCode}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="税款所属期：" size="x30"   >
																		<input  type="text"  name='tiTiems' id="tiTiems"   maxlength='2222'  value='${taxsitems.tiTiems}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="税款入库金额：" size="x30"   >
																		<input  type="text"  name='tiSum' id="tiSum"   maxlength='222'  value='${taxsitems.tiSum}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="比例：" size="x30"   >
																		<input  type="text"  name='tiRate' id="tiRate"   maxlength='2222'  value='${taxsitems.tiRate}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="手续费金额：" size="x30"   >
																		<input  type="text"  name='tiFeessum' id="tiFeessum"   maxlength='2222'  value='${taxsitems.tiFeessum}' />
																	</sui:input> 
						    </sui:field>   
						    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${taxsitems.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='taxsitemsFormCRUD.taxsitemsFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#taxsitemsUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
