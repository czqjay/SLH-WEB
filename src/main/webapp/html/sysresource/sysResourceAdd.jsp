<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<title>资源管理</title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type='text/javascript'
	src='${ctxPath}/html/sysresource/js/sysresourceForm.js'></script>

</head>
<script>
	$(document)
			.ready(
					function() {
						sysResourceItem = {
							obj:{},
							plhs : {},
							deptClick : function(dtnode, event) {
								log('deptClick')
								log(arguments)
						//		var activeNode = dy_reesourceAddTree.dynatree("getActiveNode");
								var sourceId = dtnode.data.key ;
								$.getJSON(window.WWWROOT + "/sysresource/getSysResource.action",{id:sourceId},function(data){ 
									if (data && data.success) {
										 
										for (var i in data.data) {  
									        $(' #sysResourceFormAdd input[name="'+i+'"]').val( data.data[i]);
									    }
										$('#sysResourceFormAdd #sourceType option[value= '+data.data.sourceType+' ]').selected();  
										$('#parents').trigger('selectReset',{id:data.data.parent}) 
										
									} else {
										$.alert("获取失败!");
									}
								});
								
								
								
								/* if(supid.length>0){
									sysResourceItemAddCRUD.searchSubResource(supid);
								}else{
									sysResourceItemAddCRUD.searchSubResource(dtnode.data.id);
								} */
							},
							lazyRead : function(dtnode) { //懒加载操作的拦截  一般不用覆盖
								DWZ.debug("lazyRead");
								DWZ.debug(dtnode);
								//onlazyread = "supForsubResource.lazyRead"
								return true;
							},
							postProcess : function(data, dataType) { //后处理 ajax结果的拦截处理
								DWZ.debug("postProcess");
								log(data)
								for (v in data) {
									if(data[v].sourceType=='2'){
										data[v].isFolder = true;
										data[v].isLazy = true;
										data[v].expand = false;
										data[v].key = data[v].id;
										data[v].title = data[v].moduleCaption;
										data[v].id = data[v].id;
									}else{
										data[v].isFolder = false; 
										data[v].isLazy = true;
										data[v].expand = false;
										data[v].key = data[v].id;
										data[v].title = data[v].moduleCaption; 
										data[v].id = data[v].id;
									}
								}
								return data;
							},
							treeContextMenu : {

								bindings:{
									addSysresource: function(t,m){
										log('addSysresource')
										$('#sysResourceFormAdd')[0].reset();
										$('#parents').trigger('selectReset',{id:0})
										sysResourceItem.obj=t; 
										if(t){
											if(t[0].dtnode.data.id){
												$('#parents').trigger('selectReset',{id:t[0].dtnode.data.id})
											}
										}
									}, 
									delSysresouce: function(t,m){
										log('delSysresouce')
										var id = t[0].dtnode.data.id;
										if (!confirm("是否要删除所选记录？")) {
											return;
										} 
										$.ajax({   
													type : "post", 
													url : window.WWWROOT + "/sysresource/delSysResource.action",
													data : {
														ids : id 
													},   
													dataType : 'json',
													success : function(data) { 
														if (data && data.success) {
															$.alert("已经删除成功。");
															t[0].dtnode.remove();
														} else {
															$.alert("删除失败，原因：" + data.msg);
														}
													},
													error : function(XMLHttpRequest, textStatus,
															errorThrown) {
														$.alert("删除失败，请稍后再次尝试删除！！");
													}
												});
										
										
									}
								},
								ctrSub:function(t,m){
									var id = t[0].dtnode.data.id
								} 
							},
							treednd:{
								onDrop: function(node, sourceNode, hitMode, ui, draggable) { 
							               log(arguments)
							               sysResourceItem.obj = node
							               var obj={};
							               obj.id=sourceNode.data.id
							               if(hitMode=="over"){ 
							            	   obj.parent=node.data.id
							               }else{ 
							            	   obj.parent=node.parent.data.id
							               }
							               if(obj.parent == obj.id){
							            	   return false; 
							               }
							           	$.getJSON(window.WWWROOT + "/sysresource/saveSysResource.action",obj,function(data){ 
											if (data && data.success) {
											  	sourceNode.move(node, hitMode); 
												return true;
											} else {
												$.alert("操作失败!");
											}
										});
							         
							                
							              } 
							}
						}
					

					});
