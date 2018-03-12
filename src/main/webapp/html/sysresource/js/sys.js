/**
 * @author : shanjizhou
 *
 * @date 2013-06-20
 *
 * */
$(function(){
   sysCRUD = {
        saveOrUpdate: function(){
        
            validateCallback($('#sysupdate')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				} else{
				 $.alert('保存成功!');	
				}
                suntoolkit.destroyDialog();
				sysResourceListCRUD.reloadData();
            })
        },
       sysSubmit: function(){
            sysFormSubmit();
        }
    }
});
