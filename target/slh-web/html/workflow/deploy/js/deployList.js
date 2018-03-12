
jQuery(function(){
		deployListCRUD = { 
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
				jQuery("#deployListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						    
			},  
			addDeploy : function() {  //装置表新增
				suntoolkit.openOptions({title:'装置表新增',width:700,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/workflow/deploy/deployAdd.jsp")  
			}, 
			deleteDeploy : function(grid, ids) {//装置表删除
 				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return; 
				}    
				jQuery.ajax({
							type : "post", 
							url : window.WWWROOT + "/deploy/deployDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									jQuery.alert("已经删除成功。");
									deployListCRUD.reloadData();
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
			deployStateHbutton : function(val, cell, colpos, rwdat, _act) {
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
				var	  url = "<span id='"+keyID+"' class='gridButtonbg' onclick=deployListCRUD.convertToModel('"+keyID+"');>转换为model</span>";
				return url;
			},
			convertToModel : function(porcessID){ 
				if (!confirm("是否确定要执行此操作？")) {
					return;
				} 
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/deploy/process-to-model.action",
					data : {
						processDefinitionId : porcessID,
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							$.alert("转换成功!");
						} else {
						    $.alert(data.mesg);
						}
					}, 
					error : function(XMLHttpRequest, textStatus,
							errorThrown) {
						$.alert("转换失败，请稍后再次尝试提交!");
					}
			   });
			},
			formatPng2Url :function(val, cell, colpos, rwdat, _act){
				var ID =colpos.id;     
				var key=colpos.key;   
				var drn= colpos.diagramResourceName;  
				var url="<a target='_blank' href='"+window.WWWROOT+"/deploy/getXml.action?resourceType=image&processDefinitionId="+ID+"'>"+drn+"</a>"; 

				return url;
			},
			formatXml2Url :function(val, cell, colpos, rwdat, _act){
				var ID =colpos.id;       
				var rn= colpos.resourceName;  
				var url="<a target='_blank' href='"+window.WWWROOT+"/deploy/getXml.action?resourceType=xml&processDefinitionId="+ID+"'>"+rn+"</a>"; 
				return url;
			}     
		};
});