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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/order1/js/order1Form.js'></script>

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
		
			<sui:validate formId="order1FormUpdate" onclick="order1FormSubmit"
				callback="order1FormCRUD.saveOrUpdate"></sui:validate>
			<form id="order1FormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="采购表单信息" id='order1Update' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="orderNO：" size="x30" require='true'  >
																		<input  type="text"  name='orderno' id="orderno"  remoteMessage='采购已存在' remote='${ctxPath}/order1/isExists.action?id=${order1.id}'  maxlength='200'  value='${order1.orderno}' />
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="orderType：" size="x30"   >
																		<sui:select style="width:100px"  id="ordertype" name='ordertype'
									 defaultoption="{'id':'','value':'请选择'}"  dataUrl="${ctxPath}/order1/getSelectBody.action?optionId=id&optionName=equName"  jsonreader="{'id':'id','value':'equName'}"   value='${order1.ordertype }' > 
									</sui:select> 
																	</sui:input> 
						    </sui:field>   
						    																								 
														
							<sui:field type="input"   >  
								<sui:input title="orderTime：" size="x30"   >
																		<input  type="text"  name='ordertime' id="ordertime"   maxlength='100'  value='${order1.ordertime}' />
																	</sui:input> 
						    </sui:field>   
						    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${order1.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='order1FormCRUD.order1FormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#order1Update *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
