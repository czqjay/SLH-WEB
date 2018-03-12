<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>请假</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/leave/js/leaveList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#leaveSearchBtn').click(function(){
			
			$('#leaveListGrid').jqGrid("setGridParam",{url:'${ctxPath}/leave/loadLeaveListDataGrid.action'});
			var json={};
																	 
																
			json.sleaveName=$('#sleaveName').val(); 
									 
						    																								 
																															 
																
			json.sstartTime=$('#sstartTime').val(); 
									 
						    																								 
																
			json.sendTime=$('#sendTime').val(); 
									 
						    																								 
																															 
																															 
																															 
																							
			leaveListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearLeaveFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
																									<td>请假名称： 
<input   type="text"   name='sleaveName' id="sleaveName"   maxlength='50'  />
									</td>
															    						    												
						
											
																				 
													    												
						
											
																				 
																									<td>请假开始时间： 
<input   type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"   name='sstartTime' id="sstartTime"   maxlength='30'  />
									</td>
															    						    												
						
											
																				 
																									<td>请假结束时间： 
<input   type="text" calendar='1'  format='yyyy-MM-dd HH:mm:ss' class='datePicker' readonly='true'"   name='sendTime' id="sendTime"   maxlength='30'  />
									</td>
															    						    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearLeave'
										onclick="clearLeaveFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="leaveSearchBtn">
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
			<div id="leaveGridDiv" style='height: 100%'>
				<sui:grid id="leaveListGrid" pageId="leaveListGrid_page"
					title="" offsetHeight="290" addClick="leaveListCRUD.addLeave"
					addOperator="leave_add"   
					editClick="leaveListCRUD.editLeave"
					editOperator="leave_edit"
					delClick="leaveListCRUD.deleteLeave" 
					delOperator="leave_del" pkName="id"
					url="${ctxPath}/leave/loadLeaveListDataGrid.action"> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='leaveName' hidden="false" title='请假名称' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='leaveType' hidden="false" title='请假类型' align='left' width='120'	 align='center'  formatter="function(val){var jsons=[{'id':'1','value':'事假'},{'id':'2','value':'病假'}]; for (v in jsons){var json= jsons[v];if(json['id']==val) return json['value']} return '';}"   ></sui:gridCell>
																								  
							<sui:gridCell name='startTime' hidden="false" title='请假开始时间' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='endTime' hidden="false" title='请假结束时间' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='remark' hidden="true" title='备注' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='isapply' hidden="false" title='' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='creator' hidden="false" title='' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='applyTime' hidden="false" title='' align='left' width='120'	 align='center'   ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
  
 
