<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>tb_checkbox</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/demo/checkbox/js/checkboxList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#checkboxSearchBtn').click(function(){
			
			$('#checkboxListGrid').jqGrid("setGridParam",{url:'${ctxPath}/checkbox/loadCheckboxListDataGrid.action'});
			var json={};
																	 
																															 
																							
			checkboxListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearCheckboxFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
													    								</tr>    
																			
						
											
																					<tr>  
														 
													    								</tr>    
																			
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearCheckbox'
										onclick="clearCheckboxFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="checkboxSearchBtn">
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
			<div id="checkboxGridDiv" style='height: 100%'>
				<sui:grid id="checkboxListGrid" pageId="checkboxListGrid_page"
					title="" offsetHeight="290" addClick="checkboxListCRUD.addCheckbox"
					addOperator="checkbox_add"   
					editClick="checkboxListCRUD.editCheckbox"
					editOperator="checkbox_edit"
					delClick="checkboxListCRUD.deleteCheckbox" 
					delOperator="checkbox_del" pkName="id"
					url="${ctxPath}/checkbox/loadCheckboxListDataGrid.action"
					beforeProcessing="checkboxListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='tcCheck1' hidden="false" title='check1' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tcRadio1' hidden="false" title='radio1' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
