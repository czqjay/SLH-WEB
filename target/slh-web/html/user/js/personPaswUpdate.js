/**
 * @author : 梁汝健
 * @date 2014-03-12
 * 管理admin修改所有人密码
 * */
$(function(){
    personPaswUpdateCRUD = {
         personPaswUpdateOrSave: function(){
           validateCallback($('#personPaswUpdateForm')[0], function(data){
				if(!data.success){
					$.alert(data.error);	
					return false;
				}else{
				    $.alert('设置新密码成功!');	  
				}
            })
        },
        personPaswUpdateValidateSubmit: function(){
            personPaswUpdateSubmit();
        }
    }
});
