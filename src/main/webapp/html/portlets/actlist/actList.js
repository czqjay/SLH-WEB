$(function() {
	actListCRUD = {
		orgId : "",
		reload:function(){
			$('#actportlet tr:gt(0)').remove();
			jQuery.ajax({
				type : "post", 
				url : window.WWWROOT +'/deploy/todoList.action?rows=5&&page=1',
				dataType : 'json',
				success : function(data) { 
					if(data.rows){ 
						for(v in data.rows){
								var d = data.rows[v];   
								var $tr  = $('<tr>').css('cursor', 'pointer' ); 
								var $td = $('<td>').addClass('col-xs-4').text(d.taskName);
								$tr.append($('<td>').addClass('col-xs-4').text(d.taskName));
								$tr.append($('<td>').addClass('col-xs-8').append(actListCRUD.buttonHandle(d)));
								$('#actportlet').append($tr);
						} 
					}
				},   
				error : function(XMLHttpRequest, textStatus,
						errorThrown) {
					log(arguments)
					jQuery.alert("获取portlet失败");
				} 
			}); 
		},
		buttonHandle : function(rowData) {
			var keyID = rowData.id;
			var taskName = rowData.taskName;
			var text = rowData.isAssignee ? "办理" : "签收";
			var clickFunction = rowData.isAssignee ? "complete" : "claim";
			;
			var url = "<span id='" + keyID
					+ "' class='gridButtonbg' onclick=actListCRUD."
					+ clickFunction + "('" + keyID + "','" + taskName
					+ "');>&nbsp;" + text + "&nbsp;</span>";
			return url;
		},
		claim : function(taskID) {
			$.ajax({
				type : "post",
				url : window.WWWROOT + "/deploy/claim.action",
				data : {
					taskId : taskID
				},
				dataType : 'json',
				success : function(data) {
					if (data && data.success) {
						$.alert("签收成功。");
						actListCRUD.reload();
					} else {
						$.alert("签收失败，原因：" + data.msg);
					}
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					$.alert("签收失败，请稍后再次尝试签收 ！！");
				}
			});
		},
		complete : function(taskID, taskName) {
			suntoolkit.openOptions({
				title : '流程办理  [ ' + taskName + ' ]',
				style : 'overflow:auto',
				width : '80%',
				height : 650,
				scrollbar : 'yes',
				resizable : false,
				zIndex : 'auto'
			}, window.WWWROOT + "/deploy/businessView.action" + "?taskId="
					+ taskID, 'todolistDialog');
			actListCB = $.Callbacks('once');
			actListCB.add(actListCRUD.reload)
			
		}
	}
});