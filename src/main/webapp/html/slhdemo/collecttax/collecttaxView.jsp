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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/collecttax/js/collecttaxForm.js'></script>

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
		
			<sui:validate formId="collecttaxFormUpdate" onclick="collecttaxFormSubmit"
				callback="collecttaxFormCRUD.saveOrUpdate"></sui:validate>
			<form id="collecttaxFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="代收税表单信息" id='collecttaxUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="税种：" size="x30"   >
																		<input  type="text"  name='ctType' id="ctType"   maxlength='222'  value='${collecttax.ctType}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="品目：" size="x30"   >
																		<input  type="text"  name='ctName' id="ctName"   maxlength='2222'  value='${collecttax.ctName}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="课税数量：" size="x30"   >
																		<input number='1' type="text"  name='ctCount' id="ctCount"   maxlength='2222'  value='${collecttax.ctCount}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="计税金额：" size="x30"   >
																		<input  number='1'  type="text"  name='ctTax' id="ctTax"   maxlength='2222'  value='${collecttax.ctTax}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="税率：" size="x30"   >
																		<input number='1'  type="text"  name='tbRate' id="tbRate"   maxlength='2222'  value='${collecttax.tbRate}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="扣除额：" size="x30"   >
																		<input  number='1' type="text"  name='ctDeduct' id="ctDeduct"   maxlength='2222'  value='${collecttax.ctDeduct}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="凭证号：" size="x30"   >
																		<input  type="text"  name='ctCode' id="ctCode"   maxlength='2222'  value='${collecttax.ctCode}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="填发日期：" size="x30"   >
																		<input  type="text"  name='ctWritedate' id="ctWritedate"   maxlength='222'  value='${collecttax.ctWritedate}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="实缴金额：" size="x30"   >
																		<input number='1'  type="text"  name='ctRealtax' id="ctRealtax"   maxlength='2222'  value='${collecttax.ctRealtax}' />
																	</sui:input> 
						    </sui:field>   
						    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${collecttax.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='collecttaxFormCRUD.collecttaxFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#collecttaxUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
