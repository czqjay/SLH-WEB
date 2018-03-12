
jQuery(function(){
    order1FormCRUD = {
        saveOrUpdate: function(){
            validateCallback(jQuery('#order1FormAdd')[0]||jQuery('#order1FormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				}
              
				
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog(); 
					order1ListCRUD.reloadData();
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            }) 
        }, 
        order1FormValidateSubmit: function(){
            order1FormSubmit();
        }
    }
});
