<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>act测试</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/acttest/js/acttestList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#acttestSearchBtn').click(function(){
			
			$('#acttestListGrid').jqGrid("setGridParam",{url:'${ctxPath}/acttest/loadActtestListDataGrid.action'});
			var json={};
																	 
																							
			acttestListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearActtestFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
													    								</tr>    
																			
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearActtest'
										onclick="clearActtestFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="acttestSearchBtn">
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
			<div id="acttestGridDiv" style='height: 100%'>
				<sui:grid id="acttestListGrid" pageId="acttestListGrid_page"
					title="" offsetHeight="290" addClick="acttestListCRUD.addActtest"
					addOperator="acttest_add"   
					editClick="acttestListCRUD.editActtest"
					editOperator="acttest_edit"
					delClick="acttestListCRUD.deleteActtest" 
					delOperator="acttest_del" pkName="id"
					url="${ctxPath}/acttest/loadActtestListDataGrid.action"
					beforeProcessing="acttestListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='atId' hidden="false" title='actid' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
