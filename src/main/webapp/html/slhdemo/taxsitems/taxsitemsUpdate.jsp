<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>手续费税种修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/taxsitems/js/taxsitemsForm.js'></script>

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
		<sui:panel title="手续费税种修改" id='taxsitemsUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="taxsitemsFormUpdate" onclick="taxsitemsFormSubmit"
				callback="taxsitemsFormCRUD.saveOrUpdate"></sui:validate>
			<form id="taxsitemsFormUpdate" method="post" 
				action='${ctxPath}/taxsitems/taxsitemsUpdate.action'>
								     
					  
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="税种：" size="x30"  topStyle="width:213px" >
																							<input  type="text"  name='tiType' id="tiType"   maxlength='2222'  value='${taxsitems.tiType}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="品目：" size="x30"  topStyle="width:213px" >
																							<input  type="text"  name='tiItems' id="tiItems"   maxlength='2222'  value='${taxsitems.tiItems}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="凭证号：" size="x30"  topStyle="width:247px" >
																							<input  type="text"  name='tiCode' id="tiCode"   maxlength='0'  value='${taxsitems.tiCode}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="税款所属期：" size="x30"  topStyle="width:201px" >
																							<input  type="text"  name='tiTiems' id="tiTiems"   maxlength='2222'  value='${taxsitems.tiTiems}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="税款入库金额：" size="x30"  topStyle="width:202px" >
																							<input  type="text"  name='tiSum' id="tiSum"   maxlength='222'  value='${taxsitems.tiSum}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="比例：" size="x30"  topStyle="width:185px" >
																							<input  type="text"  name='tiRate' id="tiRate"   maxlength='2222'  value='${taxsitems.tiRate}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="手续费金额：" size="x30"  topStyle="width:189px" >
																							<input  type="text"  name='tiFeessum' id="tiFeessum"   maxlength='2222'  value='${taxsitems.tiFeessum}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${taxsitems.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='taxsitemsFormCRUD.taxsitemsFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
