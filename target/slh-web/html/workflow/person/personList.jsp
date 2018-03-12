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
			src='${ctxPath}/html/workflow/person/js/personList.js'></script>
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
									<button type="button" id='clearPerson'
										onclick="clearPersonFrom()">
										重置
									</button>
								</div>
							</div>
						</li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="button" id="personSearchBtn">
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
			<div id="personGridDiv" style='height: 100%' >
				<sui:grid id="personListGrid" pageId="personListGrid_page" title=""
					offsetHeight="290" 
					addClick="personListCRUD.addperson"
					addOperator="role_add"    
					delClick="personListCRUD.deleteperson"  
					delOperator="role_del" 
					pkName="personmentId"  
					url="${ctxPath}/person/loadPersonListDataGrid.action"   
					> 
					<sui:gridCell name="id" title="processid"  width="120"
						align='center'></sui:gridCell>

				
					</sui:gridCell> 
				</sui:grid>
	</body>
</html>




