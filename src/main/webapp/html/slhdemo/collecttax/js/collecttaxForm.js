
jQuery(function(){
    collecttaxFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#collecttaxFormAdd')[0]||jQuery('#collecttaxFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#collecttaxFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					collecttaxListCRUD.reloadData();
					if( jQuery('#collecttaxFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						collecttaxListCRUD.addCollecttax($("#collecttaxListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#collecttaxFormAdd input[type=file]').length>0 || $('#collecttaxFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#collecttaxFormAdd')[0]||jQuery('#collecttaxFormUpdate')[0],null,collecttaxFormCRUD.ajaxSave)
        	}else{
        	 	collecttaxFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        collecttaxFormValidateSubmit: function(){
            collecttaxFormSubmit();
        }
    }
});
