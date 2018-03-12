$(function(){
		classroomListCRUDForEditable= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			deleteClassroom : function(grid, ids) {//用户信息删除
		//	var demoIds = demoListCRUD.grid.jqGrid("getGridParam", "selarrrow");//获取当前选中的用户记录id集合（以,号隔开）
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/classroomForEditable/classroomDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json', 
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									classroomListCRUDForEditable.reloadData();
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
				$("#classroomListGridForEditable").jqGrid("setGridParam", {			
								postData : postDatas					 
						}).trigger("reloadGrid");						 
			} ,  
			getGrid: function(grid){ 
				this.grid=grid;
			},
			setGrid: function(grid){ 
				this.grid=grid;
			}  , 
			addClassroomForEditable:function(){  
				//$("##classroomListGrid_add").addClass('ui-state-disabled');
				$("#classroomListGridForEditable_edit").addClass('ui-state-disabled');
			},
			editClassroomForEditable:function(rowData){    
				//$("##classroomListGrid_edit").addClass('ui-state-disabled');
				$("#classroomListGridForEditable_add").addClass('ui-state-disabled'); 
			} ,
			cancelClassroom:function(rowData){    
				$("#classroomListGridForEditable_edit").removeClass('ui-state-disabled');
				$("#classroomListGridForEditable_add").removeClass('ui-state-disabled');  
			} ,
			saveOrUpdate: function(){
					validateCallback($('#classroomFormAdd')[0]||$('#classroomFormUpdate')[0], function(data){
						DWZ.debug(data);
						if(!data.success){
							$.alert("保存失败<br>"+data.msg?data.msg:'');	
							return false;
						}else{
							$.alert('保存成功!');	
						}
						classroomListCRUDForEditable.cancelClassroom(); 
						classroomListCRUDForEditable.reloadData(); 
					}); 
			},
			classroomFormValidateSubmit: function(savedRow){
					DWZ.debug(savedRow)
					classroomFormSubmit(); 
			}
		 
		};

		
});