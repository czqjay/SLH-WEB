<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/job/js/jobList.js"></script>
<script type="text/javascript" src="${ctxPath}/html/job/js/allocateUserForJob.js"></script>
<script type="text/javascript">
			$(function() {
					$('#jobSearchBtn').click(function(){
						$('#jobListGrid').jqGrid("setGridParam",{url:'${ctxPath}/job/loadJobListDataGrid.action'});
						jobListCRUD.reloadData({jobName:$('#jobName').val()});
					});
			}); 
			
	 function clearFromJob() {
		jQuery("#jobName").val("");
	}
	
	function setUserForJob(keyID,val){
	  var url="";
	  <sui:authorization oprationGrant="job_setUser"> 
	   url = "<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=allocateUserForJobCRUD.allocateUserForJob('"+keyID+"','"+val+"');>&nbsp;设置用户&nbsp;</span>";
	  </sui:authorization>
	   return url;
	}
</script>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr>
				<td>
					职务名称：
					<input type="text" id="jobName" name="jobName" value="${jobName}"/>
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='clearFromJob' onclick="clearFromJob()">
								重置
							</button>
						</div>
					</div>
					</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='jobSearchBtn'>
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
 
	<script type="text/javascript"> 
			function getGridHeight(){ 
				return $('.navTab-panel').height()- $('.navTab-panel .page').height()-50;		
			}   
	</script>
 
	<div id="jobGridDiv" style='height:100%'> 
		<sui:grid id="jobListGrid" pageId="jobListGrid_page" title=""
			offsetHeight="290"    
			pkName="id" url="${ctxPath}/job/loadJobListDataGrid.action"
			addClick="jobListCRUD.addJob" addOperator="job_add" editClick="jobListCRUD.editJob" editOperator="job_edit"
			delClick="jobListCRUD.deleteJob" delOperator="job_del">
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="name" title="职务名称"  width="650"
				align='center'></sui:gridCell>
			<sui:gridCell name="name" title="操作"  width="160" 
				align='center' formatter='jobListCRUD.buttonHandle' >
			</sui:gridCell>
		</sui:grid>
		
	</div>
	
	    