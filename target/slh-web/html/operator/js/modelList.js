$(function(){
		ModelListCRUD = { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			defaultPostData:{},
			startTime:"",
			addModel : function() {
				suntoolkit.openOptions({title:'新增',width:400,height:200,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/Model/ModelAdd.jsp")  
			},   
			reloadData : function(postDatas) {
				if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{ 
					postDatas=this.defaultPostData ;
				} 
				$("#ModelListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						   
			}, 
			buttonHandle : function(val, cell, colpos, rwdat, _act) { 
				 url = "<span style='width: 20px;height: 32px;' class='gridButtonbg'>&nbsp;设置用户&nbsp;</span>";
			}
		};
});