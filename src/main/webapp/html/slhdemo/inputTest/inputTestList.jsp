<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>tb_input_test</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/inputTest/js/inputTestList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#inputTestSearchBtn').click(function(){
			
			$('#inputTestListGrid').jqGrid("setGridParam",{url:'${ctxPath}/inputTest/loadInputTestListDataGrid.action'});
			var json={};
																	 
																
			json.stestA=$('#stestA').val(); 
									 
						    																								 
																
			json.stestB=$('#stestB').val(); 
									 
						    																
			inputTestListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearInputTestFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
																<td>
									<sui:input title="A：" size="x30"  topStyle="width:300px" >
									<input   type="text"   name='stestA' id="stestA"   maxlength='20'  />
																		</sui:input> 
									</td>
									
														    						    												
						
											
																				 
																<td>
									<sui:input title="B：" size="x30"  topStyle="width:300px" >
									<input  number='1'   type="text"   name='stestB' id="stestB"   maxlength='222'  />
																		</sui:input> 
									</td>
									
														    						    												
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearInputTest'
										onclick="clearInputTestFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="inputTestSearchBtn">
										检索
									</button>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div> 
		</div> 
		<div class="pageContent">
			<div id="inputTestGridDiv" style='height: 100%'>
				<sui:grid id="inputTestListGrid" pageId="inputTestListGrid_page"
					title="" offsetHeight="290" addClick="inputTestListCRUD.addInputTest"
					addOperator="inputTest_add"   
					editClick="inputTestListCRUD.editInputTest"
					editOperator="inputTest_edit"
					delClick="inputTestListCRUD.deleteInputTest" 
					delOperator="inputTest_del" pkName="id"
					url="${ctxPath}/inputTest/loadInputTestListDataGrid.action"
					beforeProcessing="inputTestListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='testA' hidden="false" title='A' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='testB' hidden="false" title='B' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
