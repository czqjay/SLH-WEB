
jQuery(function(){
    trainingFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#trainingFormAdd')[0]||jQuery('#trainingFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#trainingFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					trainingListCRUD.reloadData();
					if( jQuery('#trainingFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						trainingListCRUD.addTraining($("#trainingListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#trainingFormAdd input[type=file]').length>0 || $('#trainingFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#trainingFormAdd')[0]||jQuery('#trainingFormUpdate')[0],null,trainingFormCRUD.ajaxSave)
        	}else{
        	 	trainingFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        trainingFormValidateSubmit: function(){
            trainingFormSubmit();
        }
    }
});
