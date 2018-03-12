<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>tb_input_test修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/inputTest/js/inputTestForm.js'></script>

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
		<sui:panel title="tb_input_test修改" id='inputTestUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="inputTestFormUpdate" onclick="inputTestFormSubmit"
				callback="inputTestFormCRUD.saveOrUpdate"></sui:validate>
			<form id="inputTestFormUpdate" method="post" 
				action='${ctxPath}/inputTest/inputTestUpdate.action'>
								     
					  
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="A：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='testA' id="testA"   maxlength='20'  value='${inputTest.testA}'/>
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="B：" size="x30"  topStyle="width:300px" >
																							<input  number='1'  type="text"  name='testB' id="testB"   maxlength='222'  value='${inputTest.testB}'/>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${inputTest.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='inputTestFormCRUD.inputTestFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog(this)"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
