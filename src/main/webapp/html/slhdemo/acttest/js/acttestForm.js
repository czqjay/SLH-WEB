
jQuery(function(){
    acttestFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#acttestFormAdd')[0]||jQuery('#acttestFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#acttestFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					acttestListCRUD.reloadData();
					if( jQuery('#acttestFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						acttestListCRUD.addActtest($("#acttestListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#acttestFormAdd input[type=file]').length>0 || $('#acttestFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#acttestFormAdd')[0]||jQuery('#acttestFormUpdate')[0],null,acttestFormCRUD.ajaxSave)
        	}else{
        	 	acttestFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        acttestFormValidateSubmit: function(){
            acttestFormSubmit();
        }
    }
});
