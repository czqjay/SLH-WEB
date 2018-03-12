<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>tb_file添加</title>
		<meta http-equiv="pragma" content="no-cache" /> 
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/demo/file/js/fileForm.js'></script>
 		<script src="${ctxPath}/html/js/common/js/comboFile.js" 	type="text/javascript"></script> 
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

		<sui:panel title="tb_file添加" id='fileAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false"> 
			<sui:validate formId="fileFormAdd" onclick="fileFormSubmit"
				callback="fileFormCRUD.saveOrUpdate"></sui:validate>
			<form id="fileFormAdd" method="post"
				action='${ctxPath}/file/fileSave.action'>  
									   
					  
																		   
																								<sui:field type="input"   > 
																		<sui:input title="fl_file1：" size="x30"  topStyle="width:368px" >
																							<sui:comboFile name='flFile1' id="flFile1" size="1024"  subDir="mypic2">	</sui:comboFile>
																					</sui:input>  
										 
						    																		</sui:field> 
							    	 
							    							    							    															 					<sui:field type="button" style="margin-left:10px">
				<input type='checkbox' slhFlag='closeFlag'  
				  
				  				  				 
				  ${  param.closeFlag=='false'?'':'checked=1'  }  
				  title='保存后关闭窗口'></input>  
					<sui:button title="保存"
						onclick='fileFormCRUD.fileFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog(this)"></sui:button> 
				</sui:field>

			</form>
		</sui:panel>

	</body>
</html>
