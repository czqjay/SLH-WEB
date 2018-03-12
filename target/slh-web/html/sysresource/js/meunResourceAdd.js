/**
 * @author : liangrujian
 *
 *
 * @date 2014-06-20
 *
 * @desc 增加父菜单资源管理
 * 
 * */
$(function(){
		meunResourceAddCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			meunResourceAdd : function(keyID) {
				suntoolkit.openOptions({title:'菜单资源新增',width:650,height:350,resizable:false,zIndex:'auto'},(window.WWWROOT + "/sysresource/meunResourceAdd.action" + "?id="+keyID));  
  			 },
  			meunResourceUpdate : function(keyID){
  				suntoolkit.openOptions({title:'菜单资源修改',width:650,height:350,resizable:false,zIndex:'auto'},(window.WWWROOT + "/sysresource/meunResourceUpdate.action" + "?id="+keyID));
  			},
  			meunResourceDelete : function(keyId){
  				if (!confirm("是否要删除所选菜单？")) {
					return;
				} 
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/sysresource/delSysResource.action",
							data : {
								ids : keyId 
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("已经删除成功，请刷新。");
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
  	/*		searchModuleCaptionName :  function(moduleCaptionName) {
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/sysresource/searchModuleCaptionName.action",
					data : {
						moduleCaptionName : moduleCaptionName
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							var retData = data.data;
							$("#showSubModuleCaption").html("").attr("class","").attr("style","");
							if(retData.length>0){
								$("#showSubModuleCaption").attr("class","ui-accordion-content ui-helper-reset ui-widget-content ui-corner-all ui-accordion-content-active");
								$("#showSubModuleCaption").attr("style","height:418px;width:40%;padding:0;margin:0;overflow:auto;position:absolute;");
								for(v in retData){
								   $("#showSubModuleCaption").append("<li><input name='checkModuleCaption' caption="+retData[v].moduleCaption+" value='"+retData[v].id+"' type='checkbox'/>"+retData[v].moduleCaption+"</li>");
								}
							}
							
						} else {
							$.alert("加载失败!");
						}
					},
					error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							$.alert("加载失败，请稍后再次尝试！！");
					}
			   });
  			 },*/
  			 submitSupForsubResource :  function(supResourceID,subResourceIDS) {
  			 if (!confirm("确定提交?")) {
					return;
				} 
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/sysresource/saveSupForsubResource.action",
					data : {
						supResourceID : supResourceID,
						subResourceIDS :subResourceIDS
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							$.alert("提交成功!");
						} else {
							$.alert("提交失败!");
						}
					},
					error : function(XMLHttpRequest, textStatus,
								errorThrown) {
							$.alert("提交失败，请稍后再次尝试！！");
					}
			   });
  			 }
		}
		
		
});