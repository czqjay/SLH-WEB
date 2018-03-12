/**
 * @author : liangrujian
 *
 * @date 2013-07-19
 *
 * */
$(function(){
   roleUpdateCRUD = {
        saveOrUpdate: function(){
        
            validateCallback($('#roleupdate')[0], function(data){
				DWZ.debug(data);
				if(!data.success){
					$.alert("保存失败<br>"+data.msg?data.msg:'');	
					return false;
				} 
                suntoolkit.destroyDialog('editRole');
				roleListCRUD.reloadData({roleName:$('#roleName').val()});
            })
        },
       roleSubmit: function(){
        var roleName = $('#roleNameAdd').val();
            if(roleName=='null'){
             	$.alert("名称不能为 null");
             	return false;
            }
           roleFormSubmit();
        }
    }
});
