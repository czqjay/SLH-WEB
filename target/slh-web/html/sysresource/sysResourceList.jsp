<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/sysresource/js/sysresourceList.js"></script>
<script type="text/javascript">
		$(function() {
			$('#sysRosurSearchBtn').click(function(){
				$('#sysResourceListGrid').jqGrid("setGridParam",{url:'${ctxPath}/sysresource/loadSysResourceListDataGrid.action?sysName='+$('#sysResourceName').val()+'&sysResourceCaption='+$('#caption').val()+'&sysResourceContent='+$('#content').val()+'&sysResourceCode='+$('#code').val()});
				sysResourceListCRUD.reloadData();
			});
		}); 	
	
	 function clearFromSysResource() {
		jQuery("#sysResourceName").val("");
		jQuery("#caption").val("");
		jQuery("#content").val("");
		jQuery("#code").val("");
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
					资源名称：
					<input type="text" id="sysResourceName"   />
				</td>
				<td>
					资源说明：
					<input type="text" id="caption"  />
				</td>
				</tr>
				<tr>
				<td>
					资源入口：
					<input type="text" id="content"  />
				</td>
				<td>
					资源编码：
					<input type="text" id="code"  />
				</td>
					
			</tr>
		</table>
		<div class="subBar">
			<ul>
					<li>
						<div class="buttonActive">
							<div class="buttonContent">
								<button type="button" id='clearFromSysResource' onclick="clearFromSysResource()">
									重置
								</button>
							</div>
						</div>
						</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='sysRosurSearchBtn'>
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
	<div id="sysResource" style='height:100%'> 
		<sui:grid id="sysResourceListGrid" pageId="sysResourceListGrid_page" title=""
			offsetHeight="290" 
			
			pkName="id" url="${ctxPath}/sysresource/loadSysResourceListDataGrid.action"   
			addClick="sysResourceListCRUD.addSysResource"  addOperator="sysresource_add"  
			editClick="sysResourceListCRUD.editSysResource"  editOperator="sysresource_edit"
			delClick="sysResourceListCRUD.deleteSysResource"  delOperator="sysresource_del" 
			>  
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="moduleCaption" title="资源名称"  width="250"
				align='center'></sui:gridCell>
			
			<sui:gridCell name="caption" title="资源说明"  width="150"
				align='center'>
			</sui:gridCell>
			<sui:gridCell name="content" title="资源入口"  width="390"
				align='center'></sui:gridCell>
			
			<sui:gridCell name="code" title="资源编码"  width="200"
				align='center'>
			</sui:gridCell>
			
		</sui:grid>
		
	</div>