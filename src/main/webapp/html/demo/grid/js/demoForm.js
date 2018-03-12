/**
 * @author : 梁汝健
 * @date : 2014-03-10
 * @Description：管理用户记录增、改、form提交时处理操作js
 * */
$(function(){
   demoFormCRUD = {
        saveOrUpdate: function(){
            validateCallback($('#demoFormAdd')[0]||$('#demoFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				}else{
				 $.alert('保存成功!');	
				}
                suntoolkit.destroyDialog();
                demoListCRUD.reloadData({name:$('#name').val(),phone:$('#phone').val(),starttime:$('#starttime').val(),endtime:$('#endtime').val(),state:$('#state').val()});
            });
        },
       demoFormValidateSubmit: function(){
            demoFormSubmit();
        }
    };
});
