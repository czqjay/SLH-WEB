
jQuery(function(){
    collecttaxlistFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#collecttaxlistFormAdd')[0]||jQuery('#collecttaxlistFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#collecttaxlistFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					collecttaxlistListCRUD.reloadData();
					if( jQuery('#collecttaxlistFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						collecttaxlistListCRUD.addCollecttaxlist($("#collecttaxlistListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#collecttaxlistFormAdd input[type=file]').length>0 || $('#collecttaxlistFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#collecttaxlistFormAdd')[0]||jQuery('#collecttaxlistFormUpdate')[0],null,collecttaxlistFormCRUD.ajaxSave)
        	}else{
        	 	collecttaxlistFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        collecttaxlistFormValidateSubmit: function(){
            collecttaxlistFormSubmit();
        }
    }
});
