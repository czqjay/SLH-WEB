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
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/training/js/trainingForm.js'></script>

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
		
			<sui:validate formId="trainingFormUpdate" onclick="trainingFormSubmit"
				callback="trainingFormCRUD.saveOrUpdate"></sui:validate>
			<form id="trainingFormUpdate" method="post" 
				action='${ctxPath}/deploy/complete.action'> 
				<sui:panel title="学习意向意向表表单信息" id='trainingUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
									     
					  
					 
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="姓名：" size="x30"  topStyle="width:223px" >
																							<input stringCH='true' type="text"  name='tranName' id="tranName"   maxlength='222'  value='${training.tranName}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="所属科室：" size="x30"  topStyle="width:223px" >
																							<input  type="text"  name='tranDept' id="tranDept"   maxlength='400'  value='${training.tranDept}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="现从事的岗位：" size="x30"  topStyle="width:300px" >
																							<sui:select   id="tranPostion" name='tranPostion'
												 defaultoption="[{'id':'','value':'请选择'},{'id':'综合管理岗','value':'综合管理岗'},{'id':'税收管理岗','value':'税收管理岗'},{'id':'税收征收岗','value':'税收征收岗'},{'id':'风险管理岗','value':'风险管理岗'},{'id':'数据分析岗','value':'数据分析岗'},{'id':'纳税服务岗','value':'纳税服务岗'},{'id':'收入规划核算岗','value':'收入规划核算岗'},{'id':'规费管理岗','value':'规费管理岗'},{'id':'信息技术岗','value':'信息技术岗'}]"  jsonreader="{'id':'id','value':'value'}"  value='${training.tranPostion }'> 
												</sui:select>  
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="以后希望从事岗位(请选择1至3个)：" size="x30"  topStyle="width:212px" >
																							<input  type="checkbox"  name='tranExpectpos' id="tranExpectpos"   maxlength='200'  value='${training.tranExpectpos}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="所需培训内容：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranNeedType' id="tranNeedType"   maxlength='200'  value='${training.tranNeedType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="学历培训需求项目：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranNeedEducation' id="tranNeedEducation"   maxlength='200'  value='${training.tranNeedEducation}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="专业资格培训的需求项目：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranNeedProfession' id="tranNeedProfession"   maxlength='200'  value='${training.tranNeedProfession}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="计划：" size="x30"  topStyle="width:256px" >
																							<sui:select   id="tranPlanYear" name='tranPlanYear'
												 defaultoption="[{'id':'','value':'请选择'},{'id':'1','value':'1年'},{'id':'2','value':'2年'},{'id':'3','value':'3年'},{'id':'4','value':'4年'}]"  jsonreader="{'id':'id','value':'value'}"  value='${training.tranPlanYear }'> 
												</sui:select>  
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="业务类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranBusinessType' id="tranBusinessType"   maxlength='200'  value='${training.tranBusinessType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="其他业务类培训：" size="x30"  topStyle="width:790px" >
																							<input  type="text"  name='tranBusinessOther' id="tranBusinessOther"   maxlength='0'  value='${training.tranBusinessOther}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="兴趣类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranInterestType' id="tranInterestType"   maxlength='2000'  value='${training.tranInterestType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="其他兴趣类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranInterestOther' id="tranInterestOther"   maxlength='2000'  value='${training.tranInterestOther}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="知识类培训：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='tranKnowledgeType' id="tranKnowledgeType"   maxlength='400'  value='${training.tranKnowledgeType}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="其他知识类培训：" size="x30"  topStyle="width:780px" >
																							<input  type="text"  name='tranKnowledgeOther' id="tranKnowledgeOther"   maxlength='2000'  value='${training.tranKnowledgeOther}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															</sui:panel>
				<br>
					<br>
				<sui:panel title="流程办理" id='processHandle' style="width:100%;margin:0 auto;"
							isToggle="true" isFold="false">	
					   <%@include file="/html/workflow/activityView.jsp"%>  
				</sui:panel>  
				
				<input type="hidden" id="id" name="id" value="${training.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='trainingFormCRUD.trainingFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog('todolistDialog')"></sui:button>
				</sui:field>
			</form>
		
	</body> 
	<script type="text/javascript">
	$(function() {
		//$('#trainingUpdate *').attr("disabled","disabled") ; 
		$('#processHandle *').attr("disabled","disabled") ; 
		$('#newComment *').removeAttr("disabled","disabled") ;  
	})

</script> 
</html>
