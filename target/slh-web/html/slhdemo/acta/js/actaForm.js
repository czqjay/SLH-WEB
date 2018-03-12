
jQuery(function(){
    actaFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#actaFormAdd')[0]||jQuery('#actaFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#actaFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					actaListCRUD.reloadData();
					if( jQuery('#actaFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						actaListCRUD.addActa($("#actaListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#actaFormAdd input[type=file]').length>0 || $('#actaFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#actaFormAdd')[0]||jQuery('#actaFormUpdate')[0],null,actaFormCRUD.ajaxSave)
        	}else{
        	 	actaFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        actaFormValidateSubmit: function(){
            actaFormSubmit();
        }
    }
});
