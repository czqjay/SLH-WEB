
jQuery(function(){
    navimenuFormCRUD = {
    	saveOrUpdate:function(addtionData){  
    	 	validateCallback(jQuery('#navimenuFormAdd')[0]||jQuery('#navimenuFormUpdate')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					jQuery.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false; 
				}else{
					if(jQuery('#navimenuFormAdd')[0]){
						if(data.id){
							var treeNode = $("#navimenuAddTree").dynatree("getActiveNode"); 
							treeNode.addChild({  
							    id: data.id,
							    key: data.id,
							    title: data.title, 
							    tooltip: data.title,
							    isLazy : true 
							});
							$("#navimenuAddTree").dynatree("getTree").activateKey(data.id);	
						}
					}
				 jQuery.alert('保存成功!');	
				} 
               
				//	suntoolkit.destroyDialog();  
				navimenuListCRUD.reloadData(); 
            },addtionData) 
    	
    	},
         
        navimenuFormValidateSubmit: function(){
            navimenuFormSubmit();
        }
    }
});
