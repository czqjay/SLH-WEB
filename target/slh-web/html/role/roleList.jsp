<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/role/js/roleList.js"></script>
<script type="text/javascript">
		$(function() {
			$('#roleSearchBtn').click(function(){
				$('#roleListGrid').jqGrid("setGridParam",{url:'${ctxPath}/role/loadRoleListDataGrid.action'});
				roleListCRUD.reloadData({roleName:$('#roleName').val()});
			});
		}); 	
	function quanxian(ID){
	   roleListCRUD.addAssign(ID);
	}
			
	function addRoleForUsers(ID,roleName){
	   roleListCRUD.addRoleForUser(ID,roleName);
	}	
	 function clearFromRole() {
		jQuery("#roleName").val("");
	}
	
	function quanxianceshi(keyID,val){
	var url="";
	 <sui:authorization oprationGrant="role_allotSysource"> 
	 url="<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=quanxian('"+keyID+"');>&nbsp;资源分配&nbsp;</span>";
	 </sui:authorization>
	 
	 <sui:authorization oprationGrant="role_setUser"> 
	   url =url+"&nbsp;&nbsp;&nbsp;<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=addRoleForUsers('"+keyID+"','"+val+"');>&nbsp;设置用户&nbsp;</span>";
	 </sui:authorization>
	  return url;
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
					<input type="text" id="roleName" />
				</td>
	
			</tr>
		</table>
		<div class="subBar">
			<ul>
			<li>
				<div class="buttonActive">
					<div class="buttonContent">
						<button type="button" id='clearFromRole' onclick="clearFromRole()">
							重置
						</button>
					</div>
				</div>
			</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='roleSearchBtn'>
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
	<div id="role" style='height:100%'> 
		<sui:grid id="roleListGrid" pageId="roleListGrid_page" title=""  
			offsetHeight="290" 
			pkName="id" url="${ctxPath}/role/loadRoleListDataGrid.action"  
			addClick="roleListCRUD.addRole" addOperator="role_add" editClick="roleListCRUD.editRole" editOperator="role_edit" 
			delClick="roleListCRUD.deleteRole" delOperator="role_del"  > 
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="roleName" title="角色名称"  width="250"
				align='center'>
			</sui:gridCell>

			<sui:gridCell name="roleName" title="操作"  width="60" 
				align='center' formatter='roleListCRUD.buttonHandle' >
			</sui:gridCell>
		</sui:grid>
		
	</div>