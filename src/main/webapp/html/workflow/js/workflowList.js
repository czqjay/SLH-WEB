/**
 * 2013-10-2 钟道侨
 *   日志管理
 * */
$(function(){
		workflowListCRUD = { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			defaultPostData:{},
			startTime:"",
			addworkflow : function() {
				suntoolkit.openOptions({title:'新增',width:400,height:200,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/workflow/workflowAdd.jsp")  
			},   
			reloadData : function(postDatas) {
				if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				} 
				$("workflowDeployedListGrid").jqGrid("setGridParam", {
							postData : postDatas 
						}).trigger("reloadGrid");
						   
			}, 
			buttonHandle : function(val, cell, colpos, rwdat, _act) {
				
			}
		};
});