/**
 * @author : 梁汝健
 * @date : 2014-03-10
 * @Description：管理用户记录增、删、改、查等操作js
 * */
$(function(){
		demoListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			addDemo : function() {  //新增
				suntoolkit.openOptions({title:'新增',width:600,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/demo/demoAdd.jsp") ; 
			}, 
			editDemo : function(grid, rowData) { //修改
 	//			DWZ.debug(grid);  
 	//			DWZ.debug(rowData);
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'修改',width:600,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/demo/demoUpdate.action" + "?id="+keyID); 
			}, 
			deleteDemo : function(grid, ids) {//用户信息删除
		//	var demoIds = demoListCRUD.grid.jqGrid("getGridParam", "selarrrow");//获取当前选中的用户记录id集合（以,号隔开）
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/demo/demoDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									demoListCRUD.reloadData();
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
				$("#demoListGrid").jqGrid("setGridParam", {			
								postData : postDatas					
						}).trigger("reloadGrid");						 
			} ,
//			updatePasw :  function(accountName){
//				suntoolkit.openOptions({title:'修改密码',width:350,height:200,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/user/personPaswUpdate.jsp?accountName="+accountName)
//			},
//			formatUpdatePaw : function(val, cell, colpos, rwdat, _act) {
//			    var accountName = colpos.accountName;
//				return "<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=userListCRUD.updatePasw('"+accountName+"');>&nbsp;修改密码&nbsp;</span>";
//			},
//			formatOpenUserSource : function(val, cell, colpos, rwdat, _act) { //格式化用户数据来源字段列
//				return val==0?'本地':'同步';
//			},
//			formatOpenIsOpen : function(val, cell, colpos, rwdat, _act) { //格式化用户记录是否开启字段列
//				return val==0?'开启':'关闭';
//			},
			
			formatOpenDataType : function(val, cell, colpos, rwdat, _act) { //格式化用户类型字段列
			    var str ="";
			    if(val==1){
			       str = '在线';
			    }else if(val==2){
			       str = '离线';
			    }else{
			       str = '繁忙';
			    }
				return str;
			},
			
			getGrid: function(grid){ 
				demoListCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow");
			},
			setGrid: function(grid){ 
				demoListCRUD.grid=grid;
			}  
			 
		};

});