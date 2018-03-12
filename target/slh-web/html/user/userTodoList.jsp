<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/user/js/processList.js"></script>
<script type="text/javascript">
	$(function() {
			$('#userTodoListSearchBtn').click(function(){
				$('#testerListGrid').jqGrid("setGridParam",{url:'${ctxPath}/sysuser/loadTodoListGrid.action'});
				testerCRUD.reloadData({userPlanName:$('#planUserTodoListName').val()});
			});
		}); 	
	 function userTodoListFromRole() {
		jQuery("#planUserTodoListName").val("");
	}
</script> 
<html >   
	<body > 
		 <%-- <div class="pageHeader">
			<div class="searchBar">
				<table class="searchContent">
					<tr>
						<td>
							流程名称：
							<input type="text" id="planUserTodoListName" maxLength='1200' />
						</td>
		
					</tr>
				</table>
				<div class="subBar">
					<ul>
					<li>
						<div class="buttonActive">
							<div class="buttonContent">
								<button type="button" id='userTodoListFromRole' onclick="userTodoListFromRole()">
									重置
								</button>
							</div>
						</div>
			        </li>
						<li>
							<div class="buttonActive">
								<div class="buttonContent">
									<button type="submit" id='userTodoListSearchBtn'>
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
			<div id="processGridDiv" style='height:100%'>   
				<sui:grid id="processListGrid" pageId="processListGrid_page"   
					offsetHeight="290"
					pkName="id" url="${ctxPath}/deploy/todoList.action"> 
					<sui:gridCell name="id" title=""   align="center"></sui:gridCell> 
					<sui:gridCell name="processDefID" title="定义ID"  width="200"  align="center"></sui:gridCell>
					<sui:gridCell name="executionID" title="执行ID" width="200"   align="center"></sui:gridCell>
					<sui:gridCell name="processID" title="流程ID"  width="200"  align="center"></sui:gridCell>
					<sui:gridCell name="trace" title="当前节点"  width="200" formatter='processListCRUD.traceHandle'
						align='center'></sui:gridCell>
					<sui:gridCell name="isSuspend" title="是否挂起"  width="200"   
						align='center'></sui:gridCell>	
					<sui:gridCell name="op" title="操作"  width="140" 
						align='center' formatter='processListCRUD.buttonHandle' ></sui:gridCell>
				</sui:grid>
			</div>   	
		</div> --%>	 
		
		
  	<sui:portlet  id='myportlet' jspurl="${ctxPath }/html/portlets/actlist/actList.jsp" title ="mytestportlet">
  	</sui:portlet> 
  	
  	 
		
		
		
		
	</body>
</html>