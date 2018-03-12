
jQuery(function(){
    checkboxFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#checkboxFormAdd')[0]||jQuery('#checkboxFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#checkboxFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					checkboxListCRUD.reloadData();
					if( jQuery('#checkboxFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						checkboxListCRUD.addCheckbox($("#checkboxListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#checkboxFormAdd input[type=file]').length>0 || $('#checkboxFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#checkboxFormAdd')[0]||jQuery('#checkboxFormUpdate')[0],null,checkboxFormCRUD.ajaxSave)
        	}else{
        	 	checkboxFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        checkboxFormValidateSubmit: function(){
            checkboxFormSubmit();
        }
    }
});
