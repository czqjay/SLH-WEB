
jQuery(function(){
    modelFormCRUD = {
        saveOrUpdate: function(){
            validateCallback(jQuery('#modelFormAdd')[0]||jQuery('#modelFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(data &&!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				}
                suntoolkit.destroyDialog(); 
				modelListCRUD.reloadData();
            }) 
        },
        modelFormValidateSubmit: function(){ 
        	modelFormSubmit();
        }
    }
});
