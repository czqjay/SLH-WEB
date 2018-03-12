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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/traningworker/js/traningworkerForm.js'></script>

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
		
			<sui:validate formId="traningworkerFormUpdate" onclick="traningworkerFormSubmit"
				callback="traningworkerFormCRUD.saveOrUpdate"></sui:validate>
			<form id="traningworkerFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="工作技能学习培训意向表表单信息" id='traningworkerUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
									     
					  
					 
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="姓名：" size="x30"  topStyle="width:300px" >
																							<input stringCH='true' type="text"  name='tranworkName' id="tranworkName"   maxlength='222'  value='${traningworker.tranworkName}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="科室：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkDept' id="tranworkDept"   maxlength='222'  value='${traningworker.tranworkDept}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="所需工作技能培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkNeeds' id="tranworkNeeds"   maxlength='2222'  value='${traningworker.tranworkNeeds}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="理由：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkReason' id="tranworkReason"   maxlength='2222'  value='${traningworker.tranworkReason}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="业务类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkBusinessType' id="tranworkBusinessType"   maxlength='2222'  value='${traningworker.tranworkBusinessType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="其他业务类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkBusinessOther' id="tranworkBusinessOther"   maxlength='2222'  value='${traningworker.tranworkBusinessOther}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="兴趣类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkInterestType' id="tranworkInterestType"   maxlength='2222'  value='${traningworker.tranworkInterestType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="其他兴趣类：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkInterestOther' id="tranworkInterestOther"   maxlength='2222'  value='${traningworker.tranworkInterestOther}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="常识类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranworkKnowledgeType' id="tranworkKnowledgeType"   maxlength='2222'  value='${traningworker.tranworkKnowledgeType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="其他常识类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranKnowledgeOther' id="tranKnowledgeOther"   maxlength='2222'  value='${traningworker.tranKnowledgeOther}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${traningworker.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='traningworkerFormCRUD.traningworkerFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#traningworkerUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
