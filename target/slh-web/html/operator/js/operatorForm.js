
$(function(){
    operatorFormCRUD = {
        saveOrUpdate: function(){
            validateCallback($('#operatorFormAdd')[0]||$('#operatorFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 $.alert('保存成功!');	
				}
                suntoolkit.destroyDialog();
				operatorListCRUD.reloadData();
            })
        }, 
        operatorFormValidateSubmit: function(){
            operatorFormSubmit();
        }
    }
});
