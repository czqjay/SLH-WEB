<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>tb_file修改</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/demo/file/js/fileForm.js'></script>

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
		<sui:panel title="tb_file修改" id='fileUpdate' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
			<sui:validate formId="fileFormUpdate" onclick="fileFormSubmit"
				callback="fileFormCRUD.saveOrUpdate"></sui:validate>
			<form id="fileFormUpdate" method="post" 
				action='${ctxPath}/file/fileUpdate.action'>
								     
					  
					 
																		   
																								<sui:field type="input"   >
																		<sui:input title="fl_file1：" size="x30"  topStyle="width:368px" >
																							<sui:comboFile name='flFile1' id="flFile1"   size="1024"  subDir="mypic2" value='${file.flFile1}' >	</sui:comboFile>
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    															<input type="hidden" id="id" name="id" value="${file.id}" /> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='fileFormCRUD.fileFormValidateSubmit()'></sui:button> 
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog(this)"></sui:button>
				</sui:field>
			</form>
		</sui:panel>
	</body> 
</html>
