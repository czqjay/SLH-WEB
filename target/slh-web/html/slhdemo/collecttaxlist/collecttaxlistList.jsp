<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>缴款书</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/collecttaxlist/js/collecttaxlistList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#collecttaxlistSearchBtn').click(function(){
			
			$('#collecttaxlistListGrid').jqGrid("setGridParam",{url:'${ctxPath}/collecttaxlist/loadCollecttaxlistListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																															 
																															 
																															 
																							
			collecttaxlistListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearCollecttaxlistFrom() { 
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
																			
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearCollecttaxlist'
										onclick="clearCollecttaxlistFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="collecttaxlistSearchBtn">
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
			<div id="collecttaxlistGridDiv" style='height: 100%'>
				<sui:grid id="collecttaxlistListGrid" pageId="collecttaxlistListGrid_page"
					title="" offsetHeight="290" addClick="collecttaxlistListCRUD.addCollecttaxlist"
					addOperator="collecttaxlist_add"   
					editClick="collecttaxlistListCRUD.editCollecttaxlist"
					editOperator="collecttaxlist_edit"
					delClick="collecttaxlistListCRUD.deleteCollecttaxlist" 
					delOperator="collecttaxlist_del" pkName="id"
					url="${ctxPath}/collecttaxlist/loadCollecttaxlistListDataGrid.action"
					beforeProcessing="collecttaxlistListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='ctlIdentifier' hidden="false" title='纳税人号' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctlPayername' hidden="false" title='纳税人名称' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctlType' hidden="false" title='登记类型' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctlCode' hidden="false" title='义务人代码' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctlName' hidden="false" title='义务人名称' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ctlRange' hidden="false" title='税款所属于时期' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
