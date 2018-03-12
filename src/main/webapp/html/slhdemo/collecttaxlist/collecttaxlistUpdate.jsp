<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>缴款书修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/collecttaxlist/js/collecttaxlistForm.js'></script>

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
		<sui:panel title="缴款书修改" id='collecttaxlistUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="collecttaxlistFormUpdate" onclick="collecttaxlistFormSubmit"
				callback="collecttaxlistFormCRUD.saveOrUpdate"></sui:validate>
			<form id="collecttaxlistFormUpdate" method="post" 
				action='${ctxPath}/collecttaxlist/collecttaxlistUpdate.action'>
								     
					  
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="纳税人号：" size="x30" require='true' topStyle="width:300px" >
																							<input  type="text"  name='ctlIdentifier' id="ctlIdentifier"   maxlength='222'  value='${collecttaxlist.ctlIdentifier}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="纳税人名称：" size="x30" require='true' topStyle="width:205px" >
																							<input  type="text"  name='ctlPayername' id="ctlPayername"   maxlength='2222'  value='${collecttaxlist.ctlPayername}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="登记类型：" size="x30"  topStyle="width:234px" >
																							<sui:select   id="ctlType" name='ctlType'
												 defaultoption="[{'id':'','value':'请选择'},{'id':'1','value':'类型1'},{'id':'2','value':'类型2'}]"  jsonreader="{'id':'id','value':'value'}"  value='${collecttaxlist.ctlType }'> 
												</sui:select>  
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="义务人代码：" size="x30" require='true' topStyle="width:202px" >
																							<input number='1' type="text"  name='ctlCode' id="ctlCode"   maxlength='2222'  value='${collecttaxlist.ctlCode}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="义务人名称：" size="x30" require='true' topStyle="width:389px" >
																							<input  type="text"  name='ctlName' id="ctlName"   maxlength='2222'  value='${collecttaxlist.ctlName}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="税款所属于时期：" size="x30"  topStyle="width:215px" >
																							<input  type="text"  name='ctlRange' id="ctlRange"   maxlength='2222'  value='${collecttaxlist.ctlRange}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${collecttaxlist.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='collecttaxlistFormCRUD.collecttaxlistFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
