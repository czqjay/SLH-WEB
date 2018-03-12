<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head> 
		<title>系统日志管理</title>
		<meta http-equiv="pragma" content="no-cache" />0
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/workflow/js/workflowList.js'></script>
	</head>
	<body>
<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />

<link rel="stylesheet" href="${ctxPath}/html/js/common/css/gridbutton.css" type="text/css"/>
<script type="text/javascript">
			$(function() {
			$('#workflowSearch').click(function(){
				$('#workflowListGrid').jqGrid("setGridParam",{url:'${ctxPath}/workflow/loadworkflowListDataGrid.action'});
					var startTime = $('#dateFrom').val();
				     startTime = startTime.trim().replace(/\D/g,"");
						var endTime = $('#dateTo').val();
						  endTime = endTime.trim().replace(/\D/g,"");
						if(endTime!=''){
						 if(Number(endTime)<Number(startTime)){
						     alert('开始创建时间不能大于结束创建时间！');
						     return ;
					     }
			     	}
				workflowListCRUD.reloadData({name:$('#name').val(),dateFrom:$('#dateFrom').val(),dateTo:$('#dateTo').val()}); 
			}); 
		}); 
	function clearFrom() {
		jQuery("#name").val("");
		jQuery("#dateFrom").val("");
		jQuery("#dateTo").val("");
		
		
		
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
				<td >
					用户名称：
					<input type="text" id="name" />
				</td>
				
				<td> 
					时间起：
						<input type="text" format='yyyy-MM-dd HH:mm:ss' class="datePicker"
							name='dateFrom'  id='dateFrom' readonly="true" />
				</td>
			    <td> 
					至：
						<input type="text" format='yyyy-MM-dd HH:mm:ss' class="datePicker"
							name='dateTo'  id='dateTo' readonly="true" />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
			
			<li>
				<div class="buttonActive">
					<div class="buttonContent">
						<button type="button" id='clearFrom' onclick="clearFrom()">
							重置
						</button>
					</div>
				</div>
			</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id="workflowSearch">
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
	<div id="workflowDeployedGridDiv" style='height:100%'>  
		<sui:grid id="workflowDeployedListGrid" pageId="workflowDeployedListGrid_page" title=""
			offsetHeight="290"
			pkName="id" url="${ctxPath}/workflow/loadDeployedList.action"  
			addClick="workflowListCRUD.addworkflow" addworkflow="role_add"
			delClick="workflowListCRUD.deleteworkflow" 
					delOperator="role_del"
			
			>  
			<sui:gridCell name="id" title="id"  width="120" 
				align='center' ></sui:gridCell> 
			
			<sui:gridCell name="key" title="key"  width="120"
				align='center' ></sui:gridCell> 
					<sui:gridCell name="name" title="名字"  width="120"
				align='center' ></sui:gridCell> 
						<sui:gridCell name="revision" title="版本"  width="120"
				align='center' ></sui:gridCell> 
				
			<sui:gridCell name="deploymentId" title="deploymentId"  width="120"
				align='center' ></sui:gridCell> 
			<sui:gridCell name="diagramResourceName" title="图片"  width="175"
				align='center'></sui:gridCell>
			<sui:gridCell name="resourceName" title="xml"  width="100"
				align='center'></sui:gridCell>
				
				<sui:gridCell name="suspended" title="挂起"  width="100" 
				align='center'></sui:gridCell>
			<sui:gridCell name="op" title="操作"  width="150"  
				align='center' formatter='workflowListCRUD.buttonHandle' > 
			</sui:gridCell> 
		</sui:grid>
	</div>
</body>
</html>