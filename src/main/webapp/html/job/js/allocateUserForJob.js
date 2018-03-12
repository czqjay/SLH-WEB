/**
 * @author : 梁汝健
 * @date 2014-03-12
 * @Description：管理为职务设置相应用户操作
 * */
$(function(){
		allocateUserForJobCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,
			defaultPostData:{},
		
		
			reloadData : function(postDatas) {
			if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				}
				DWZ.debug('reloadData')
				$("#loadJobsForUserDataGrid").jqGrid("setGridParam", {
							postData :postDatas
						}).trigger("reloadGrid");
						 
			}, 
			
			userForJobDel : function(grid, ids) {  //删除当前职务中的用户记录
				if (!confirm("是否要删除所选记录?(共"+ids.split(',').length+"条)")) {
					return;
				} 
				var jobsID = $("#jobsId").val();
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/job/userForJobDel.action",
						data : {
							ids : ids ,
							jobsID : jobsID
						},   
						dataType : 'json',
						success : function(data) { 
							if (data && data.success) {
									$.alert("已经删除成功。");
									allocateUserForJobCRUD.reloadData();
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
			userForJobSave : function(ids,jobsId) {  //保存当前添加到职务中的用户记录 
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/job/userForJobSave.action",
					data : {
						ids : ids,
						jobsId : jobsId 
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							$.alert("保存成功!");
							allocateUserForJobCRUD.reloadData();
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
			allocateUserForJob:function(ID,jobName){  //选择用户添加到职务中
				suntoolkit.openOptions({title:'添加用户'+window.titleSplit+jobName,width:800,height:500,resizable:false,zIndex:'auto'},window.WWWROOT + "/user/allocateUserForJob.action?jobsId="+ID,"addUsersToJobsDialog")
			} ,
			buttonHandle : function(val, cell, colpos, rwdat, _act) {//格式化按钮
				var keyID =colpos.id ;   
				return setUserForJob(keyID,val);	
			}
		};

});