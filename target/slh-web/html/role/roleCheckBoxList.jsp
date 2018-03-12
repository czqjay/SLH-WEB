<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/role/js/roleList.js"></script>
<script type="text/javascript" src="${ctxPath}/html/user/js/userList.js"></script>
<script type="text/javascript">
		$(function() {
			$('#roleSelBtnList').click(function(){
				$('#roleListGridChecBoxList').jqGrid("setGridParam",{url:'${ctxPath}/role/loadRoleListDataGrid.action?userId='+$('#userId').val()});
				userListCRUD.reloadRoleListData({roleName:$('#roleNameList').val()});
			});
			$('#addRoleList').click(function(){
				roleListCRUD.addRoles();
			});
			
			$("#saveRoleList").click(function(){
			    var userId = $("#userId").val();
			    userListCRUD.getRoleCheckBoxGrid(userId);			    
			});

		}); 	
	
	function clearFromRoleCheckBoxList() {
		jQuery("#roleNameList").val("");
	}
	
</script>
<style type="text/css">
.t_aera
{ 
 background-color:#F6FEF6;
 clip:rect('20', '80', '20', '2');
 margin:-2px;
} 
</style>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr>
				<td>
					角色名称：
					<input type="text" id="roleNameList" />
				</td>

				
			</tr>
		</table>
		<div class="subBar">
			<ul>
			<li>
				<div class="buttonActive">
					<div class="buttonContent">
						<button type="button" id='clearFromRoleCheckBox' onclick="clearFromRoleCheckBoxList()">
							重置
						</button>
					</div>
				</div>
			 </li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='roleSelBtnList'>
								检索
							</button>
						</div>
					</div>
				</li>
				<sui:authorization oprationGrant="user_allotRole_allotRole_save"> 
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='saveRoleList'>
								保存
							</button>
						</div>
					</div>
				</li>
				</sui:authorization>	
				
				<sui:authorization oprationGrant="user_allotRole_allotRole_addRole"> 
			   <li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='addRoleList'>
								增加角色
							</button>
						</div>
					</div>
				</li>
				</sui:authorization>	
			</ul>
		</div>
	</div>
	<input type="hidden" id="userId" name="userId" value='${userId}' />
</div>
<div class="pageContent">
	<div id="role" style='height:100%'> 
		<sui:grid id="roleListGridChecBoxList"  pageId="roleListGrid_pageList" title=""
			offsetHeight="290"
			pkName="id" url="${ctxPath}/role/loadRoleListDataGrid.action?userId=${userId}" onready="roleListCRUD.setGrid" height="suntoolkit.getGridHeight('roleCheckBoxList')"> 
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="roleName" title="角色名称"  width="250"
				align='center'>
			</sui:gridCell>
		</sui:grid>
		
	</div>