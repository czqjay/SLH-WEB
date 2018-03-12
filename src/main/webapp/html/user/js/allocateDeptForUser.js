/**
 * @author : 梁汝健
 * @date : 2014-03-10
 * @Description：为用户设置归属部门
 * */
$(function(){
		allocateDeptForUserCRUD= { 
			orgId : "",  
			orgName : "",  
			orgType : false,  
			grid:{},
			defaultPostData:{},
			allocateDeptForUser:function(){ //为用户设置所属部门
				suntoolkit.openOptions({title:'设置部门',width:600,height:500,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/user/allocateDeptForUser.jsp","allocateUserForDeptDialog");
			}
			
		};

});