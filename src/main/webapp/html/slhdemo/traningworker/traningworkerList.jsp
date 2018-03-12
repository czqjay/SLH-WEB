<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>工作技能学习培训意向表</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/traningworker/js/traningworkerList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#traningworkerSearchBtn').click(function(){
			
			$('#traningworkerListGrid').jqGrid("setGridParam",{url:'${ctxPath}/traningworker/loadTraningworkerListDataGrid.action'});
			var json={};
																	 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																							
			traningworkerListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearTraningworkerFrom() { 
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
																			
						
											
																					<tr>  
														 
													    								</tr>    
																			
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearTraningworker'
										onclick="clearTraningworkerFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="traningworkerSearchBtn">
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
			<div id="traningworkerGridDiv" style='height: 100%'>
				<sui:grid id="traningworkerListGrid" pageId="traningworkerListGrid_page"
					title="" offsetHeight="290" addClick="traningworkerListCRUD.addTraningworker"
					addOperator="traningworker_add"   
					editClick="traningworkerListCRUD.editTraningworker"
					editOperator="traningworker_edit"
					delClick="traningworkerListCRUD.deleteTraningworker" 
					delOperator="traningworker_del" pkName="id"
					url="${ctxPath}/traningworker/loadTraningworkerListDataGrid.action"
					beforeProcessing="traningworkerListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='tranworkName' hidden="false" title='姓名' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkDept' hidden="false" title='科室' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkNeeds' hidden="false" title='所需工作技能培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkReason' hidden="false" title='理由' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkBusinessType' hidden="false" title='业务类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkBusinessOther' hidden="false" title='其他业务类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkInterestType' hidden="false" title='兴趣类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkInterestOther' hidden="false" title='其他兴趣类' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranworkKnowledgeType' hidden="false" title='常识类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranKnowledgeOther' hidden="false" title='其他常识类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
