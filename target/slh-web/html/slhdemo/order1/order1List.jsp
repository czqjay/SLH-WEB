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
			src='${ctxPath}/html/slhdemo/order1/js/order1List.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#order1SearchBtn').click(function(){
			
			$('#order1ListGrid').jqGrid("setGridParam",{url:'${ctxPath}/order1/loadOrder1ListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																							
			order1ListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearOrder1From() { 
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
																			
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearOrder1'
										onclick="clearOrder1From()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="order1SearchBtn">
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
			<div id="order1GridDiv" style='height: 100%'>
				<sui:grid id="order1ListGrid" pageId="order1ListGrid_page"
					title="" offsetHeight="290" addClick="order1ListCRUD.addOrder1"
					addOperator="order1_add"   
					editClick="order1ListCRUD.editOrder1"
					editOperator="order1_edit"
					delClick="order1ListCRUD.deleteOrder1" 
					delOperator="order1_del" pkName="id"
					url="${ctxPath}/order1/loadOrder1ListDataGrid.action"> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='orderno' hidden="false" title='orderNO' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='ordertype' hidden="false" title='orderType' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='ordertime' hidden="false" title='orderTime' align='left' width='120'	 align='center'   ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
  
 
