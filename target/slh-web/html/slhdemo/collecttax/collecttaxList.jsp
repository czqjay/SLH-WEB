<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>代收税</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/collecttax/js/collecttaxList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#collecttaxSearchBtn').click(function(){
			
			$('#collecttaxListGrid').jqGrid("setGridParam",{url:'${ctxPath}/collecttax/loadCollecttaxListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																							
			collecttaxListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearCollecttaxFrom() { 
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
									<button type="button" id='clearCollecttax'
										onclick="clearCollecttaxFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="collecttaxSearchBtn">
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
			<div id="collecttaxGridDiv" style='height: 100%'>
				<sui:grid id="collecttaxListGrid" pageId="collecttaxListGrid_page"
					title="" offsetHeight="290" addClick="collecttaxListCRUD.addCollecttax"
					addOperator="collecttax_add"   
					editClick="collecttaxListCRUD.editCollecttax"
					editOperator="collecttax_edit"
					delClick="collecttaxListCRUD.deleteCollecttax" 
					delOperator="collecttax_del" pkName="id"
					url="${ctxPath}/collecttax/loadCollecttaxListDataGrid.action"
					beforeProcessing="collecttaxListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='ctType' hidden="false" title='税种' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctName' hidden="false" title='品目' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctCount' hidden="false" title='课税数量' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctTax' hidden="false" title='计税金额' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tbRate' hidden="false" title='税率' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctDeduct' hidden="false" title='扣除额' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctRealtax' hidden="false" title='实缴金额' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
