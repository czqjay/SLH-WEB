/**
 * @author : 梁汝健	
 * @date : 2014-03-11
 * @Description：管理为部门设置用户等操作
 * */
$(function(){
		currentUserForDeptCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			currentUserForDept : function(ID,deptName) {  //当前部门中的用户（当点击设置用户时经过）
				suntoolkit.openOptions({title:'设置用户'+window.titleSplit+deptName,width:600,height:500,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/dept/currentUserForDept.jsp?deptId="+ID+"&deptName="+deptName,"currentUserForDeptDialog")
			},
			allocateUserForDept : function(deptId,deptName) {  //显示用户列表，供选择添加到部门中（点击分配用户时经过）   
				suntoolkit.openOptions({title:'分配用户',width:500,height:400,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/dept/allocateUserForDept.jsp?deptId="+deptId,"allocateUserForDeptDialog")
				
			},
			reloadData : function(postDatas) {
				DWZ.debug('reloadData')
				if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				}
				$("#currentUserForDeptGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
			},
			
			deleteUserForDept : function(grid, ids) {  //删除当前部门中的用户记录
				if (!confirm("是否要删除所选记录?(共"+ids.split(',').length+"条)")) {
					return;
				} 
				
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/dept/userForDeptDel.action",
						data : {
							ids : ids ,
							deptID : $('#deptIdForDel').val()
						},   
						dataType : 'json',
						success : function(data) { 
							if (data && data.success) {
									$.alert("已经删除成功。");
									currentUserForDeptCRUD.reloadData({deptID:$('#deptIdForDel').val()});
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
			getGrid: function(grid){ 
				currentUserForDeptCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow")
			},
			setGrid: function(grid){ 
				currentUserForDeptCRUD.grid=grid;
			}  
		};

});