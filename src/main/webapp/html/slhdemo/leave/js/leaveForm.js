
jQuery(function(){
    leaveFormCRUD = {
        saveOrUpdate: function(){
            validateCallback(jQuery('#leaveFormAdd')[0]||jQuery('#leaveFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
               
			 
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					 suntoolkit.destroyDialog();
					  	
					leaveListCRUD.reloadData();
					if($('#leaveFormAdd [slhFlag=closeFlag]').attr('checked')!='checked'){
						var closeFlag = 'false'; 
						leaveListCRUD.addLeave($("#leaveListGrid"),null,closeFlag);	
					}	
					 
				}else{
					 suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
			   		
				
            }) 
        }, 
        leaveFormValidateSubmit: function(){
            leaveFormSubmit();
        }
    }
});
