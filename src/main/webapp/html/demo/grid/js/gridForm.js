
jQuery(function(){
    gridFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#gridFormAdd')[0]||jQuery('#gridFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#gridFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					gridListCRUD.reloadData();
					if( jQuery('#gridFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						gridListCRUD.addGrid($("#gridListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#gridFormAdd input[type=file]').length>0 || $('#gridFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#gridFormAdd')[0]||jQuery('#gridFormUpdate')[0],null,gridFormCRUD.ajaxSave)
        	}else{
        	 	gridFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        gridFormValidateSubmit: function(){
            gridFormSubmit();
        }
    }
});
