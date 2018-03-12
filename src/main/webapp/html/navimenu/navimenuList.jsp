<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>菜单表</title> 
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/navimenu/js/navimenuList.js'></script>
	</head>
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#navimenuSearchBtn').click(function(){
			
			$('#navimenuListGrid').jqGrid("setGridParam",{url:'${ctxPath}/navimenu/loadNavimenuListDataGrid.action'});
			var json={};
			json.stitle=$('#stitle').val(); 
			navimenuListCRUD.reloadData(json);
			}); 
		}); 
		function clearNavimenuFrom() { 
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
														 
																
																			<td>
											<sui:input title="菜单名称：" size="x30"  >
																									<input    letterNumberChinese ='1'  type='text'   name='stitle' id="stitle"   maxlength='100'  />
																							</sui:input> 
										</td>
															    						    												
						
											
																				 
													    												
						
											
																				 
													    												
						
					
					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearNavimenu'
										onclick="clearNavimenuFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="navimenuSearchBtn">
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
			<div id="navimenuGridDiv" style='height: 100%'>
				<sui:grid id="navimenuListGrid" pageId="navimenuListGrid_page"
					title="" offsetHeight="290" addClick="navimenuListCRUD.addNavimenu"
					addOperator="navimenu_add"   
					editClick="navimenuListCRUD.editNavimenu"
					editOperator="navimenu_edit" 
					delClick="navimenuListCRUD.deleteNavimenu" 
					delOperator="navimenu_del" pkName="id"
					otherButtons="{id:'exportcvs',name:'exprtcvs',title:'导出',onClick='navimenuListCRUD.exportcvs'}" 
					url="${ctxPath}/navimenu/loadNavimenuListDataGrid.action"
					beforeProcessing="navimenuListCRUD.gridBeforeProcessing"  
					> 
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
								<sui:gridCell name='title'  title='菜单名称' align='left' width='120'	 align='center'  ></sui:gridCell>
								<sui:gridCell name='sysresourceId'  title='对应资源' align='left' width='120'	 align='center'  ></sui:gridCell>
								<sui:gridCell name='remark'  title='remark' align='left' width='120'	 align='center'  ></sui:gridCell>
					</sui:grid> 
					</div>   
	</body>   
</html>  
   
   

  
