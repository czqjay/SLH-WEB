<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<head>

		<title>工作技能学习培训意向表添加</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/traningworker/js/traningworkerForm.js'></script>

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
		<script type="text/javascript">

	

</script>
	<body>

		<sui:panel title="工作技能学习培训意向表添加" id='traningworkerAdd'
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
			<sui:validate formId="traningworkerFormAdd"
				onclick="traningworkerFormSubmit" ignore=":hidden"
				callback="traningworkerFormCRUD.saveOrUpdate"></sui:validate>
			<form id="traningworkerFormAdd" method="post"
				action='${ctxPath}/traningworker/traningworkerSave.action'>
 
<ul id='mysui' class='suicheckboxul'></ul>  
				<sui:field type="input"> 
					<sui:input title="姓名：" topStyle="width:100%">
						<sui:checkbox id='tranExpectpos'  name='tranExpectpos' values="1,22"
						utils="[{lable:'税收1',value:1,name:'tranExpectpos'},{lable:'税收税收税收税收2',value:2,name:'tranExpectpos'},{lable:'税收3',value:3,name:'tranExpectpos'}]" >
						</sui:checkbox> 
					</sui:input>

				</sui:field>


				<sui:field type="button" style="margin-left:10px">
					<input type='checkbox' slhFlag='closeFlag' ${  param.closeFlag==
						'false'?'':'checked=1 '  }  
				  title='保存后关闭窗口'></input>
					<sui:button title="保存"
						onclick='traningworkerFormCRUD.traningworkerFormValidateSubmit()'></sui:button>
					<sui:button title="取消" onclick="suntoolkit.destroyDialog(this)"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
