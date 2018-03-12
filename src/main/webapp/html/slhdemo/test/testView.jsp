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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/test/js/testForm.js'></script>

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
		
			<sui:validate formId="testFormUpdate" onclick="testFormSubmit"
				callback="testFormCRUD.saveOrUpdate"></sui:validate>
			<form id="testFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="tb_test表单信息" id='testUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
									     
					  
					 
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="tt_in：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='ttIn' id="ttIn"   maxlength='222'  value='${test.ttIn}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="tt_ch：" size="x30"  topStyle="width:300px" >
																							<input  type="suicheckbox"  name='ttCh' id="ttCh"   maxlength='22'  value='${test.ttCh}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="tt_ra：" size="x30"  topStyle="width:300px" >
																							<input  type="suicheckbox"  name='ttRa' id="ttRa"   maxlength='222'  value='${test.ttRa}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${test.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='testFormCRUD.testFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#testUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
