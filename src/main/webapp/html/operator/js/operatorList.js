/**
 * 2013-10-2 钟道侨
 *   日志管理
 * */
$(function(){
		operatorListCRUD = { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			defaultPostData:{},
			startTime:"",
			addAppraisalType : function(){   
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/operator/loadOperatorListDataGrid.action",
					dataType : 'json',
					nd :Math.random(),
					success : function(data) { 
						if (data && data.success) {
							suntoolkit.openOptions({title:'系统日志管理'+window.titleSplit,width:700,height:400,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/operator/operatorList.jsp");  
						} else {
							suntoolkit.openOptions({title:'系统日志管理'+window.titleSplit,width:700,height:400,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/operator/operatorList.jsp");  
							operatorListCRUD.reloadData();
						} 
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
				$("#operatorListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						   
			}, 
			operatorStateHbutton : function(val, cell, colpos, rwdat, _act) {
			    var str ="";
			    if(val==0){
			       str = '操作成功';
			    }else if(val==1){
			       str = '操作失败';
			    }else if(val==2){
			       str = '非法访问';
			    }
				return str;
			}
		};
});