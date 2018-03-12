
jQuery(function(){
    testFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#testFormAdd')[0]||jQuery('#testFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#testFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					testListCRUD.reloadData();
					if( jQuery('#testFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						testListCRUD.addTest($("#testListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#testFormAdd input[type=file]').length>0 || $('#testFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#testFormAdd')[0]||jQuery('#testFormUpdate')[0],null,testFormCRUD.ajaxSave)
        	}else{
        	 	testFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        testFormValidateSubmit: function(){
            testFormSubmit();
        }
    }
});
