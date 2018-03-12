/**
 * @author :梁汝健
 * @date :2014-03-11
 * 管理部门增、改form提交时处理操作
 * */
$(function(){
    deptFormCRUD = {
        saveOrUpdate: function(){
        
            validateCallback($('#deptFormAdd')[0]||$('#deptFormUpdate')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				}else{
				 $.alert('保存成功!');	
				}
                suntoolkit.destroyDialog();
				deptListCRUD.reloadData({deptNo:$('#deptno').val(),departName:$('#departName').val(),departLocation:$('#departLocation').val(),sources:$('#sources').val()});
            })
        },
        
        deptFormValidateSubmit: function(){
            DWZ.debug('userFormValidateSubmit')
            deptFormSubmit();
        }
        
    }
});
