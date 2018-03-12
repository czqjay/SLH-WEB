<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>日志管理</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/operator/js/operatorForm.js'></script>

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

		<sui:panel title="日志添加" id='operatorAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
		
			<form id="operatorFormAdd" method="post" enctype ="multipart/form-data" 
				action='${ctxPath}/operator/deploy.action'>  
				      <sui:field type="input">  
						<sui:input title="联系地址：" size="x27" >
							<input type="text" name='userName' id="address" maxlength="200"/>
						</sui:input> 
					</sui:field>  
					
					  <sui:field type="input"> 
						<sui:input title="bpmn：" size="x27" > 
							<input type="file" name='file' id="file" />
						</sui:input>  
					</sui:field>   
					<!--SLHGENFORM-->
					 
					<input type="submit" value="submit" />
			

			</form>
		</sui:panel>

	</body>
</html>
