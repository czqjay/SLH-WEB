<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>tb_test</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/test/js/testList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#testSearchBtn').click(function(){
			
			$('#testListGrid').jqGrid("setGridParam",{url:'${ctxPath}/test/loadTestListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																							
			testListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearTestFrom() { 
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
									<button type="button" id='clearTest'
										onclick="clearTestFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="testSearchBtn">
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
			<div id="testGridDiv" style='height: 100%'>
				<sui:grid id="testListGrid" pageId="testListGrid_page"
					title="" offsetHeight="290" addClick="testListCRUD.addTest"
					addOperator="test_add"   
					editClick="testListCRUD.editTest"
					editOperator="test_edit"
					delClick="testListCRUD.deleteTest" 
					delOperator="test_del" pkName="id"
					url="${ctxPath}/test/loadTestListDataGrid.action"
					beforeProcessing="testListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='ttIn' hidden="false" title='tt_in' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ttCh' hidden="false" title='tt_ch' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='ttRa' hidden="false" title='tt_ra' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
