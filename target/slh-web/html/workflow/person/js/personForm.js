
jQuery(function(){
    deployFormCRUD = {
        saveOrUpdate: function(){
            validateCallback(jQuery('#deployFormAdd')[0]||jQuery('#deployFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				}
                suntoolkit.destroyDialog(); 
				deployListCRUD.reloadData();
            }) 
        },  
        deployFormValidateSubmit: function(){
        	
        	if(!$('#deployFile').val()){
        		$.alert("部署文件不能为空") 
        		return; 
        	} 
        	jQuery('#deployFormAdd').submit();
            
        }
    }
});
