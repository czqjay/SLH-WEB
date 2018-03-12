<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>tb_checkbox修改</title>
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
		<sui:panel title="tb_checkbox修改" id='checkboxUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="checkboxFormUpdate" onclick="checkboxFormSubmit"
				callback="checkboxFormCRUD.saveOrUpdate"></sui:validate>
			<form id="checkboxFormUpdate" method="post" 
				action='${ctxPath}/checkbox/checkboxUpdate.action'>
								     
					  
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="check1：" size="x30"  topStyle="width:392px" >
																							<sui:checkbox  name='tcCheck1' id="tcCheck1"
													values='${checkbox.tcCheck1}'  
													utils="[{'lable':'税收1','value':'1','name':'tcCheck1'},{'lable':'税收2','value':'2','name':'tcCheck1'},{'lable':'税收3','value':'3','name':'tcCheck1'}]"  
														 > 
													</sui:checkbox> 
												
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="radio1：" size="x30"  topStyle="width:300px" >
																							<sui:checkbox  name='tcRadio1' id="tcRadio1"
													values='${checkbox.tcRadio1}'  
													utils="[{'lable':'税收1','value':'1','name':'tcRadio1'},{'lable':'税收2','value':'2','name':'tcRadio1'}]"  
														 > 
													</sui:checkbox> 
												
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${checkbox.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='checkboxFormCRUD.checkboxFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog(this)"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
