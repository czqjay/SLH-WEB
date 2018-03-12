/**
 * @author : liangrujian
 *
 * @date 2013-07-18
 *
 * */
$(function(){
   roleFormCRUD = {
        saveOrUpdate: function(){
        
            validateCallback($('#roleFormAdd')[0]||$('#roleFormUpdate')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				}else{
				     $.alert("保存成功！"); 
				}
                suntoolkit.destroyDialog();
				roleListCRUD.reloadData({roleName:$('#roleName').val()});
            })
        },
        
         saveToRoleAdd: function(){
        
            validateCallback($('#roleFormAddList')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				}else{
				     $.alert("保存成功！"); 
				}
                suntoolkit.destroyDialog('addRoles');
				userListCRUD.reloadRoleListData();
            })
        },
        
       roleFormValidateSubmit: function(){
            var roleName = $('#roleNameAdd').val();
            if(roleName=='null'){
             	$.alert("名称不能为 null");
             	return false;
            }
            roleFormSubmit();
        }
    }
});
