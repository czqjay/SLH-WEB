<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>装置表</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/workflow/model/js/modelList.js'></script>
	</head> 
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type="text/javascript">
		$(function() {
			$('#modelSearchBtn').click(function(){
			
			$('#modelListGrid').jqGrid("setGridParam",{url:'${ctxPath}/model/loadmodelListDataGrid.action'});
			var json={};
																	 
																
			json.smodel=$('#smodel').val(); 
									 
						    																								 
																
			json.smodelName=$('#smodelName').val(); 
									 
						    																								 
																
			json.scode=$('#scode').val(); 
									 
						    																								 
																
			json.smaker=$('#smaker').val(); 
									 
						    																								 
																
			json.svalidDate=$('#svalidDate').val(); 
									 
						    																								 
																
			json.scerCode=$('#scerCode').val(); 
									 
						    																								 
																																													
			modelListCRUD.reloadData(json);
			
			}); 
		}); 
		function clearmodelFrom() { 
			jQuery('.searchBar input').val('')
			jQuery('.searchBar select').trigger('selectReset')  
		} 
</script>


		<div class="pageHeader">
			<div class="searchBar">
				<table class="searchContent">


					<tr>

						<td>
							装置型号：
							<input type="text" name='smodel' id="smodel" maxlength='1000' />
						</td>




						<td>
							装置名称：
							<input type="text" name='smodelName' id="smodelName"
								maxlength='1000' />
						</td>




						<td>
							出厂编号：
							<input type="text" name='scode' id="scode" maxlength='1000' />
						</td>




						<td>
							制造厂商：
							<input type="text" name='smaker' id="smaker" maxlength='1000' />
						</td>
					</tr>



					<tr>

						<td>
							有效日期：
							<input type="text" calendar='1' format='yyyy-MM-dd HH:mm:ss'
								class='datePicker' readonly='true' "   name='svalidDate'
								id="svalidDate" maxlength='30' />
						</td>




						<td>
							证书编号：
							<input type="text" name='scerCode' id="scerCode" maxlength='1000' />
						</td>













					</tr>
				</table>
				<div class="subBar">
					<ul>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='clearmodel'
										onclick="clearmodelFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="modelSearchBtn">
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
			<div id="modelGridDiv" style='height: 100%' >
				<sui:grid id="modelListGrid" pageId="modelListGrid_page" title=""
					offsetHeight="290" 
					addClick="modelListCRUD.addModel"
					addOperator="role_add"    
					delClick="modelListCRUD.deleteModel"   
					delOperator="role_del" 
					pkName="id"  
					url="${ctxPath}/model/loadModelListDataGrid.action"   
					> 
					<sui:gridCell name="id" title="modelID" align="left" width="120"
						align='center'></sui:gridCell>

					<sui:gridCell name="key" title="key"  width="120"
						align='center'></sui:gridCell>
					<sui:gridCell name="name" title="名字" align="left" width="120"
						align='center'></sui:gridCell>
					<sui:gridCell name="revision" title="版本" align="left" width="120"
						align='center'></sui:gridCell>

					<sui:gridCell name="modelmentId" title="创建时间" align="left" 
						width="120" align='center'></sui:gridCell>
						
					<sui:gridCell name="diagramResourceName" title="最后更新时间" align="left" 
						width="175" align='center'   ></sui:gridCell>
						
					<sui:gridCell name="resourceName" title="元数据" align="left"   
						width="100" align='center'></sui:gridCell> 

					<sui:gridCell   name="op" title="操作" align="left" width="150"
						align='center' formatter='modelListCRUD.buttonHandle'>  
					</sui:gridCell>
				</sui:grid>
	</body>
</html>




