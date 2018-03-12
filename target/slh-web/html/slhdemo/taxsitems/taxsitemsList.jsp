<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>手续费税种</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/taxsitems/js/taxsitemsList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#taxsitemsSearchBtn').click(function(){
			
			$('#taxsitemsListGrid').jqGrid("setGridParam",{url:'${ctxPath}/taxsitems/loadTaxsitemsListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																															 
																															 
																															 
																															 
																							
			taxsitemsListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearTaxsitemsFrom() { 
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
																			
						
											
																					<tr>  
														 
													    								</tr>    
																			
						
											
																					<tr>  
														 
													    								</tr>    
																			
						
											
																					<tr>  
														 
													    								</tr>    
																			
						
											
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
									<button type="button" id='clearTaxsitems'
										onclick="clearTaxsitemsFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="taxsitemsSearchBtn">
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
																		  
							<sui:gridCell name='tiType' hidden="false" title='税种' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tiItems' hidden="false" title='品目' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tiCode' hidden="false" title='凭证号' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tiTiems' hidden="false" title='税款所属期' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tiSum' hidden="false" title='税款入库金额' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tiRate' hidden="false" title='比例' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tiFeessum' hidden="false" title='手续费金额' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
