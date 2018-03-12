<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>手续费申请表</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/feesapply/js/feesapplyList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#feesapplySearchBtn').click(function(){
			
			$('#feesapplyListGrid').jqGrid("setGridParam",{url:'${ctxPath}/feesapply/loadFeesapplyListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																															 
																															 
																							
			feesapplyListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearFeesapplyFrom() { 
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
																			
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearFeesapply'
										onclick="clearFeesapplyFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="feesapplySearchBtn">
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
			<div id="feesapplyGridDiv" style='height: 100%'>
				<sui:grid id="feesapplyListGrid" pageId="feesapplyListGrid_page"
					title="" offsetHeight="290" addClick="feesapplyListCRUD.addFeesapply"
					addOperator="feesapply_add"   
					editClick="feesapplyListCRUD.editFeesapply"
					editOperator="feesapply_edit"
					delClick="feesapplyListCRUD.deleteFeesapply" 
					delOperator="feesapply_del" pkName="id"
					url="${ctxPath}/feesapply/loadFeesapplyListDataGrid.action"
					beforeProcessing="feesapplyListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='faName' hidden="false" title='帐户名称' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='faBank' hidden="false" title='开户银行' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='faAccountname' hidden="false" title='账号' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='faContact' hidden="false" title='联系人' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='faPhone' hidden="false" title='联系电话' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
