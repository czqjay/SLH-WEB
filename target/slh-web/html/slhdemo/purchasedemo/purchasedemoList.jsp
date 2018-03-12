<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>采购</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/purchasedemo/js/purchasedemoList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#purchasedemoSearchBtn').click(function(){
			
			$('#purchasedemoListGrid').jqGrid("setGridParam",{url:'${ctxPath}/purchasedemo/loadPurchasedemoListDataGrid.action'});
			var json={};
																	 
																
			json.spurchaseName=$('#spurchaseName').val(); 
									 
						    																								 
																															 
																
			json.spurchaseSum=$('#spurchaseSum').val(); 
									 
						    																								 
																
			json.sstartTime=$('#sstartTime').val(); 
									 
						    																								 
																
			json.sendTime=$('#sendTime').val(); 
									 
						    																								 
																															 
																							
			purchasedemoListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearPurchasedemoFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
																									<td>采购名称： 
<input   type="text"   name='spurchaseName' id="spurchaseName"   maxlength='50'  />
									</td>
															    						    												
						
											
																				 
													    												
						
											
																				 
																									<td>采购总额： 
<input   type="text"   name='spurchaseSum' id="spurchaseSum"   maxlength='100'  />
									</td>
															    						    												
						
											
																				 
																									<td>采购开始时间： 
<input   type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"   name='sstartTime' id="sstartTime"   maxlength='30'  />
									</td>
															    						    												
						
											
																				 
																									<td>采购结束时间： 
<input   type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"   name='sendTime' id="sendTime"   maxlength='30'  />
									</td>
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
									<button type="button" id='clearPurchasedemo'
										onclick="clearPurchasedemoFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="purchasedemoSearchBtn">
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
			<div id="purchasedemoGridDiv" style='height: 100%'>
				<sui:grid id="purchasedemoListGrid" pageId="purchasedemoListGrid_page"
					title="" offsetHeight="290" addClick="purchasedemoListCRUD.addPurchasedemo"
					addOperator="purchasedemo_add"   
					editClick="purchasedemoListCRUD.editPurchasedemo"
					editOperator="purchasedemo_edit"
					delClick="purchasedemoListCRUD.deletePurchasedemo" 
					delOperator="purchasedemo_del" pkName="id"
					url="${ctxPath}/purchasedemo/loadPurchasedemoListDataGrid.action"> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='purchaseName' hidden="false" title='采购名称' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='purchaseType' hidden="false" title='采购类型' align='left' width='120'	 align='center'  formatter="function(val){var jsons=[{'id':'1','value':'设备'},{'id':'2','value':'耗材'}]; for (v in jsons){var json= jsons[v];if(json['id']==val) return json['value']} return '';}"   ></sui:gridCell>
																								  
							<sui:gridCell name='purchaseSum' hidden="false" title='采购总额' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='startTime' hidden="false" title='采购开始时间' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='endTime' hidden="false" title='采购结束时间' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='remark' hidden="true" title='备注' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='creator' hidden="true" title='创建者' align='left' width='120'	 align='center'   ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
  
 
