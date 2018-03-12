
jQuery(function(){
		purchasedemoListCRUD = { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			defaultPostData:{},
			startTime:"",
		
			
			reloadData : function(postDatas) {
				if(postDatas){
					for(v in postDatas){
						this.defaultPostData[v]="";
					}
				}else{
					postDatas=this.defaultPostData ;
				} 
				jQuery("#purchasedemoListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						   
			},  
			addPurchasedemo : function() {  //采购新增
				suntoolkit.openOptions({title:'采购新增',width:700,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/slhdemo/purchasedemo/purchasedemoAdd.jsp")  
			}, 
			editPurchasedemo : function(grid, rowData) { //采购修改
				DWZ.debug(arguments) 
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'采购修改',width:700,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/purchasedemo/purchasedemoInfoForUpdate.action" + "?id="+keyID) 
			}, 
			deletePurchasedemo : function(grid, ids) {//采购删除
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				}  
				jQuery.ajax({
							type : "post", 
							url : window.WWWROOT + "/purchasedemo/purchasedemoDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									jQuery.alert("已经删除成功。");
									purchasedemoListCRUD.reloadData();
								} else {
									jQuery.alert("删除失败，原因：" + data.msg);
								} 
							},
							error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								jQuery.alert("删除失败，请稍后再次尝试删除！！");
							}
						}); 
			}, 
			purchasedemoStateHbutton : function(val, cell, colpos, rwdat, _act) {
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