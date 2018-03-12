/**
 * @author : liangrujian
 *
 *
 * @date 2013-07-18
 *
 * @desc 权限计划增删改查操作
 * 
 * */
$(function(){

		roleListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			defaultPostData:{},
			addRoleForUser : function(ID,roleName) {  //选择用户添加到角色中
				suntoolkit.openOptions({title:'添加用户'+window.titleSplit+roleName,width:800,height:500,resizable:false,zIndex:'auto'},window.WWWROOT + "/user/allocateUserForRole.action?roleId="+ID,"addUsersToRoleDialog")
			},
			roleList : function() {  //显示角色列表，供用户选择
			    
				suntoolkit.openOptions({title:'选择角色',width:600,height:500,resizable:false,zIndex:'auto'},window.WWWROOT + "/role/getRoleCheckBoxList.action","roleCheckBoxList")
				
			},
			addAssign : function(ID){  //授权
			window.open (window.WWWROOT+"/sysresource/getSysResourInfoList.action?roleId="+ID, "资源授权", "height=800, width=1024, toolbar =no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

			},
			addRoles : function() {
				suntoolkit.openOptions({title:'角色记录新增',width:400,height:200,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/role/addRoles.jsp","addRoles")  
			},
			addRole : function() {
				suntoolkit.openOptions({title:'角色记录新增',width:400,height:200,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/role/roleAdd.jsp")  
			}, 
			editRole : function(grid, rowData) { 
 				DWZ.debug(grid)  
 				DWZ.debug(rowData)
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'角色记录修改',width:400,height:200,resizable:false,zIndex:'auto'},(window.WWWROOT  + "/role/roleUpdate.action" + "?id="+keyID),"editRole");
			
			},
			deleteRole : function(grid, ids) {
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/role/delRole.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									roleListCRUD.reloadData();
								} else {
									$.alert("删除失败，原因：" + data.msg);
								}
							},
							error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								$.alert("删除失败，请稍后再次尝试删除！！");
							}
						}); 
			}, 
			reloadData : function(postDatas) {
			if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				}
				DWZ.debug('reloadData')
				$("#roleListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						 
			},  
			reloadRoleForUserData : function(postDatas) {
			if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				}
				DWZ.debug('addUsersToRoleDialogGrid')
				$("#addUsersToRoleDialogGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
			},
			deleteRoleForUsers : function(grid, ids) {  //删除当前角色中的用户记录
				if (!confirm("是否要删除所选记录?(共"+ids.split(',').length+"条)")) {
					return;
				} 
				var roleId = $("#roleId").val();
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/role/deleteRoleForUsers.action",
						data : {
							ids : ids ,
							roleId : roleId
						},   
						dataType : 'json',
						success : function(data) { 
							if (data && data.success) {
									$.alert("已经删除成功!");
									roleListCRUD.reloadRoleForUserData();
							} else {
									$.alert("删除失败，原因：" + data.msg);
							}
						},
						error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								$.alert("删除失败，请稍后再次尝试删除！！");
						}
				}); 
			},
			saveRoleForUser : function(ids,roleId) {  //保存当前添加到角色中的用户记录 
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/role/saveRoleForUsers.action",
					data : {
						ids : ids,
						roleId : roleId 
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							$.alert("设置用户成功!");
							roleListCRUD.reloadRoleForUserData();
						} else {
							$.alert("保存失败，原因：" + data.msg);
						}
					},
					error : function(XMLHttpRequest, textStatus,
						errorThrown) {
						$.alert("保存失败，请稍后再次尝试删除！！");
					}
						}); 
			},
			buttonHandle : function(val, cell, colpos, rwdat, _act) {
				var keyID =colpos.id ;   
				return quanxianceshi(keyID,val);
				
			},
			getGrid: function(grid){ 
				roleListCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow")
			},
			setGrid: function(grid){ 
				roleListCRUD.grid=grid;
			}  
			
		};
		
});