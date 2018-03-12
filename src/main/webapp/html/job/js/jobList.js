/**
 * @author : 梁汝健
 * @date 2014-03-12
 * @Description：管理职务增、删、改、查等操作
 * */
$(function(){
		jobListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,
			defaultPostData:{},
			addJob : function() {  //增加职务记录
				suntoolkit.openOptions({title:'职务信息新增',width:400,height:200,resizable:false,zIndex:'auto'},(window.WWWROOT + "/html/job/jobAdd.jsp"))  		
			}, 
			editJob : function(grid, rowData) { //编辑职务记录
 				DWZ.debug(grid)  
 				DWZ.debug(rowData)
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'职务记录修改',width:400,height:200,resizable:false,zIndex:'auto'},(window.WWWROOT  + "/job/jobUpdate.action" + "?id="+keyID))
			},
			deleteJob : function(grid, ids) { //删除职务记录
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/job/JobDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									jobListCRUD.reloadData();
								} else {
									$.alert(data.msg);
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
				$("#jobListGrid").jqGrid("setGridParam", {
							postData :postDatas
						}).trigger("reloadGrid");
						 
			}, 
			
			buttonHandle : function(val, cell, colpos, rwdat, _act) {//格式化按钮
				var keyID =colpos.id ;   
				return setUserForJob(keyID,val);	
			}
		};

});