<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>学习意向意向表</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/training/js/trainingList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#trainingSearchBtn').click(function(){
			
			$('#trainingListGrid').jqGrid("setGridParam",{url:'${ctxPath}/training/loadTrainingListDataGrid.action'});
			var json={};
																	 
																
			json.stranName=$('#stranName').val(); 
									 
						    																								 
																															 
																
			json.stranPostion=$('#stranPostion').val(); 
									 
						    																								 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																															 
																							
			trainingListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearTrainingFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
																<td>
									<sui:input title="姓名：" size="x30"  topStyle="width:223px" >
									<input stringCH='true'  type="text"   name='stranName' id="stranName"   maxlength='222'  />
																		</sui:input> 
									</td>
									
														    						    												
						
											
																				 
													    												
						
											
																				 
																<td>
									<sui:input title="现从事的岗位：" size="x30"  topStyle="width:300px" >
																		<sui:select style="width:100px"  id="stranPostion" name='stranPostion'
									 defaultoption="[{'id':'','value':'请选择'},{'id':'综合管理岗','value':'综合管理岗'},{'id':'税收管理岗','value':'税收管理岗'},{'id':'税收征收岗','value':'税收征收岗'},{'id':'风险管理岗','value':'风险管理岗'},{'id':'数据分析岗','value':'数据分析岗'},{'id':'纳税服务岗','value':'纳税服务岗'},{'id':'收入规划核算岗','value':'收入规划核算岗'},{'id':'规费管理岗','value':'规费管理岗'},{'id':'信息技术岗','value':'信息技术岗'}]"  jsonreader="{'id':'id','value':'value'}"> 
									</sui:select> 
																		</sui:input> 
									</td>
									
														    						    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
											
																				 
													    												
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearTraining'
										onclick="clearTrainingFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="trainingSearchBtn">
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
			<div id="trainingGridDiv" style='height: 100%'>
				<sui:grid id="trainingListGrid" pageId="trainingListGrid_page"
					title="" offsetHeight="290" addClick="trainingListCRUD.addTraining"
					addOperator="training_add"   
					editClick="trainingListCRUD.editTraining"
					editOperator="training_edit"
					delClick="trainingListCRUD.deleteTraining" 
					delOperator="training_del" pkName="id"
					url="${ctxPath}/training/loadTrainingListDataGrid.action"
					beforeProcessing="trainingListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='tranName' hidden="false" title='姓名' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranDept' hidden="false" title='所属科室' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranPostion' hidden="false" title='现从事的岗位' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranExpectpos' hidden="false" title='以后希望从事岗位(请选择1至3个)' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranNeedType' hidden="false" title='所需培训内容' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranNeedEducation' hidden="false" title='学历培训需求项目' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranNeedProfession' hidden="false" title='专业资格培训的需求项目' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranPlanYear' hidden="false" title='计划' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranBusinessType' hidden="false" title='业务类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranBusinessOther' hidden="false" title='其他业务类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranInterestType' hidden="false" title='兴趣类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranInterestOther' hidden="false" title='其他兴趣类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranKnowledgeType' hidden="false" title='知识类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='tranKnowledgeOther' hidden="false" title='其他知识类培训' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
