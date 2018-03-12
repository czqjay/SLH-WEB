/**
 * @author : shanjizhou
 * 
 * @date 2013-06-20
 * 
 */
$(function(){
   sysResourceFormCRUD = {
        saveOrUpdate: function(){
        
            validateCallback($('#sysResourceFormAdd')[0]||$('#sysResourceFormUpdate')[0], function(data){
				DWZ.debug(data);
		
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				} 
				if(data.sysResource){ 
					var vo = data.sysResource; 
					var p ;
					if(vo.parent!='0')
						 p = $("#reesourceAddTree").dynatree("getTree").getNodeByKey(vo.parent);
					else 
						 p=$("#reesourceAddTree").dynatree("getRoot");
					var o = {
							  title: vo.moduleCaption,
							  isFolder : vo.sourceType=='2'?true:false, 
							  isLazy :true,
							  expand : false,
							 key : vo.id, 
							 id:vo.id
							};
					
					 var node =$("#reesourceAddTree").dynatree("getTree").getNodeByKey(vo.id);
					 if(node){ //如果node 已存在,先删除再加入
						 $("#reesourceAddTree").dynatree("getTree").getNodeByKey(vo.id).remove();
					 }
					p.addChild(o); 
				}
				
				
				$.alert("保存成功");	   
              // suntoolkit.destroyDialog();
				sysResourceListCRUD.reloadData();
            })
        },
       sysResourceFormValidateSubmit: function(){
            sysResourceFormSubmit();
        }
    }
});
