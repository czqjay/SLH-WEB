/**
 * @author : liangrujian
 *
 *
 * @date 2013-06-20
 *
 * @desc 资源增删改查操作
 * 
 * */
$(function(){
		sysResourceListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			addSysresourceForRole : function(sysResourceIds,roleId) {
				if(typeof(sysResourceIds)!='string'){
				    sysResourceIds = sysResourceIds.toString();
				}
				$.ajax({   
							type : "post", 
							url : opener.WWWROOT+"/role/saveSysresourceForRole.action",
							data : {
							    roleId : roleId ,
								sysResourceIds : sysResourceIds 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
								   alert("设置资源成功！");
								  sysResourceListCRUD.closeWebPage();
								} else {
									alert("添加失败，原因：" + data.msg);
								}
							},
							error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								alert("添加失败，请稍后再次尝试添加！！");
							}
						}); 
			}
			,
			addSysResource : function() {
				suntoolkit.openOptions({title:'资源记录新增',width:'90%',height:600,resizable:false,zIndex:'auto'},window.WWWROOT + "/sysresource/sysResourceAdd.action")  
//				 suntoolkit.getDialogEL().load(window.WWWROOT + "/html/plan/planAdd.jsp",function(){
//					  suntoolkit.showDialog({title:'考评计划新增',width:700,height:450,resizable:false,zIndex:'auto'}); 
//					  initUI(suntoolkit.getDialogEL().get(0)); 
//				}); 
			}, 
			editSysResource : function(grid, rowData) { 
 				DWZ.debug(grid)  
 				DWZ.debug(rowData)
				var keyID = rowData.id;
				suntoolkit.openOptions({title:'资源记录修改',width:650,height:400,resizable:false,zIndex:'auto'},(window.WWWROOT  + "/sysresource/sysResourceUpdate.action" + "?id="+keyID));
//				suntoolkit.getDialogEL().load(window.WWWROOT  + "/plan/planUpdate.action" + "?id="+keyID,function(){
//					  suntoolkit.showDialog({title:'考评计划修改',width:700,height:450,resizable:false,zIndex:'auto'}); 
//					  initUI(suntoolkit.getDialogEL().get(0)); 
//				}); 
			},
			deleteSysResource : function(grid, ids) {
				if (!confirm("是否要删除所选记录？(共"+ids.split(',').length+"条)")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/sysresource/delSysResource.action",
							data : {
								ids : ids 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功。");
									sysResourceListCRUD.reloadData();
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
			reloadData : function() {
				DWZ.debug('reloadData')
				$("#sysResourceListGrid").jqGrid("setGridParam", {
							postData : {
								
							}
						}).trigger("reloadGrid");
						 
			}, 
		
			getGrid: function(grid){ 
				planListCRUD.grid=grid;
				grid.jqGrid("getGridParam", "selarrrow")
			},
			complete:function(){
				planListCRUD.grid.setSelection('1111'); 
			},
			buttonHandle : function (val, cell, colpos, rwdat, _act){
			  var keyID = colpos.id;
			  url="<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=sysResourceListCRUD.xiaji('"+keyID+"');>&nbsp;下级资源配置&nbsp;</span>";
			  return url;
			},
			xiaji :function (ID){
			 	suntoolkit.openOptions({title:'下级资源配置',width:600,height:450,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/sysresource/subResoucre.jsp?ID="+ID)  
			
			}
			,
          closeWebPage:function() {  
            if(navigator.userAgent.indexOf("MSIE") > 0) {  
                if(navigator.userAgent.indexOf("MSIE 6.0") > 0) {  
                    window.opener = null; window.close();  
                }else{  
                    window.open('', '_top'); window.top.close();  
                }  
            } else if (navigator.userAgent.indexOf("Firefox") > 0) {  
               		 window.location.href = 'about:blank ';      
            } else {  
                window.opener = null;   
                window.open('', '_self', '');  
                window.close();  
            }  
        }  
   
		};	
});