
jQuery(function(){
    traningworkerFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#traningworkerFormAdd')[0]||jQuery('#traningworkerFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#traningworkerFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					traningworkerListCRUD.reloadData();
					if( jQuery('#traningworkerFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						traningworkerListCRUD.addTraningworker($("#traningworkerListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#traningworkerFormAdd input[type=file]').length>0 || $('#traningworkerFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#traningworkerFormAdd')[0]||jQuery('#traningworkerFormUpdate')[0],null,traningworkerFormCRUD.ajaxSave)
        	}else{
        	 	traningworkerFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        traningworkerFormValidateSubmit: function(){
            traningworkerFormSubmit();
        }
    }
});
