<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>tb_grid添加</title>
		<meta http-equiv="pragma" content="no-cache" /> 
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/demo/grid/js/gridForm.js'></script>
 
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

		<sui:panel title="tb_grid添加" id='gridAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false"> 
			<sui:validate formId="gridFormAdd" onclick="gridFormSubmit"
				callback="gridFormCRUD.saveOrUpdate"></sui:validate>
			<form id="gridFormAdd" method="post"
				action='${ctxPath}/grid/gridSave.action'>  
									   
					  
																		   
																								<sui:field type="input"   >
																		<sui:input title="gd_grid1：" size="x30"  topStyle="width:225px" >
																							<input number='1' type="text"  name='gdGrid1' id="gdGrid1"   maxlength='222'  />
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="gd_grid2：" size="x30"  topStyle="width:257px" >
																							<input  type="text"  name='gdGrid2' id="gdGrid2"   maxlength='222'  />
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																				<sui:field type="button" style="margin-left:10px">
				<input type='checkbox' slhFlag='closeFlag'  
				  
				  				  				 
				  ${  param.closeFlag=='false'?'':'checked=1'  }  
				  title='保存后关闭窗口'></input>  
					<sui:button title="保存"
						onclick='gridFormCRUD.gridFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog(this)"></sui:button> 
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
