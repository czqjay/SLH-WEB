
jQuery(function(){
    fileFormCRUD = {
    	saveOrUpdate:function(addtionData){  
    	 	validateCallback(jQuery('#fileFormAdd')[0]||jQuery('#fileFormUpdate')[0], function(data){
				DWZ.debug(data);
	
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
				 jQuery.alert('保存成功!');	
				} 
              
				var ischecked = $('#fileFormAdd [slhFlag=closeFlag]').attr('checked')=='checked';
				
				if ($('#todolistDialog').length==0||$('#todolistDialog').is(':hidden')){
					suntoolkit.destroyDialog();  
					fileListCRUD.reloadData();
					if( jQuery('#fileFormAdd')[0] && !ischecked){ 
						var closeFlag = 'false';  
						fileListCRUD.addFile($("#fileListGrid"),null,closeFlag);	
					}	
				}else{ 
					suntoolkit.destroyDialog('todolistDialog'); 	
					processListCRUD.reloadData();	
				}
				
				
            },addtionData) 
    	
    	},
 
        fileFormValidateSubmit: function(){
            fileFormSubmit(); 
        }
    }
});
