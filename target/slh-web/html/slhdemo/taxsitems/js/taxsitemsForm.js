
jQuery(function(){
    taxsitemsFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#taxsitemsFormAdd')[0]||jQuery('#taxsitemsFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#taxsitemsFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					taxsitemsListCRUD.reloadData();
					if( jQuery('#taxsitemsFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						taxsitemsListCRUD.addTaxsitems($("#taxsitemsListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#taxsitemsFormAdd input[type=file]').length>0 || $('#taxsitemsFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#taxsitemsFormAdd')[0]||jQuery('#taxsitemsFormUpdate')[0],null,taxsitemsFormCRUD.ajaxSave)
        	}else{
        	 	taxsitemsFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        taxsitemsFormValidateSubmit: function(){
            taxsitemsFormSubmit();
        }
    }
});
