/**
 * @author : 梁汝健
 * @date 2014-04-2
 * @Description：菜单管理增、删、改、查等操作
 * */
$(function(){
		menuListCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,
			defaultPostData:{},
			addSubMenu : function(rootNodeID,ids) {
				$.ajax({   
							type : "post", 
							url : window.WWWROOT + "/sysresource/subMenuAdd.action",
							data : {
								ids : ids ,
								rootNodeID : rootNodeID
							},   
							dataType : 'json',
							success : function(data) { 
								if (data && data.success) {
									$.alert("保存成功！");
								} else {
									$.alert(data.msg);
								}
							},
							error : function(XMLHttpRequest, textStatus,
									errorThrown) {
								$.alert("保存失败，请稍后再次尝试保存！！");
							}
						}); 			
			}
		};

});