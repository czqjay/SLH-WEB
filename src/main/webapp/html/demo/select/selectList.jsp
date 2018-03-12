<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>tb_select</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/demo/select/js/selectList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#selectSearchBtn').click(function(){
			
			$('#selectListGrid').jqGrid("setGridParam",{url:'${ctxPath}/select/loadSelectListDataGrid.action'});
			var json={};
																	 
																
			json.sselSelect1=$('#sselSelect1').val(); 
									 
						    																
			selectListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearSelectFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
								<table class="searchContent">
					
											
																					<tr>  
														 
																<td>
									<sui:input title="select1：" size="x30"  topStyle="width:271px" >
									<input   type='text'   name='sselSelect1' id="sselSelect1"   maxlength='222'  />
																		</sui:input> 
									</td>
									
														    						    												
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearSelect'
										onclick="clearSelectFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="selectSearchBtn">
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
			<div id="selectGridDiv" style='height: 100%'>
				<sui:grid id="selectListGrid" pageId="selectListGrid_page"
					title="" offsetHeight="290" addClick="selectListCRUD.addSelect"
					addOperator="select_add"   
					editClick="selectListCRUD.editSelect"
					editOperator="select_edit"
					delClick="selectListCRUD.deleteSelect" 
					delOperator="select_del" pkName="id"
					url="${ctxPath}/select/loadSelectListDataGrid.action"
					beforeProcessing="selectListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='selSelect1' hidden="false" title='select1' align='left' width='120'	 align='center'  ></sui:gridCell>
																</sui:grid> 
					</div>   
	</body>   
</html>  
 
  
   
  
