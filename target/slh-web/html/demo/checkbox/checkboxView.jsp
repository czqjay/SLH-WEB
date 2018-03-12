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
		<script type='text/javascript' src='${ctxPath}/html/demo/checkbox/js/checkboxForm.js'></script>

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
		
			<sui:validate formId="checkboxFormUpdate" onclick="checkboxFormSubmit"
				callback="checkboxFormCRUD.saveOrUpdate"></sui:validate>
			<form id="checkboxFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="tb_checkbox表单信息" id='checkboxUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
									     
					  
					 
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="check1：" size="x30"  topStyle="width:392px" >
																							<input  type="suicheckbox"  name='tcCheck1' id="tcCheck1"   maxlength='222'  value='${checkbox.tcCheck1}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="radio1：" size="x30"  topStyle="width:300px" >
																							<input  type="suicheckbox"  name='tcRadio1' id="tcRadio1"   maxlength='222'  value='${checkbox.tcRadio1}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${checkbox.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='checkboxFormCRUD.checkboxFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#checkboxUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
