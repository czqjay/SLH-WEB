/**
 * @author : 梁汝健
 *
 * @date 2014-03-12
 *
 * */
$(function(){
    jobFormCRUD = {
        saveOrUpdate: function(){
        	
            validateCallback($('#jobFormAdd')[0]||$('#jobFormUpdate')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
				    if(data.error=='false'){
				       $.alert("职务名称已存在");
				    }else{
					    $.alert("保存失败<br>"+data.msg?data.msg:'');	
				    }
					return false;
				}else{
				 $.alert('保存成功!');	
				}
                suntoolkit.destroyDialog();
				jobListCRUD.reloadData({jobName:$('#jobName').val()});
            })
        },
        jobFormValidateSubmit: function(){
            jobFormSubmit();
        }
    }
});
