
jQuery(function(){
		modelListCRUD = { 
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
				jQuery("#modelListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						    
			},  
			addModel : function() {  //模型表新增
				suntoolkit.openOptions({title:'模型表新增',width:700,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/workflow/model/modelAdd.jsp")  
			}, 
			editModel : function(grid, rowData) { //模型表修改
			},  
			deleteModel : function(grid, ids) {//模型表删除
 				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) { 
					return;  
				}    
				jQuery.ajax({
							type : "post", 
							url : window.WWWROOT + "/model/modelDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									jQuery.alert("已经删除成功。");
									modelListCRUD.reloadData();
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
			modelStateHbutton : function(val, cell, colpos, rwdat, _act) {
			    var str ="";
			    if(val==0){
			       str = '操作成功';
			    }else if(val==1){
			       str = '操作失败'; 
			    }else if(val==2){
			       str = '非法访问';
			    } 
				return str; 
			}, 
			buttonHandle :function(val, cell, colpos, rwdat, _act){
				var keyID =colpos.id ;  
				var url="<a target='_blank'  class='gridButtonbg'   href='"+window.WWWROOT+"/service/editor?id="+keyID+"'>编辑</a>"; 
	   			url = url+"<a   class='gridButtonbg'   onclick='modelListCRUD.deployModel("+colpos.id+")';>&nbsp;部署&nbsp;</a>";
	   			return url;   
			},  
			
			deployModel :function(val){
				var keyID =val;
				$.ajax({   
						type : "post", 
						url : window.WWWROOT + "/model/deploy.action",
						data : {
							modelID : keyID ,
						},   
						dataType : 'json',
						success : function(data) { 
							if (data && data.success) {
									$.alert("已经部署成功。");
							} else {
									$.alert("部署失败，原因：" + data.msg);
							} 
						},
						error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								$.alert("部署失败，请稍后再次尝试部署！！");
						}
				});
			},
			
			formatPng2Url :function(val, cell, colpos, rwdat, _act){
				var ID =colpos.id;     
				var key=colpos.key;   
				var drn= colpos.diagramResourceName;  
				var url="<a target='_blank' href='"+window.WWWROOT+"/model/getXml.action?resourceType=image&processDefinitionId="+ID+"'>"+drn+"</a>"; 

				return url;
			},
			formatXml2Url :function(val, cell, colpos, rwdat, _act){
				var ID =colpos.id;       
				var rn= colpos.resourceName;  
				var url="<a target='_blank' href='"+window.WWWROOT+"/model/getXml.action?resourceType=xml&processDefinitionId="+ID+"'>"+rn+"</a>"; 
				return url;
			}     
		};
});