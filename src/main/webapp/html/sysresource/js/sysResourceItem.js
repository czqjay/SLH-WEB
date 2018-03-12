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
		sysResourceItemAddCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false, 
			grid:{},
			
//			sysResourceItemAdd : function() {
//				suntoolkit.openOptions({title:'菜单资源新增',width:650,height:350,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/sysresource/meunResourceAdd.jsp")  
//		  	 },
			
			//查询Action资源
  			searchModuleCaptionName :  function(moduleCaptionName) {
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/sysresourceItem/searchSubCaptionName.action",
					data : {
						moduleCaptionName : moduleCaptionName
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							var retData = data.subData;							
							$("#showModuleCaption").html("").attr("class","").attr("style","");
							if(retData.length>0){
								$("#showModuleCaption").attr("class","ui-accordion-content ui-helper-reset ui-widget-content ui-corner-all ui-accordion-content-active");
								$("#showModuleCaption").attr("style","height:610px;width:32%;padding:0;margin:0;overflow:auto;position:absolute;");
								for(v in retData){
								   $("#showModuleCaption").append("<li><input name='searchModuleCaption' caption="+retData[v].moduleCaption+" value='"+retData[v].id+"' type='checkbox'/><span class='dynatree-icon'></span><a class='dynatree-title'>"+retData[v].moduleCaption+"</a></li>");
								}
							}							
						} else {
							$.alert("加载失败!");
						}
					},
					error : function(XMLHttpRequest, textStatus,errorThrown) {
							$.alert("加载失败，请稍后再次尝试！！");
					}
			   });
  			 },
  			 
  			 //提交Action资源
  			 submitSysResourceItem :  function(supResourceID,subResourceIDS) {
  			 if (!confirm("确定提交?")) {
					return;
				} 
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/sysresourceItem/saveSysResourceItem.action",
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
					error : function(XMLHttpRequest, textStatus,errorThrown) {
							$.alert("提交失败，请稍后再次尝试！！");
					}
			   });
  			 },
  			 
  	 		//查询某菜单根或节点下的Action资源	 
   			searchSubResource :  function(supResourceID) {
				$.ajax({   
					type : "post", 
					url : window.WWWROOT + "/sysresourceItem/getSubResource.action",
					data : {
						supResourceID : supResourceID
					},   
					dataType : 'json',
					success : function(data) { 
						if (data && data.success) {
							var retData = data.subdata;
							$("#subResource").html("").attr("class","").attr("style","");
							$("#subResource").attr("class","ui-accordion-content ui-helper-reset ui-widget-content ui-corner-all ui-accordion-content-active");
							$("#subResource").attr("style","height:570px;width:330px;padding:0;margin:0;overflow:auto;position:absolute;");
							if(retData.length>0){
								for(v in retData){
									$("#subResource").append("<option value="+retData[v].id+">"+retData[v].moduleCaption+"</option>");
								}
							}
						} else {
							$.alert("加载失败!");
						}
					},
					error : function(XMLHttpRequest, textStatus,errorThrown) {
							$.alert("加载失败，请稍后再次尝试！！");
					}
			   });
  			 }
		
		};		
});