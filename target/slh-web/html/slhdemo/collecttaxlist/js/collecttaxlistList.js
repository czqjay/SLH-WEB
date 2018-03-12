
jQuery(function(){
		collecttaxlistListCRUD = { 
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
				jQuery("#collecttaxlistListGrid").jqGrid("setGridParam", {
							postData : postDatas
						}).trigger("reloadGrid");
						   
			},  
			addCollecttaxlist : function(grid, event ,closeFlag) {  //缴款书新增
				suntoolkit.openOptions({title:'缴款书新增',width:868,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/slhdemo/collecttaxlist/collecttaxlistAdd.jsp?closeFlag="+closeFlag)  
			}, 
			editCollecttaxlist : function(grid, rowData) { //缴款书修改
				DWZ.debug(arguments) 
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'缴款书修改',width:868,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/collecttaxlist/collecttaxlistInfoForUpdate.action" + "?id="+keyID) 
			}, 
			deleteCollecttaxlist : function(grid, ids) {//缴款书删除
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				}  
				jQuery.ajax({
							type : "post", 
							url : window.WWWROOT + "/collecttaxlist/collecttaxlistDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									jQuery.alert("已经删除成功。");
									collecttaxlistListCRUD.reloadData();
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
				genFormaterHandle: function(val, cell, colpos, rwdat, _act,defaultoption,dataUrl,valueName){
				var plainTxt=val;
				var dp =defaultoption;
				if(jQuery.isArray (dp)){
					for(v in dp){ 
						var obj =dp[v];
						if(obj['id']==val){
							return obj['value'];
						}
					}
				}
				
				jQuery.ajax({
				  dataType: "json",
				  url: dataUrl,
				  async :false,
				  success: function(data){
					DWZ.debug(data)
					DWZ.debug(plainTxt) 
					if(data && data.list)
						for(v in data.list){
							if(data.list[v]['id']==val){
								plainTxt = data.list[v][valueName]
								DWZ.debug(plainTxt)   
								return;	
							} 
						} 
					}
				});
				return plainTxt;
				
			}, 
																  
																													  
																													  
															formatterHandlectlType: function(val, cell, colpos, rwdat, _act){
									return collecttaxlistListCRUD.genFormaterHandle(val, cell, colpos, rwdat, _act,[{'id':'','value':'请选择'},{'id':'1','value':'类型1'},{'id':'2','value':'类型2'}],window.WWWROOT+'?optionId=id&optionName=value','value');
								}, 
																													  
																													  
																													  
																			
			
			gridBeforeProcessing : function(data, st, xhr){ 
				if(st=='success'){
					var remoteData={};
					var resData = data['rows'];
															  
																										  
																										  
													
							collecttaxlistListCRUD.gridFormatterSelect([{'id':'','value':'请选择'},{'id':'1','value':'类型1'},{'id':'2','value':'类型2'}],resData,'ctlType')
																																	  
																										  
																										  
																			}
			},
			gridFormatterSelect : function(optionsOrUrl,resData,formatterColName,referColName){ 
					if(jQuery.type(optionsOrUrl)=='array'){
						for(i in  resData ){ 
							for(v in optionsOrUrl){
								if(optionsOrUrl[v]['id']==resData[i][formatterColName]){
									resData[i][formatterColName]=optionsOrUrl[v]['value']
									break;  
								}
							}  
						}
					}
					if(jQuery.type(optionsOrUrl)=='string'){
						var remoteData={};
						jQuery.ajax({
						  dataType: "json",
						  url: optionsOrUrl, 
						  async :false,
						  success: function(data){
								if(data && data.list){
									remoteData = data.list;
								}
							}
						});
						for(i in  resData ){ 
							for(v in remoteData){
								if(remoteData[v]['id']==resData[i][formatterColName]){
									resData[i][formatterColName]=remoteData[v][referColName]
									break;  
								}
							}  
						}
					}
			},
			collecttaxlistStateHbutton : function(val, cell, colpos, rwdat, _act) {
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