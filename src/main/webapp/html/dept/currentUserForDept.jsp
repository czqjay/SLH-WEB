<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/dept/js/currentUserForDept.js"></script>
<script type="text/javascript">
      
		$(function() {
			$('#currentUserForDeptSsearchBtn').click(function(){
			$('#currentUserForDeptGrid').jqGrid("setGridParam",{url:'${ctxPath}/user/loadUserForDeptDataGrid.action'});
				currentUserForDeptCRUD.reloadData({deptId:'${param.deptId}',userName:$('#userNameToDept').val()});
			});
	   });
	   
	   $(function() {
			$('#allocateUserDataBtn').click(function(){
			     currentUserForDeptCRUD.allocateUserForDept('${param.deptId}','${param.deptName}');
			});
	   });
	   
	  function clearFromUserToDeptList(){
		jQuery("#userNameToDept").val("");
	  }
</script>


<div class="pageHeader">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>
					用户名称：
					<input type="text" id="userNameToDept" />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='clearFromUserToDept' onclick="clearFromUserToDeptList()">
								重置
							</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='currentUserForDeptSsearchBtn'>
								检索
							</button>
						</div>
					</div>
				</li>
				<sui:authorization oprationGrant="depart_setUser_allotUser"> 
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='allocateUserDataBtn'>
								分配用户
							</button>
						</div>
					</div>
				</li>
				</sui:authorization>	
			</ul>
		</div>
	</div>
	<input type="hidden" id="deptIdForDel" name="deptIdForDel" value='${param.deptId}'/>
</div>
   
<div class="pageContent">
	<div id="currentUserForDeptDiv" style='height:100%'> 
		<sui:grid id="currentUserForDeptGrid" pageId="currentUserForDeptGrid_page" title=""
			offsetHeight="290"
			height="suntoolkit.getGridHeight('currentUserForDeptDialog')"
			pkName="id" url="${ctxPath}/user/loadUserForDeptDataGrid.action?deptId=${param.deptId}"
			delClick="currentUserForDeptCRUD.deleteUserForDept" delOperator="depart_setUser_del">
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="userName" title="用户名称"  width="100"
				align='center'></sui:gridCell>
			<sui:gridCell name="phone" title="联系方式"  width="80"
				align='center' ></sui:gridCell>
		</sui:grid>
	</div>