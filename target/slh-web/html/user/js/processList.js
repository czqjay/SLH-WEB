/**
 * @author : 梁汝健
 * @date : 2014-03-10
 * @Description：管理用户记录增、删、改、查等操作js
 * */
$(function(){
    processListCRUD = {
        orgId: "",
        orgName: "",
        orgType: false,
        grid: {},
        defaultPostData: {},
		processName:'',
        addprocess: function(){ //用户信息新增
            suntoolkit.openOptions({
                title: '用户信息新增',
                width: 600,
                height: 450,
                resizable: false,
                zIndex: 'auto'
            }, window.WWWROOT + "/html/process/processAdd.jsp");
        },
        editprocess: function(grid, rowData){ //用户信息修改
            DWZ.debug(grid);
            DWZ.debug(rowData);
            var keyID = rowData.id;
            suntoolkit.openOptions({
                title: '用户信息修改',
                width: 600,
                height: 450,
                resizable: false,
                zIndex: 'auto'
            }, window.WWWROOT + "/process/processUpdate.action" + "?id=" + keyID);
        },
        deleteprocess: function(grid, ids){//用户信息删除
            //var processIds = processListCRUD.grid.jqGrid("getGridParam", "selarrrow");//获取当前选中的用户记录id集合（以,号隔开）
            if (!confirm("是否要删除所选记录？(共" + ids.split(',').length + "条)")) {
                return;
            }
            $.ajax({
                type: "post",
                url: window.WWWROOT + "/process/processDelete.action",
                data: {
                    ids: ids
                },
                dataType: 'json',
                success: function(data){
                    if (data && data.success) {
                        $.alert("已经删除成功。");
                        processListCRUD.reloadData();
                    }
                    else {
                        $.alert("删除失败，原因：" + data.msg);
                    }
                },
                error: function(XMLHttpRequest, textStatus, errorThrown){
                    $.alert("删除失败，请稍后再次尝试删除！！");
                }
            });
        },
        
        reloadData: function(postDatas){ //加载grid列表方法
        	
        	
        	if("undefined" != typeof actListCB){   // actList.js的回调 刷新内容
        		actListCB.fire();
        	}
        	
            if (postDatas) {
                for (v in postDatas) {  
                    this.defaultPostData[v] = "";
                }
            }
            else {
                postDatas = this.defaultPostData;
            }
            $("#processListGrid").jqGrid("setGridParam", {
                postData: postDatas
            }).trigger("reloadGrid");
        },
        updatePasw: function(accountName){
            suntoolkit.openOptions({
                title: '修改密码',
                width: 350,
                height: 200,
                resizable: false,
                zIndex: 'auto'
            }, window.WWWROOT + "/html/process/processPaswUpdate.jsp?accountName=" + accountName);
        },
        formatUpdatePaw: function(val, cell, colpos, rwdat, _act){
            var accountName = colpos.accountName;
            return "<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=processListCRUD.updatePasw('" + accountName + "');>&nbsp;修改密码&nbsp;</span>";
        },
        formatOpenprocessSource: function(val, cell, colpos, rwdat, _act){ //格式化用户数据来源字段列
            return val == 0 ? '本地' : '同步';
        },
        formatOpenIsOpen: function(val, cell, colpos, rwdat, _act){ //格式化用户记录是否开启字段列
            return val == 0 ? '开启' : '关闭';
        },
        
        formatOpenDataType: function(val, cell, colpos, rwdat, _act){ //格式化用户类型字段列
            var str = "";
            if (val == 0) {
                str = '普通用户';
            }
            else 
                if (val == 1) {
                    str = '业务管理员';
                }
                else {
                    str = '考评管理员';
                }
            return str;
        },
        
        getGrid: function(grid){
            processListCRUD.grid = grid;
            grid.jqGrid("getGridParam", "selarrrow");
        },
        setGrid: function(grid){
            processListCRUD.grid = grid;
        },
        buttonHandle: function(val, cell, colpos, rwdat, _act){
            var keyID = colpos.id;
			var taskName = colpos.taskName;
			DWZ.debug(arguments) 
			DWZ.debug(colpos)  
			
            var text = colpos.isAssignee ? "办理" : "签收"; 
			var clickFunction=colpos.isAssignee ? "complete" : "claim";; 
            var url = "<span id='" + keyID + "' class='gridButtonbg' onclick=processListCRUD."+clickFunction+"('" + keyID + "','"+taskName+"');>&nbsp;" + text + "&nbsp;</span>";
            return url;
        }, 
		claim: function(taskID){
			
			$.ajax({
                type: "post", 
                url: window.WWWROOT + "/deploy/claim.action",
                data: {
                    taskId: taskID
                },
                dataType: 'json',
                success: function(data){
                    if (data && data.success) {
                        $.alert("签收成功。");
                        processListCRUD.reloadData(); 
                    }
                    else {
                        $.alert("签收失败，原因：" + data.msg); 
                    }
                },
                error: function(XMLHttpRequest, textStatus, errorThrown){
                    $.alert("签收失败，请稍后再次尝试签收 ！！");
                }
            });
			
		},   
		complete : function(taskID,taskName ){
			
			suntoolkit.openOptions({title:'流程办理  [ '+taskName+' ]', style:'overflow:auto',width:'80%',height:650,scrollbar:'yes',resizable:false,zIndex:'auto'},window.WWWROOT + "/deploy/businessView.action" + "?taskId="+taskID,'todolistDialog'); 
		},
		 
		traceHandle : function(val, cell, colpos, rwdat, _act){
			var pid= colpos.processID; 
			var pdid= colpos.processDefID;  
			var opts={};
			opts.pid=pid;
			opts.pdid=pdid;
			var url="<a id='"+pid+"'  pid="+pid+" pdid="+pdid+"  onclick=javascrit:processListCRUD.graphTrace.call(this)  title='点击查看当前节点所在流程'  href='#'>"+val+"</a>"; 
			return url;  
        },  
        
        
         
        graphTrace: function(options){
        
            var _defaults = {
                srcEle: this,
                pid: $(this).attr('pid'), 
                pdid: $(this).attr('pdid')
            };
            var opts = $.extend(true, _defaults, options);
            DWZ.debug(opts)
			 DWZ.debug(this)
            // 处理使用js跟踪当前节点坐标错乱问题
            $('#changeImg').live('click', function(){
                $('#workflowTraceDialog').dialog('close');
                if ($('#imgDialog').length > 0) {
                    $('#imgDialog').remove();
                }
                $('<div/>', {
                    'id': 'imgDialog',
                    title: '此对话框显示的图片是由引擎自动生成的，并用红色标记当前的节点<button id="diagram-viewer">Diagram-Viewer</button>',
                    html: "<img src='" + ctx + '/workflow/process/trace/auto/' + opts.pid + "' />"
                }).appendTo('body').dialog({
                    modal: true,
                    resizable: false,
                    dragable: false,
                    width: document.documentElement.clientWidth * 0.95,
                    height: document.documentElement.clientHeight * 0.95
                });
            });
            
            /*
             用官方开发的Diagram-Viewer跟踪
             */
            $('#diagram-viewer').live('click', function(){
                $('#workflowTraceDialog').dialog('close');
                
                if ($('#imgDialog').length > 0) {
                    $('#imgDialog').remove();
                }
                
                var url = ctx + '/diagram-viewer/index.html?processDefinitionId=' + opts.pdid + '&processInstanceId=' + opts.pid;
                
                $('<div/>', {
                    'id': 'imgDialog',
                    title: '此对话框显示的图片是由引擎自动生成的，并用红色标记当前的节点',
                    html: '<iframe src="' + url + '" width="100%" height="' + document.documentElement.clientHeight * 0.90 + '" />'
                }).appendTo('body').dialog({
                    modal: true,
                    resizable: false,
                    dragable: false,
                    width: document.documentElement.clientWidth * 0.95,
                    height: document.documentElement.clientHeight * 0.95
                });
            });
            
            // 获取图片资源
            var imageUrl = window.WWWROOT  + "/deploy/resource/process-instance.action?pid=" + opts.pid + "&type=image";
            $.getJSON(window.WWWROOT  + '/deploy/process/trace.action?pid=' + opts.pid, function(infos){
  
				$.fn.qtip=10000;
                var positionHtml = "";
                
                // 生成图片
                var varsArray = new Array();
                $.each(infos, function(i, v){
                    var $positionDiv = $('<div/>', {
                        'class': 'activity-attr'
                    }).css({
                        position: 'absolute',
                        left: (v.x - 1),
                        top: (v.y - 1),
                        width: (v.width - 2),
                        height: (v.height - 2),
                        backgroundColor: 'black',
                        opacity: 0,
                        zIndex: $.fn.qtip.zindex - 1
                    });
                    
                    // 节点边框
                    var $border = $('<div/>', {
                        'class': 'activity-attr-border'
                    }).css({
                        position: 'absolute',
                        left: (v.x - 1),
                        top: (v.y - 1),
                        width: (v.width - 4),
                        height: (v.height - 3),
                        zIndex: $.fn.qtip.zindex - 2
                    });
                    
                    if (v.currentActiviti) {
                        $border.addClass('ui-corner-all-12').css({
                            border: '3px solid red'
                        });
                    }
                    positionHtml += $positionDiv.outerHTML() + $border.outerHTML();
                    varsArray[varsArray.length] = v.vars;
                });
                
                if ($('#workflowTraceDialog').length == 0) {
                    $('<div/>', {
                        id: 'workflowTraceDialog',
                        title: '查看流程（按ESC键可以关闭）<button id="changeImg">如果坐标错乱请点击这里</button><button id="diagram-viewer">Diagram-Viewer</button>',
                        html: "<div><img src='" + imageUrl + "' style='position:absolute; left: 25px;top: 65px;;' />" +
                        "<div id='processImageBorder'>" +
                        positionHtml +
                        "</div>" +
                        "</div>"
                    }).appendTo('body');
                }
                else {
                    $('#workflowTraceDialog img').attr('src', imageUrl);
                    $('#workflowTraceDialog img').attr( 'style',"left: 25px;top: 65px;") 
                    $('#workflowTraceDialog #processImageBorder').html(positionHtml);
                }
                 
                // 设置每个节点的data
                $('#workflowTraceDialog .activity-attr').each(function(i, v){
                    $(this).data('vars', varsArray[i]);
                });
                
                // 打开对话框
                $('#workflowTraceDialog').dialog({
                    modal: true,
                    resizable: false,
                    dragable: false,
                    open: function(){
                        $('#workflowTraceDialog').dialog('option', 'title', '查看流程（按ESC键可以关闭）<button id="changeImg">如果坐标错乱请点击这里</button><button id="diagram-viewer">Diagram-Viewer</button>');
                        $('#workflowTraceDialog').css('padding', '0.2em');
                        $('#workflowTraceDialog .ui-accordion-content').css('padding', '0.2em').height($('#workflowTraceDialog').height() - 75);
                        
                        // 此处用于显示每个节点的信息，如果不需要可以删除
						/**
                        $('.activity-attr').qtip({
							
                            content: function(){
                                var vars = $(this).data('vars');
                                var tipContent = "<table class='need-border'>";
                                $.each(vars, function(varKey, varValue){
                                    if (varValue) {
                                        tipContent += "<tr><td class='label'>" + varKey + "</td><td>" + varValue + "<td/></tr>";
                                    }
                                });
                                tipContent += "</table>";
                                return tipContent;
                            },
                            position: {
                                at: 'bottom left',
                                adjust: {
                                    x: 3
                                }
                            }
                        });
                        // end qtip
                         * 
                         */
                    },
                    close: function(){
                        $('#workflowTraceDialog').remove();
                    },
                    width: document.documentElement.clientWidth * 0.95,
                    height: document.documentElement.clientHeight * 0.95
                });
                
            });
        }
        
        
        
    };
    
    
    
    
});
