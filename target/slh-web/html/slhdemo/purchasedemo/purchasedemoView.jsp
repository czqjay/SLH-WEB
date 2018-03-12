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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/purchasedemo/js/purchasedemoForm.js'></script>

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
		
			<sui:validate formId="purchasedemoFormUpdate" onclick="purchasedemoFormSubmit"
				callback="purchasedemoFormCRUD.saveOrUpdate"></sui:validate>
			<form id="purchasedemoFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="采购表单信息" id='purchasedemoUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="采购名称：" size="x30" require='true'  >
																		<input  type="text"  name='po.purchaseName' id="purchaseName"   maxlength='50'  value='${purchasedemo.purchaseName}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="采购类型：" size="x30"   >
																		<sui:select style="width:100px"  id="purchaseType" name='po.purchaseType'
									 defaultoption="[{'id':'1','value':'设备'},{'id':'2','value':'耗材'}]"  jsonreader=""   value='${purchasedemo.purchaseType }' > 
									</sui:select> 
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="采购总额：" size="x30" require='true'  >
																		<input  type="text"  name='po.purchaseSum' id="purchaseSum"   maxlength='100'  value='${purchasedemo.purchaseSum}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="采购开始时间：" size="x30" require='true'  >
																		<input  type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"  name='po.startTime' id="startTime"   maxlength='30'  value='${purchasedemo.startTime}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="采购结束时间：" size="x30" require='true'  >
																		<input  type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"  name='po.endTime' id="endTime"   maxlength='30'  value='${purchasedemo.endTime}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="备注：" size="x30"   >
																		<input  type="text"  name='po.remark' id="remark"   maxlength='1000'  value='${purchasedemo.remark}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="创建者：" size="x30"   >
																		<input  type="text"  name='po.creator' id="creator"   maxlength='32'  value='${purchasedemo.creator}' />
																	</sui:input> 
						    </sui:field>   
						    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				 
				<input type="hidden" id="poID" name="poID" value="${purchasedemo.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='purchasedemoFormCRUD.purchasedemoFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		$('#purchasedemoUpdate *').attr("disabled","disabled") ;  
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
