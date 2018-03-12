<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/dept/js/model.js"></script>
<script type="text/javascript">
		$(function() {
			$('#deptSearchBtnUserList').click(function(){
				$('#modelGrid').jqGrid("setGridParam",{url:'${ctxPath}/user/loadDeptOthersUserDataGrid.action'});
				modelCRUD.reloadData({deptId:'${param.deptId}',userName:$('#userNameForDept').val()});
			});
			
			$("#saveUserForDept").click(function(){
			    modelCRUD.saveUserForDept('${param.deptId}');
			    
			});

		}); 	
	
	 function clearFromUserToDepartList(){
		jQuery("#userNameForDept").val("");
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
					用户名称：
					<input type="text" id="userNameForDept" />
				</td>

				
			</tr>
		</table>
		<div class="subBar">
			<ul>
			<li>
				<div class="buttonActive">
					<div class="buttonContent">
						<button type="button" id='clearFromUserToDepart' onclick="clearFromUserToDepartList()">
							重置
						</button>
					</div>
				</div>
			</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='deptSearchBtnUserList'>
								检索
							</button>
						</div>
					</div>
				</li>
				
				<sui:authorization oprationGrant="depart_setUser_allotUser_save"> 
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='saveUserForDept'>
								保存
							</button>
						</div>
					</div>
				</li>
			  </sui:authorization> 
			   
			</ul>
		</div>
	</div>
		
</div>
<div class="pageContent">
  	<input type="hidden" id="deptId" name="deptId" value='${param.deptId}' />
	<div id="modelDiv" style='height:100%'> 
		<sui:grid id="modelGrid"  pageId="modelGrid_pageList" title=""
			offsetHeight="290"
			pkName="id" url="${ctxPath}/user/loadDeptOthersUserDataGrid.action?deptId=${param.deptId}"  height="suntoolkit.getGridHeight('modelDialog')"> 
			<sui:gridCell name="id" title="modelId"  align="center"></sui:gridCell>
			<sui:gridCell name="key"  title="key"  width="100"
				align='center'></sui:gridCell>
			<sui:gridCell name="Name"  title="Name"  width="100"     	  	
				align='center'></sui:gridCell>	 
			<sui:gridCell name="Version" title="Version"  width="80"
				align='center' ></sui:gridCell>
				<sui:gridCell name="phone" title="创建时间"  width="80"
				align='center' ></sui:gridCell>
				<sui:gridCell name="phone" title="最后更新时间"  width="80"
				align='center' ></sui:gridCell>
				<sui:gridCell name="phone" title="元数据"  width="80"
				align='center' ></sui:gridCell>
					<sui:gridCell name="操作" title="操作"  width="80" 
				align='center' ></sui:gridCell>
				 	
		</sui:grid>
		
	</div>