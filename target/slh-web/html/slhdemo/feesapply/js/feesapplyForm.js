
jQuery(function(){
    feesapplyFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#feesapplyFormAdd')[0]||jQuery('#feesapplyFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#feesapplyFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					feesapplyListCRUD.reloadData();
					if( jQuery('#feesapplyFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						feesapplyListCRUD.addFeesapply($("#feesapplyListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#feesapplyFormAdd input[type=file]').length>0 || $('#feesapplyFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#feesapplyFormAdd')[0]||jQuery('#feesapplyFormUpdate')[0],null,feesapplyFormCRUD.ajaxSave)
        	}else{
        	 	feesapplyFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        feesapplyFormValidateSubmit: function(){
            feesapplyFormSubmit();
        }
    }
});
