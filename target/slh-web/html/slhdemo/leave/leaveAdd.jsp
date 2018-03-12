<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<head>

		<title>请假添加</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/leave/js/leaveForm.js'></script>

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

		<sui:panel title="请假添加" id='leaveAdd'
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
			<sui:validate formId="leaveFormAdd" onclick="leaveFormSubmit"
				callback="leaveFormCRUD.saveOrUpdate"></sui:validate>
			<form id="leaveFormAdd" method="post"
				action='${ctxPath}/leave/leaveSave.action'>



				<sui:field type="input">
					<sui:input title="请假名称：" size="x30" require='true'>
						<input type="text" name='leaveName' id="leaveName" maxlength='50' ema1il='1'  number='1' equalTo='#leaveType' />
					</sui:input> 
 

					<sui:input title="请假类型：" size="x30" require='true'>  
						<sui:select style="width:100px" id="leaveType" name='leaveType'  
							defaultoption="[{'id':'1','value':'事假'},{'id':'2','value':'病假'}]"
							jsonreader="">
						</sui:select>
					</sui:input>
				</sui:field>


				<sui:field type="input">
					<sui:input title="请假开始时间：" size="x30" require='true'>
						<input type="text" calendar='1' format='yyyy-MM-dd HH:mm:ss'
							class='datePicker' readonly='true' "  name='startTime'
							id="startTime" maxlength='30' />
					</sui:input>


					<sui:input title="请假结束时间：" size="x30" require='true'>
						<input type="text" calendar='1' format='yyyy-MM-dd HH:mm:ss'
							class='datePicker' readonly='true' "  name='endTime' id="endTime"
							maxlength='30' />
					</sui:input>
				</sui:field>


				<sui:field type="input">
					<sui:input title="备注：" size="x30"> 
						<input type="text" name='remark' id="remark"  />
					</sui:input> 
				</sui:field>
   
				<sui:field type="button" style="margin-left:10px"> 
				<input type='checkbox' slhFlag='closeFlag'  ${param.closeFlag=='false'?'':'checked=1'}  title='保存后关闭窗口'></input> 
					<sui:button title="保存"
						onclick='leaveFormCRUD.leaveFormValidateSubmit()'></sui:button>
					
					<sui:button title="取消" onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
