<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<body>
						<div id="newComment">
							<sui:field type="input"   >  
								<sui:input title="审批：" size="x3" require='true'  >
									<label style="width: 100px;" ><input style="width: 30px;vertical-align: middle;" name="${passVar}" type="radio" value="true" checked="true" />同意 </label> 
								  <label   style="width: 100px;" ><input style="width: 30px;vertical-align: middle;" name="${passVar}"  type="radio" value="false" />不同意 </label>  
								</sui:input>    
								 
								<input type="hidden" id="passVarName" name="passVarName" value="${passVar}" /> 
								<input type="hidden" id="taskId" name="taskId" value="${taskId}" />     
								
						    </sui:field>   
						     
						    
						    <sui:field type="input"   >    
								<sui:input title="审批意见：" size="x3"  >
									<textarea    cols="50" rows="5"   type="textarea"  name='auditRemark' id="auditRemark"  ></textarea>
								</sui:input>   
						    </sui:field>     
						  
						  </div>  
						     
						 <c:forEach var="historyAuditInfo" items="${AllhistoryAuditInfo}"> 
						  	<sui:panel title="历史流程 [${historyAuditInfo.taskName}] " id='${historyAuditInfo.taskKey}' style="width:100%;margin:0 auto;"> 
						  	${historyAuditInfo.auditPass}
								 <sui:field type="input"   >        
									<sui:input title="审批：" size="x3" require='true'  > 
										<label style="width: 100px;" ><input style="width: 30px;vertical-align: middle;"      name ="his${historyAuditInfo.taskKey}" type="radio"   ${historyAuditInfo.auditPass=='true'?'checked=checked':''} />同意 </label> 
									    <label   style="width: 100px;" ><input style="width: 30px;vertical-align: middle;"       name ="his${historyAuditInfo.taskKey}"  type="radio" ${historyAuditInfo.auditPass=='false'?'checked=checked':''} />不同意 </label>  
								</sui:input>    
						    </sui:field>   
						    <sui:field type="input"   >     
								<sui:input title="审批意见：" size="x3"  >
									<textarea    cols="50" rows="5"   type="textarea"  name='auditRemark' id="auditRemark" > ${historyAuditInfo.auditRemark}</textarea>
								</sui:input>   
						    </sui:field>     
								    	
								    	 
							</sui:panel>
						 </c:forEach>
						     
					
	</body> 
</html>
