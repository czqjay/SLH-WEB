<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/role/js/roleList.js"></script>
<script type="text/javascript">

      
	    var showDeptTreeFroRole;
		$(function() {
			$('#searchUsersDataBtnForRole').click(function(){
			$('#addUsersToRoleDialogGrid').jqGrid("setGridParam",{url:'${ctxPath}/user/loadRoleForUserDataGrid.action?roleId='+$('#roleId').val()});
				roleListCRUD.reloadRoleForUserData({userName:$('#userNameForRoles').val()});
			});
	   });


      
     $(function(){
	
		$('#publisherList').dblclick(function(){
			
			$('#publisherList :selected').remove();
		});
	
		showDeptTreeFroRole={
		plhs:{},
			deptClick:function(dtnode, event){  
				//DWZ.debug('deptClick:function(dtnode, event)')
				//DWZ.debug(arguments)  
		 	},
		 	lazyRead: function(dtnode){ //懒加载操作的拦截  一般不用覆盖
		 		DWZ.debug(dtnode)
		 		//onlazyread = "showDeptTreeFroRole.lazyRead"
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
        	
        	fillSels: function(){  //填充select by treeSelect
		 		var plhs = dy_showDeptTreeFroRole.dynatree("getSelectedNodes");
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
				
				var roleId = $("#roleId").val();
				if(ids.length>0 && roleId.length>0){
				   roleListCRUD.saveRoleForUser(ids,roleId);
				}
				
			},
			setSelect: function(){   // 填充Select  by   隐藏域 
				$("#publisherList").html('');
				var publishers= $('#planReceiver').text().split(";")
				
		 	}
		};
		//showDeptTreeFroRole.setSelect(); 
	});
	
	 function clearFromUserToRoleList() {
		jQuery("#userNameForRoles").val("");
	}
</script>


<div id='SHOWpageLeft' style='float:left;text-align:left;width:200px; height:100%'>

	<sui:tree  id="showDeptTreeFroRole"  checkbox="true" postProcess ="showDeptTreeFroRole.postProcess" 
 	onDblClick="showDeptTreeFroRole.dblClick"  postData="root" 
     buttons="{onclick:'showDeptTreeFroRole.fillSels()',id:'saveToSelectForRole',name:'确定',operator:'role_setUser_save'}"  
     onclick="showDeptTreeFroRole.deptClick"  url="${ctxPath}/dept/loadChildren.action" 
	></sui:tree> 
</div>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr>
				<td>
					用户名称：
					<input type="text" id="userNameForRoles" />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
				<div class="buttonActive">
					<div class="buttonContent">
						<button type="button" id='clearFromUserToRole' onclick="clearFromUserToRoleList()">
							重置
						</button>
					</div>
				</div>
			 </li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='searchUsersDataBtnForRole'>
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
    <input type="hidden" name="roleId" id="roleId"  value="${ROLE_ID}"/>
	<div id="addUsersToRoleDialogDiv" style='height:100%'> 
		<sui:grid id="addUsersToRoleDialogGrid" pageId="addUsersToRoleDialogGrid_page" title=""
			offsetHeight="290"
			height="suntoolkit.getGridHeight('addUsersToRoleDialog')"
			pkName="id" url="${ctxPath}/user/loadRoleForUserDataGrid.action?roleId=${ROLE_ID}"
			delClick="roleListCRUD.deleteRoleForUsers" delOperator="role_setUser_del">
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="userName" title="用户名称"  width="100"
				align='center'></sui:gridCell>
			<sui:gridCell name="phone" title="联系方式" align="left" width="80"
				align='center' ></sui:gridCell>
		</sui:grid>
		
	</div>