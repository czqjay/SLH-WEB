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
		
			<sui:validate formId="actaFormUpdate" onclick="actaFormSubmit"
				callback="actaFormCRUD.saveOrUpdate"></sui:validate>
			<form id="actaFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="流程测试a表单信息" id='actaUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
				     
					  
					 
					 
																		 
														
							<sui:field type="input"   >  
								<sui:input title="name：" size="x30"   >
																		<input  type="text"  name='actName' id="actName"   maxlength='222'  value='${acta.actName}' />
																	</sui:input> 
						    </sui:field>   
						    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${acta.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='actaFormCRUD.actaFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#actaUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
