
jQuery(function(){
    purchasedemoFormCRUD = {
        saveOrUpdate: function(){
            validateCallback(jQuery('#purchasedemoFormAdd')[0]||jQuery('#purchasedemoFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				}
              
				
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog(); 
					purchasedemoListCRUD.reloadData();
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            }) 
        }, 
        purchasedemoFormValidateSubmit: function(){
            purchasedemoFormSubmit();
        }
    }
});
