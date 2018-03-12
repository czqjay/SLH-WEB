<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>

		<title>手续费申请表添加</title>
		<meta http-equiv="pragma" content="no-cache" /> 
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/feesapply/js/feesapplyForm.js'></script>
		<script type='text/javascript' src='${ctxPath}/html/slhdemo/taxsitems/js/taxsitemsList.js'></script>
 
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

		<sui:panel title="手续费申请表添加" id='feesapplyAdd' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false"> 
			<sui:validate formId="feesapplyFormAdd" onclick="feesapplyFormSubmit"
				callback="feesapplyFormCRUD.saveOrUpdate"></sui:validate>
			<form id="feesapplyFormAdd" method="post"
				action='${ctxPath}/feesapply/feesapplySave.action'>  
									   
					  
																		   
																								<sui:field type="input"   >
																		<sui:input title="帐户名称：" size="x30" require='true' topStyle="width:263px" >
																							<input  type="text"  name='faName' id="faName"   maxlength='2222'  />
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="开户银行：" size="x30" require='true' topStyle="width:265px" >
																							<input  type="text"  name='faBank' id="faBank"   maxlength='2222'  />
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="账号：" size="x30" require='true' topStyle="width:278px" >
																							<input  type="text"  name='faAccountname' id="faAccountname"   maxlength='2222'  />
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																								   
																								<sui:field type="input"   >
																		<sui:input title="联系人：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='faContact' id="faContact"   maxlength='222'  />
																					</sui:input>  
										
						    															    																								   
																									<sui:input title="联系电话：" size="x30"  topStyle="width:300px" >
																							<input  type="text"  name='faPhone' id="faPhone"   maxlength='222'  />
																					</sui:input>  
										
						    																		</sui:field> 
							    	 
							    							    							    																				<sui:field type="button" style="margin-left:10px">
				<input type='checkbox' slhFlag='closeFlag'  
				  
				  				  				 
				  ${  param.closeFlag=='false'?'':'checked=1'  }  
				  title='保存后关闭窗口'></input>  
					<sui:button title="保存"
						onclick='feesapplyFormCRUD.feesapplyFormValidateSubmit()'></sui:button>
					<sui:button title="取消"
						onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>
<div id="taxsitemsGridDiv" style='height: 100%'>
				<sui:grid id="taxsitemsListGrid" pageId="taxsitemsListGrid_page"
					title="" offsetHeight="290" addClick="taxsitemsListCRUD.addTaxsitems"
					addOperator="taxsitems_add"   
					editClick="taxsitemsListCRUD.editTaxsitems"
					editOperator="taxsitems_edit"
					delClick="taxsitemsListCRUD.deleteTaxsitems" 
					delOperator="taxsitems_del" pkName="id"
					url="${ctxPath}/taxsitems/loadTaxsitemsListDataGrid.action"
					beforeProcessing="taxsitemsListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='tiType' hidden="false" title='税种'  width='120'	  ></sui:gridCell>
																								  
							<sui:gridCell name='tiItems' hidden="false" title='品目'  width='120'	  ></sui:gridCell>
																								  
							<sui:gridCell name='tiCode' hidden="false" title='凭证号'  width='120'	  ></sui:gridCell>
																								  
							<sui:gridCell name='tiTiems' hidden="false" title='税款所属期'  width='120'	  ></sui:gridCell>
																								   
							<sui:gridCell name='tiSum' hidden="false" title='税款入库金额'  width='120'	  ></sui:gridCell>
																								  
							<sui:gridCell name='tiRate' hidden="false" title='比例'  width='120'	  ></sui:gridCell>
																								  
							<sui:gridCell name='tiFeessum' hidden="false" title='手续费金额'  width='120'	  ></sui:gridCell>
																</sui:grid> 
					</div>  
	</body>
</html>
