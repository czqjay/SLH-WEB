<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title></title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/workflow/deploy/js/deployList.js'></script>
	</head>  
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
	

		<div class="pageHeader">
			<div class="searchBar">
				<table class="searchContent">


					<tr>

						












					</tr>
				</table>
				<div class="subBar">
					<ul>
						
						
					
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id='cleardeploy'
										onclick="cleardeployFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="deploySearchBtn">
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
			<div id="deployGridDiv" style='height: 100%' >
				<sui:grid id="deployListGrid" pageId="deployListGrid_page" title=""
					offsetHeight="290" 
					addClick="deployListCRUD.addDeploy"
					addOperator="role_add"    
					delClick="deployListCRUD.deleteDeploy"  
					delOperator="role_del" 
					pkName="deploymentId"  
					url="${ctxPath}/deploy/loadDeployListDataGrid.action"   
					> 
					<sui:gridCell name="id" title="processid"  width="120"
						align='center'></sui:gridCell>

					<sui:gridCell name="key" title="key"  width="120"
						align='center'></sui:gridCell>
					<sui:gridCell name="name" title="名字"  width="120"
						align='center'></sui:gridCell>
					<sui:gridCell name="revision" title="版本"  width="120"
						align='center'></sui:gridCell>

					<sui:gridCell name="deploymentId" title="deploymentId"  
						width="120" align='center'></sui:gridCell>
					<sui:gridCell name="diagramResourceName" title="图片"  
						width="175" align='center' formatter='deployListCRUD.formatPng2Url'  ></sui:gridCell>
					<sui:gridCell name="resourceName" title="xml"   formatter='deployListCRUD.formatXml2Url'  
						width="100" align='center'></sui:gridCell> 

					<sui:gridCell name="suspended" title="挂起"  width="100"
						align='center'></sui:gridCell> 
					<sui:gridCell   name="op" title="操作"  width="150"
						align='center' formatter='deployListCRUD.buttonHandle'> 
					</sui:gridCell>
				</sui:grid>
	</body>
</html>