</script>
<body>

	<style type="text/css">
label {
	color: #000000;
	display: inline;
	font-weight: bold;
	text-align: right;
	float: left
}
</style>


	<div class='row' style="height: 100%"> 
 
		<div class="col-xs-4"   style="height: 100%">  
			<div class="ui-widget-content ui-corner-all "
				style="height: 100%">
				<!-- 
   <button style='float:left;margin-bottom: 10px;'  class="ui-state-default ui-corner-all x8" onmouseover="$(this).addClass('ui-state-hover')" onmouseout="$(this).removeClass('ui-state-hover')" onclick="sysResourceItem.fillSels()">添加菜单</button>
 	 -->
				<span class='col-xs-12 textl ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix'  > 资源树</span>

				<sui:tree id="reesourceAddTree" selectmode="1"  clickFolderMode="3" contextMenus="treeCM" contextMenuConfig="sysResourceItem.treeContextMenu"
					postProcess="sysResourceItem.postProcess"  dnd ="sysResourceItem.treednd"
					onclick="sysResourceItem.deptClick"  	postData="root" 
					url="${ctxPath}/sysresourceItem/getTreeMenuOnlySysResource.action"></sui:tree>

			</div> 

		</div>


		<sui:panel title="资源添加" id='addsysResource' style="margin:0 auto;"
			styleClass="col-xs-8" isToggle="true" isFold="false">
			<sui:validate formId="sysResourceFormAdd"
				onclick="sysResourceFormSubmit"
				callback="sysResourceFormCRUD.saveOrUpdate"></sui:validate>
			<form id="sysResourceFormAdd" method="post"
				action='${ctxPath}/sysresource/saveSysResource.action'>
				<sui:field type="input">
					<sui:input title="资源名称：" size="x60" require="true">
						<input type="text" name='moduleCaption' maxlength="100" />
					</sui:input>
				</sui:field>

				<sui:field type="input">
					<sui:input title="上层资源：" size="x30">
						 <sui:select id="parents" name="parent"
							defaultoption="{id:'0',value:'--顶层--'}"
							dataUrl="${ctxPath}/sysresource/getParentSysourSelId.action"
							jsonreader="{'id':'id','value':'name'}"> 
						</sui:select>  
					  
					</sui:input>
				</sui:field> 

				<sui:field type="input">
					<sui:input title="资源说明：" size="x30">
						<input type="text" name='caption' maxlength="100" />
					</sui:input>

				</sui:field>

				<sui:field type="input">

					<sui:input title="资源入口：" size="x30" require="true">
						<input type="text" name='content' required="true" maxlength="200" />
					</sui:input>
				</sui:field>

				<sui:field type="input">
					<sui:input title="资源编码：" size="x30" require="true">
						<input type="text" name='code' required="true"
							remoteMessage='资源编码已经存在'
							remote='${ctxPath}/sysresource/isExists.action' maxlength="200" />
					</sui:input>
				</sui:field>

				<sui:field type="input">
					<sui:input title="资源类型：" size="x25">
						<select name="sourceType" id="sourceType">
							<option value="">--请选择--</option>
							<option value="0">页面</option>
							<option value="1">按钮</option>
							<option value="2">树菜单跟</option>
							<option value="3">树菜单节点</option>
							<option value="4">action</option> 
						</select>
					</sui:input>
				</sui:field>
				
				<sui:field type="input">

					<sui:input title="排序：" size="x30" require="true">
						<input type="text" name='orderNum' required="true" maxlength="200" />
					</sui:input>
				</sui:field>
				
				
	<input type="text"  style='display:none' id ='id' name="id"/> 
				<sui:field type="button" style="margin-left:10px">
					<sui:button title="保存"
						onclick='sysResourceFormCRUD.sysResourceFormValidateSubmit()'></sui:button>
					<sui:button title="取消" onclick="suntoolkit.destroyDialog()"></sui:button>
				</sui:field>

			</form>
		</sui:panel>
	</div>
</body>
</html>
