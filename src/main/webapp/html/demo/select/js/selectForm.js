
jQuery(function(){
    selectFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#selectFormAdd')[0]||jQuery('#selectFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#selectFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					selectListCRUD.reloadData();
					if( jQuery('#selectFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						selectListCRUD.addSelect($("#selectListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#selectFormAdd input[type=file]').length>0 || $('#selectFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#selectFormAdd')[0]||jQuery('#selectFormUpdate')[0],null,selectFormCRUD.ajaxSave)
        	}else{
        	 	selectFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        selectFormValidateSubmit: function(){
            selectFormSubmit();
        }
    }
});
