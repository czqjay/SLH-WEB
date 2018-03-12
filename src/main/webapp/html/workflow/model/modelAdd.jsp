<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<head>

		<title>模型添加</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/workflow/model/js/modelForm.js'></script>

	</head>
	<body>
		<sui:panel title="部署流程添加" id='modelAdd'
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
			<sui:validate formId="modelFormAdd" onclick="modelFormSubmit" 
				callback="modelFormCRUD.saveOrUpdate"></sui:validate> 
			<form id="modelFormAdd" method="post" action='${ctxPath}/model/modelSave.action'>
				<sui:field type="input">
					<sui:input title="model名称：" size="x30" require='true'>
						<input type="text" name='name' id="name" maxlength='1000' />
					</sui:input>
				</sui:field>


				<sui:field type="input">
					<sui:input title="key：" size="x30" require='true'>
						<input type="text" name='key' id="key" maxlength='1000' />
					</sui:input>
				</sui:field>

				<sui:field type="input">
					<sui:input title="描述：" size="x30" require='true'>
						<input type="text" name='description' id="description"
							maxlength='1000' />
					</sui:input>
				</sui:field>
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='modelFormCRUD.modelFormValidateSubmit()'></sui:button>
					<sui:button title="取消" onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body>
</html>
