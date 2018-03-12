/**
 * @author : 梁汝健	
 * @date : 2014-03-11
 * @Description：管理为部门分配用户等操作
 * */
$(function(){
		allocateUserForDeptCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			reloadData : function(postDatas) {
			if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				}
				DWZ.debug('allocateUserForDeptGrid')
				$("#allocateUserForDeptGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
			},
			saveUserForDept: function(deptId){//保存当前添加到部门中的用户记录 
				var ids = allocateUserForDeptCRUD.grid.jqGrid("getGridParam", "selarrrow");
				if(typeof(ids)!='string'){
				    ids = ids.toString();
				}
				if(ids.length==0){
				    $.alert("请选择需要设置的用户!");
				    return false;
				}
				
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/dept/allocateUserForDept.action",
						data : {
							ids : ids,
							deptId : deptId
						},   
						dataType : 'json',
						success : function(data) { 
						   if (data && data.success) {
							   $.alert("设置用户成功！");
							   currentUserForDeptCRUD.reloadData({deptId:$('#deptId').val()});
						    } else {
								$.alert("设置用户失败，原因：" + data.msg);
						    }
						},
						error : function(XMLHttpRequest, textStatus,
							errorThrown) {
							$.alert("设置用户失败！");
						}
				}); 
				suntoolkit.destroyDialog('allocateUserForDeptDialog');
			},
			getGrid: function(grid){ 
				allocateUserForDeptCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow")
			},
			setGrid: function(grid){ 
				allocateUserForDeptCRUD.grid=grid;
			}  
		};

});