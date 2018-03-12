<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>采购添加</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/order1/js/order1Form.js'></script>

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

		<sui:panel title="采购添加" id='order1Add' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="order1FormAdd" onclick="order1FormSubmit"
				callback="order1FormCRUD.saveOrUpdate"></sui:validate>
			<form id="order1FormAdd" method="post"
				action='${ctxPath}/order1/order1Save.action'>  
									 
					  
																		  
																								<sui:field type="input"   >
																		<sui:input title="orderNO：" size="x30" require='true' topStyle="width:217px" >
																						<input  type="text"  name='orderno' id="orderno"  remoteMessage='采购已存在' remote='${ctxPath}/order1/isExists.action'  maxlength='200'  />
																					</sui:input> 
														    
						    																								  
																									<sui:input title="orderType：" size="x30"  topStyle="width:222px" >
																						<sui:select   id="ordertype" name='ordertype'
											 defaultoption="{'id':'','value':'请选择'}"  dataUrl="${ctxPath}/order1/getSelectBody.action?optionId=id&optionName=equName"  jsonreader="{'id':'id','value':'equName'}"> 
											</sui:select>  
																					</sui:input> 
														    		</sui:field>   
						    							    
						    																								  
																								<sui:field type="input"   >
																		<sui:input title="orderTime：" size="x30"  topStyle="width:223px" >
																						<input  type="text"  name='ordertime' id="ordertime"   maxlength='100'  />
																					</sui:input> 
														    
						    																						</sui:field>   
									<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='order1FormCRUD.order1FormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
