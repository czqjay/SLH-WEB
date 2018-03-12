
jQuery(function(){
		trainingListCRUD = { 
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
				jQuery("#trainingListGrid").jqGrid("setGridParam", { 
							postData : postDatas
						}).trigger("reloadGrid");
						   
			},  
			addTraining : function(grid, event ,closeFlag) {  //学习意向意向表新增
				suntoolkit.openOptions({title:'学习意向意向表新增',width:868,height:600,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/slhdemo/training/trainingAdd.jsp?closeFlag="+closeFlag)  
			}, 
			editTraining : function(grid, rowData) { //学习意向意向表修改
				DWZ.debug(arguments) 
				var keyID = rowData.id; 
				suntoolkit.openOptions({title:'学习意向意向表修改',width:868,height:600,resizable:false,zIndex:'auto'},window.WWWROOT + "/training/trainingInfoForUpdate.action" + "?id="+keyID) 
			}, 
			deleteTraining : function(grid, ids) {//学习意向意向表删除
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				}  
				jQuery.ajax({
							type : "post", 
							url : window.WWWROOT + "/training/trainingDelete.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									jQuery.alert("已经删除成功。");
									trainingListCRUD.reloadData();
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
																  
																													  
																													  
															formatterHandletranPostion: function(val, cell, colpos, rwdat, _act){
									return trainingListCRUD.genFormaterHandle(val, cell, colpos, rwdat, _act,[{'id':'','value':'请选择'},{'id':'综合管理岗','value':'综合管理岗'},{'id':'税收管理岗','value':'税收管理岗'},{'id':'税收征收岗','value':'税收征收岗'},{'id':'风险管理岗','value':'风险管理岗'},{'id':'数据分析岗','value':'数据分析岗'},{'id':'纳税服务岗','value':'纳税服务岗'},{'id':'收入规划核算岗','value':'收入规划核算岗'},{'id':'规费管理岗','value':'规费管理岗'},{'id':'信息技术岗','value':'信息技术岗'}],window.WWWROOT+'?optionId=id&optionName=value','value');
								}, 
																													  
																													  
																													  
																													  
																													  
															formatterHandletranPlanYear: function(val, cell, colpos, rwdat, _act){
									return trainingListCRUD.genFormaterHandle(val, cell, colpos, rwdat, _act,[{'id':'','value':'请选择'},{'id':'1','value':'1年'},{'id':'2','value':'2年'},{'id':'3','value':'3年'},{'id':'4','value':'4年'}],window.WWWROOT+'?optionId=id&optionName=value','value');
								}, 
																													  
																													  
																													  
																													  
																													  
																													  
																			
			
			gridBeforeProcessing : function(data, st, xhr){ 
				if(st=='success'){
					var remoteData={};
					var resData = data['rows'];
															  
																										  
																										  
													
							trainingListCRUD.gridFormatterSelect([{'id':'','value':'请选择'},{'id':'综合管理岗','value':'综合管理岗'},{'id':'税收管理岗','value':'税收管理岗'},{'id':'税收征收岗','value':'税收征收岗'},{'id':'风险管理岗','value':'风险管理岗'},{'id':'数据分析岗','value':'数据分析岗'},{'id':'纳税服务岗','value':'纳税服务岗'},{'id':'收入规划核算岗','value':'收入规划核算岗'},{'id':'规费管理岗','value':'规费管理岗'},{'id':'信息技术岗','value':'信息技术岗'}],resData,'tranPostion')
																																	  
																										  
																										  
																										  
																										  
													
							trainingListCRUD.gridFormatterSelect([{'id':'','value':'请选择'},{'id':'1','value':'1年'},{'id':'2','value':'2年'},{'id':'3','value':'3年'},{'id':'4','value':'4年'}],resData,'tranPlanYear')
																																	  
																										  
																										  
																										  
																										  
																										  
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
			trainingStateHbutton : function(val, cell, colpos, rwdat, _act) {
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