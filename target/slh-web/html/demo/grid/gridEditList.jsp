<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>tb_grid</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/demo/grid/js/gridList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#gridSearchBtn').click(function(){
			
			$('#gridListGrid').jqGrid("setGridParam",{url:'${ctxPath}/grid/loadGridListDataGrid.action'});
			var json={};
																	 
																
			json.sgdGrid1=$('#sgdGrid1').val(); 
									 
						    																								 
																
			json.sgdGrid2=$('#sgdGrid2').val(); 
									 
						    																
			gridListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearGridFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
																<td>
									<sui:input title="gd_grid1：" size="x30"  topStyle="width:225px" >
									<input number='1'  type="text"   name='sgdGrid1' id="sgdGrid1"   maxlength='222'  />
																		</sui:input> 
									</td>
									
														    						    												
						
											
																				 
																<td>
									<sui:input title="gd_grid2：" size="x30"  topStyle="width:257px" >
									<input   type='text'   name='sgdGrid2' id="sgdGrid2"   maxlength='222'  />
																		</sui:input> 
									</td>
									
														    						    												
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearGrid'
										onclick="clearGridFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="gridSearchBtn">
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
			<div id="gridGridDiv" style='height: 100%'>
				<sui:grid id="gridListGrid" pageId="gridListGrid_page"
					title="" offsetHeight="290" addClick="gridListCRUD.addGrid"
					addOperator="grid_add"   
					editClick="gridListCRUD.editGrid"
					editOperator="grid_edit"
					delClick="gridListCRUD.deleteGrid" 
					delOperator="grid_del" pkName="id"
					url="${ctxPath}/grid/loadGridListDataGrid.action"
					beforeProcessing="gridListCRUD.gridBeforeProcessing"  
					saveClick="$.sunitnon"  saveOperator="classroom_add"     
					cancelClick="classroomListCRUDForEditable.cancelClassroom"     cancelOperator="classroom_add"  
			editable="true"	 editableUrl="${ctxPath}/classroomForEditable/classroomUpdate.action"   formValidate="classroomListCRUDForEditable.classroomFormValidateSubmit"  
					
					
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell sortable='true' name='gdGrid1' hidden="false" title='gd_grid1点击排序' align='left' width='120'	 align='center'  ></sui:gridCell>
																								  
							<sui:gridCell name='gdGrid2' hidden="false" title='gd_grid2' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>    
	</body>   
</html>  
 
  
   
  
