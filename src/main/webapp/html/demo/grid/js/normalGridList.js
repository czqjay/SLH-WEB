$(function(){
		classroomListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			addClassroom : function() {  //新增
				suntoolkit.openOptions({title:'新增',width:600,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/demo/classroomadd.jsp") ; 
			}, 
			editClassroom : function(grid, rowData) { //修改
 	//			DWZ.debug(grid);  
 	//			DWZ.debug(rowData);
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'修改',width:600,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/classroom/classroomUpdate.action" + "?id="+keyID); 
			}, 
			deleteClassroom : function(grid, ids) {//用户信息删除
		//	var demoIds = demoListCRUD.grid.jqGrid("getGridParam", "selarrrow");//获取当前选中的用户记录id集合（以,号隔开）
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/classroom/classroomDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									classroomListCRUD.reloadData();
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
			
			
			reloadData : function(postDatas) {//加载grid列表方法
				if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				}
				$("#classroomListGrid").jqGrid("setGridParam", {			
								postData : postDatas					
						}).trigger("reloadGrid");						 
			} ,

			
			getGrid: function(grid){ 
				classroomListCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow");
			},
			setGrid: function(grid){ 
				classroomListCRUD.grid=grid;
			}  ,
/*			
//			setStudent : function(val, cell, colpos, rwdat, _act) {//部门列表中设置用户按钮格式化
//				var keyID =colpos.id ; 
//				var deptName =colpos.deptname ;  
//				//return setStudent(keyID,deptName);	//调用页面中	setStudent 方法，这样写是为了控制权限4
//				suntoolkit.openOptions({title:'分配学生',width:600,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/grid/loadtree.jsp") ;
//			} ,
*/			 
		};

		
		
		
		classroomFormCRUD = {
				saveOrUpdate: function(){
					validateCallback($('#classroomFormAdd')[0]||$('#classroomFormUpdate')[0], function(data){
						DWZ.debug(data);
						if(!data.success){
							$.alert("保存失败<br>"+data.msg?data.msg:'');	
							return false;
						}else{
							$.alert('保存成功!');	
						}
						suntoolkit.destroyDialog();
						classroomListCRUD.reloadData();
					});
				},
				classroomFormValidateSubmit: function(){
					classroomFormSubmit();
				}
		};		
		
});