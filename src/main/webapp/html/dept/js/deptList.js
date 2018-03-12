/**
 * @author : 梁汝健	
 * @date : 2014-03-11
 * 管理部门的增、删、改、查等操作
 * */
$(function(){

		deptListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			addDept : function() { //增加部门记录 
			    suntoolkit.openOptions({title:'部门添加',width:680,height:450,resizable:false,zIndex:'auto'},(window.WWWROOT + "/html/dept/deptAdd.jsp")); 
			}, 
			editDept : function(grid, rowData) {  //修改部门记录
 				DWZ.debug(grid)  
 				DWZ.debug(rowData)
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'部门修改',width:680,height:450,resizable:false,zIndex:'auto'},(window.WWWROOT  + "/dept/deptUpdate.action" + "?id="+keyID))
			},
			deleteDept : function(grid, ids) { //删除部门记录
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/dept/deptDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									deptListCRUD.reloadData();
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
			buttonHandle : function(val, cell, colpos, rwdat, _act) {//部门列表中设置用户按钮格式化
				var keyID =colpos.id ; 
				var deptName =colpos.deptname ;  
				return setUserForDept(keyID,deptName);	//调用页面中	setUserForDept 方法，这样写是为了控制权限
			} ,
			viewDeptDetails : function(deptID,deptName) {  //查看详细信息
			    suntoolkit.openOptions({title:'部门详细信息'+window.titleSplit+deptName,width:650,height:300,resizable:false,zIndex:'auto'},window.WWWROOT + "/dept/showDeptDetails.action?deptId="+deptID); 
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
				$("#deptListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
			}
			,
			
			deleteDeptForUser : function(grid, ids) {  //删除当前部门中的用户记录
				if (!confirm("是否要删除所选记录?(共"+ids.split(',').length+"条)")) {
					return;
				} 
				
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/dept/delDeptForUsers.action",
						data : {
							ids : ids ,
							deptID : $('#deptIdForDel').val()
						},   
						dataType : 'json',
						success : function(data) { 
							if (data && data.success) {
									$.alert("已经删除成功。");
									deptListCRUD.reloadDeptForUserData({deptID:$('#deptIdForDel').val()});
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
			saveDeptForUsers: function(deptId){//保存当前添加到部门中的用户记录 
				var ids = deptListCRUD.grid.jqGrid("getGridParam", "selarrrow");
				if(typeof(ids)!='string'){
				    ids = ids.toString();
				}
				if(ids.length==0){
				    $.alert("请选择需要设置的用户!");
				    return false;
				}
				
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/dept/saveDeptForUsers.action",
						data : {
							ids : ids,
							deptId : deptId
						},   
						dataType : 'json',
						success : function(data) { 
						   if (data && data.success) {
							   $.alert("设置用户成功！");
							   deptListCRUD.reloadDeptForUserData({deptId:$('#deptId').val()});
						    } else {
								$.alert("设置用户失败，原因：" + data.msg);
						    }
						},
						error : function(XMLHttpRequest, textStatus,
							errorThrown) {
							$.alert("设置用户失败！");
						}
				}); 
				suntoolkit.destroyDialog('deptSelectUsersList');
			},

			formatOpenIsenabled : function(val, cell, colpos, rwdat, _act) {
				return val==0?'开启':'关闭';
			},
			formatOpenSources : function(val, cell, colpos, rwdat, _act) {
				return val==0?'本地':'同步';
			} ,
			hrefHandle : function(val, cell, colpos, rwdat, _act) {
				var keyID =colpos.id ;   
				var departName = colpos.deptname;
				return "<a title='点击查看详细信息' onclick=deptListCRUD.viewDeptDetails('"+keyID+"','"+departName+"');><span style='width: 20px;height: 32px;'>&nbsp;"+val+"&nbsp;</span></a>";		
			}
			,
			getGrid: function(grid){ 
				deptListCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow")
			},
			setGrid: function(grid){ 
				deptListCRUD.grid=grid;
			}  
			
			
		};

});