<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>

	<head>

		<title>职务添加</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/job/js/jobForm.js'></script>
	</head>
	<script>
	   
	</script>
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

<script type="text/javascript">

</script>

		<sui:panel title="职务添加" id='jobAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="jobFormAdd" onclick="jobFormSubmit"
				callback="jobFormCRUD.saveOrUpdate"></sui:validate>
			<form id="jobFormAdd" method="post"
				action='${ctxPath}/job/jobSave.action'>
				<sui:field type="input">
					<sui:input title="职务名称："  size="x30" require="true"> 
						<input type="text" name='name' required="true" maxlength="50"/>  
					</sui:input>
					
				</sui:field>
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='jobFormCRUD.jobFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
