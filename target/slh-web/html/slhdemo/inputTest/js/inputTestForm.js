
jQuery(function(){
    inputTestFormCRUD = {
    	ajaxSave:function(addtionData){  
    	 	validateCallback(jQuery('#inputTestFormAdd')[0]||jQuery('#inputTestFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#inputTestFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					inputTestListCRUD.reloadData();
					if( jQuery('#inputTestFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						inputTestListCRUD.addInputTest($("#inputTestListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        saveOrUpdate: function(){
         
        	if($('#inputTestFormAdd input[type=file]').length>0 || $('#inputTestFormUpdate input[type=file]').length>0){
        		jQuery.ajaxFileUpload(jQuery('#inputTestFormAdd')[0]||jQuery('#inputTestFormUpdate')[0],null,inputTestFormCRUD.ajaxSave)
        	}else{
        	 	inputTestFormCRUD.ajaxSave();
        	} 
        	
        
           
        }, 
        inputTestFormValidateSubmit: function(){
            inputTestFormSubmit();
        }
    }
});
