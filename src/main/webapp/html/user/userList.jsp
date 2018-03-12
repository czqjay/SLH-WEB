<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/user/js/userList.js"></script>
<script type="text/javascript">
	$(function() {			    
			$('#userSearchBtn').click(function(){		
				$('#userListGrid').jqGrid("setGridParam",{url:'${ctxPath}/user/loadUserListDataGrid.action'});
				var startTime = $('#beginDateStrat').val();
				     startTime = startTime.trim().replace(/\D/g,"");
				var endTime = $('#beginDateEnd').val(); 
				  endTime = endTime.trim().replace(/\D/g,"");
				if(endTime!=''){
				 if(Number(endTime)<Number(startTime)){
				     alert('开始创建时间不能大于结束创建时间！');
				     return ;
			     }
			     }
			    userListCRUD.reloadData({accountName:$('#accountName').val(),userName:$('#userName').val(),phone:$('#phone').val(),beginDateStrat:$('#beginDateStrat').val(),beginDateEnd:$('#beginDateEnd').val(),datatype:$('#datatype').val()});
			});
		}); 
		
		$("#datatype").change(function(){
			    $('#userListGrid').jqGrid("setGridParam",{url:'${ctxPath}/user/loadUserListDataGrid.action'});
			      userListCRUD.reloadData({datatype:$('#datatype').val()});
			});
			
		
	 function clearFromUser() {
		jQuery("#accountName").val("");
		jQuery("#userName").val("");
		jQuery("#phone").val("");
		jQuery("#beginDateStrat").val("");
		jQuery("#beginDateEnd").val("");
		jQuery("#datatype").val("");
	}

</script>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr >
			   <td>
			   帐号：
					<input type="text" size="x15"  id="accountName" />
				</td>
				<td>
					用户名称：
					<input type="text" size="x15"  id="userName" />
				</td>
				<td>
					联系电话：
					<input type="text" size="x15"  id="phone" />
				</td>
				</tr>
				<tr>
					<td>
					创建时间起：
					<input type="text" format='yyyy-MM-dd HH:mm:ss' class="datePicker"
							  id='beginDateStrat' readonly="true" />
				</td>
				
				<td>
					至：
					<input type="text" format='yyyy-MM-dd HH:mm:ss' class="datePicker"
							  id='beginDateEnd' readonly="true" />
				</td>
			<td>
				   用户类型：
					<select id="datatype">
					   <option value="">--全部--</option>
					   <option value="0">普通用户</option>
					   <option value="1">业务管理员</option>
					   <option value="3">考评管理员</option>
					</select>
				</td>
			</tr>
		</table>
		<div class="subBar">
		 <ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='clearFromClient' onclick="clearFromUser()">
								重置
							</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='userSearchBtn'>
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
	<div id="userListGridDiv" style='height:100%'> 
		<sui:grid id="userListGrid" pageId="userListGrid_page" title=""
			offsetHeight="290"                                
			pkName="id" url="${ctxPath}/user/loadUserListDataGrid.action"
			onready="userListCRUD.setGrid" rownumber="20"  
			addClick="userListCRUD.addUser" addOperator="user_add" editClick="userListCRUD.editUser" editOperator="user_edit"
			delClick="userListCRUD.deleteUser" delOperator="user_del" >
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="accountName" title="帐号"  width="100"
				align='center'></sui:gridCell>
			<sui:gridCell name="userName" title="用户名称"  width="130"
				align='center'></sui:gridCell>
			<sui:gridCell name="userAddress" title="联系地址"  width="400"
				align='center'></sui:gridCell>
			<sui:gridCell name="userPhone" title="联系电话"  width="140"
				align='center'></sui:gridCell>
			<sui:gridCell name="beginDate" title="创建时间"  width="200"
				align='center'></sui:gridCell>
			<sui:gridCell name="userSource" title="用户来源"  width="100"
				align='center' formatter='userListCRUD.formatOpenUserSource'></sui:gridCell>

			<sui:gridCell name="updatePaw" title="操作"  width="100"
				align='center' formatter='userListCRUD.formatUpdatePaw'></sui:gridCell>
	
		</sui:grid>
		
	</div>