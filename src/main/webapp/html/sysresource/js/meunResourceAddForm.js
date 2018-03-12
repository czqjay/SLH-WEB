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
   meunResourceAddFormCRUD = {
        saveOrUpdate: function(){
        
            validateCallback($('#meunResourceFormAdd')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				} 
                suntoolkit.destroyDialog();
            })
        },
       meunResourceAddFormValidateSubmit: function(){
           meunResourceAddFormSubmit();
        }
    }
});
