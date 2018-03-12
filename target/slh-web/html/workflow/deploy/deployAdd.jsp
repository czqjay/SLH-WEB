<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<head>

		<title>部署流程添加 </title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/workflow/deploy/js/deployForm.js'></script> 

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
<script type="javascript">
removeDisableAttr= function (){   
	       $('#saveAddAppraisa').removeAttr('disabled');
	    } 

</script>


		<sui:panel title="部署流程添加" id='deployAdd'
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
			<form id="deployFormAdd" method="post"  target='simulateAjax' enctype ="multipart/form-data" 
				action='${ctxPath}/deploy/deploySave.action'>

				<sui:field type="input"  >
					<sui:input title="部署文件：" size="x3" require='true'>
						<input type="file" name='deployFile' id="deployFile" /> 
					</sui:input>   
				</sui:field>
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='deployFormCRUD.deployFormValidateSubmit()'></sui:button>
					<sui:button title="取消" onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form> 
		</sui:panel>

<iframe id='simulateAjax' style="display:none" name='simulateAjax'></iframe>
	</body>
</html>
