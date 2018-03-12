<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/job/js/allocateUserForJob.js"></script>
<script type="text/javascript">

    var showDeptTreeForJob;
		$(function() {
			$('#searchUsersDataBtnForJobs').click(function(){
			$('#loadJobsForUserDataGrid').jqGrid("setGridParam",{url:'${ctxPath}/user/loadJobsForUserDataGrid.action?jobsId='+$('#jobsId').val()});
					allocateUserForJobCRUD.reloadData({userName:$('#userNameForJobs').val()});
			});
	   });
      
     $(function(){
	
		showDeptTreeForJob={
		plhs:{},
			deptClick:function(dtnode, event){
				//DWZ.debug('deptClick:function(dtnode, event)')
				//DWZ.debug(arguments)  
		 	},
		 	lazyRead: function(dtnode){ //懒加载操作的拦截  一般不用覆盖
		 		DWZ.debug(dtnode)
		 		//onlazyread = "showDeptTreeForJob.lazyRead"
		 		return true;
		 	}, 
		 	postProcess: function(data,dataType){  //后处理 ajax结果的拦截处理
	        	for(v in data){
	        		if(data[v].deptname){ 
	        			data[v].isFolder=true 
	        			data[v].isLazy=true 
	        			data[v].expand=false  
	        			data[v].title=data[v].deptname
	        		//	data[v].noLink=true   
	        		} 
	        		if(data[v].userName){  
	        			data[v].isFolder=false
	        			data[v].isLazy=false 
	        			data[v].expand=false   
	        			data[v].title=data[v].userName 
	        			//data[v].noLink=true    
	        		} 
	        	} 
        		return data;
        	},
        	
        	fillSels: function(){  //组装选中的id集合
        	    //dy_showDeptTreeForJob 其中showDeptTreeForJob为Tree的id
		 		var plhs = dy_showDeptTreeForJob.dynatree("getSelectedNodes");
		 		var ids = '';
		 		var id = '';
		 		var deptname = '';
		 		for(v in plhs){
		 		    deptname = plhs[v].data.deptname;
		 		    if(typeof(deptname)=='undefined'){
		 		       id = plhs[v].data.id;
		 		    
		 		       if(id.length>0){
		 		          if(ids.length==0){
		 		             ids = id;
		 		          }else{
		 		             ids = ids+","+id;
		 		          }
		 		      }
		 		    }
		 		    
					
				} 
				
				var jobsId = $("#jobsId").val();
				if(ids.length>0 && jobsId.length>0){
				   allocateUserForJobCRUD.userForJobSave(ids,jobsId);
				}
				
			}
			
		};
	});
	
	function clearFromUserToJobsList() {
		jQuery("#userNameForJobs").val("");
	}
	
</script>


<div id='SHOWpageLeft' style='float:left;text-align:left;width:200px; height:100%'>

	<sui:tree  id="showDeptTreeForJob"  checkbox="true" postProcess ="showDeptTreeForJob.postProcess" 
 
     buttons="{onclick:'showDeptTreeForJob.fillSels()',id:'saveToSelectForJobs',name:'确定',operator:'job_setUser_save'}"   
     onclick="showDeptTreeForJob.deptClick"  url="${ctxPath}/dept/loadChildren.action" 
	></sui:tree> 
</div>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr>
				<td>
					用户名称：
					<input type="text" id="userNameForJobs" />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='clearFromUserToJobs' onclick="clearFromUserToJobsList()">
								重置
							</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='searchUsersDataBtnForJobs'>
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
    <input type="hidden" name="jobsId" id="jobsId"  value="${JOBS_ID}"/>
	<div id="allocateUserForJobDiv" style='height:100%'> 
		<sui:grid id="loadJobsForUserDataGrid" pageId="loadJobsForUserDataGrid_page" title=""
			offsetHeight="290"
			height="suntoolkit.getGridHeight('addUsersToJobsDialog')"
			pkName="id" url="${ctxPath}/user/loadJobsForUserDataGrid.action?jobsId=${JOBS_ID}"
			delClick="allocateUserForJobCRUD.userForJobDel">
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="userName" title="用户名称"  width="100"
				align='center'></sui:gridCell>
			<sui:gridCell name="phone" title="联系方式"  width="80"
				align='center' ></sui:gridCell>
		</sui:grid>
		
	</div>