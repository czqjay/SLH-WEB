<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="/sunittag" prefix="sui"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>

<title>菜单表添加</title>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type='text/javascript'
	src='${ctxPath}/html/navimenu/js/navimenuForm.js'></script>

</head>
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

<script>
	$(document)
			.ready(
					function() {
						navimenu = {
							obj:{},
							plhs : {},
							deptClick : function(dtnode, event) {
								log('deptClick')
								log(arguments)  
								var activeNode = dy_navimenuAddTree.dynatree("getActiveNode");
								 var navimenuId = dtnode.data.key ;
								 jQuery.ajax({
									  dataType: "json",
									  url: window.WWWROOT + "/navimenu/getNaviMenu.action", 
									  async :false,
									  data:{id:navimenuId},
									  success: function(data){
											if (data && data.success) {
												for (var i in data.data) { 
											        $(' #navimenuFormAdd input[name="'+i+'"]').val( data.data[i]);
											    }
												$('#sysresourceId').trigger('selectReset',{id:data.data.sysresourceId});
												
												if(data.data['parent']){
													$('#parentMenu').val(data.data['parent']['id']); 
													$('#disParent') .val(data.data['parent']['title']);
												} else{
													$('#parentMenu').val("");
													$('#disParent') .val(''); 
												}
											} else {
												$.alert("获取失败!");
											} 
										}
									});
								 
								/* $.getJSON(window.WWWROOT + "/navimenu/getNaviMenu.action",{id:navimenuId},function(data){ 
									if (data && data.success) {
										for (var i in data.data) { 
									        $(' #navimenuFormAdd input[name="'+i+'"]').val( data.data[i]);
									    }
										$('#sysresourceId').trigger('selectReset',{id:data.data.sysresourceId});
										
										if(data.data['parent']){
											$('#parentMenu').val(data.data['parent']['id']); 
											$('#disParent') .val(data.data['parent']['title']);
										} else{
											$('#parentMenu').val("");
											$('#disParent') .val('');
										}
									} else {
										$.alert("获取失败!");
									} 
								}); */
								
								
								
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
										data[v].isFolder = false; 
										data[v].isLazy = true;
										data[v].expand = false;
										data[v].key = data[v].id;
										data[v].title = data[v].title; 
										data[v].id = data[v].id; 
								}
								return data;
							},
							treeContextMenu : {

								bindings:{
									addSysresource: function(t,m){ 
										log('addSysresource')
										t[0].dtnode.tree.activateKey(t[0].dtnode.data.id)
										$('#navimenuFormAdd')[0].reset(); 
										$('#resourceId').trigger('selectReset')
										$('#id').val(null);
										$('#parentMenu').val(t[0].dtnode.data.id);
										$('#disParent') .val(t[0].dtnode.data.title);
										
										
									}, 
									delSysresouce: function(node,m){
										log('delSysresouce')  
										log(arguments) 
										 	$.getJSON(window.WWWROOT + "/navimenu/delNavimenu.action",obj,function(data){ 
											if (data && data.success) {
												node[0].dtnode.remove();
												return true;
											} else {
												$.alert("操作失败!");
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
							             
							         
							                
							              } 
							}
						}
					

					});
</script>



<div class='row' style="height: 100%"> 
 
		<div class="col-xs-4"   style="height: 100%">  
			<div class="ui-widget-content ui-corner-all " 
				style="height: 100%">
				<!-- 
   <button style='float:left;margin-bottom: 10px;'  class="ui-state-default ui-corner-all x8" onmouseover="$(this).addClass('ui-state-hover')" onmouseout="$(this).removeClass('ui-state-hover')" onclick="sysResourceItem.fillSels()">添加菜单</button>
 	 -->
				<span class='col-xs-12 textl ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix'  > 资源树</span>

				<sui:tree id="navimenuAddTree" selectmode="1"  clickFolderMode="3" 
				contextMenus="treeCM" 
				contextMenuConfig="navimenu.treeContextMenu"
					postProcess="navimenu.postProcess"  dnd ="navimenu.treednd"
					onactivate="navimenu.deptClick"  	 
					url="${ctxPath}/navimenu/getNodesById.action"></sui:tree> 

			</div> 

		</div>




	<sui:panel title="菜单表添加" id='navimenuAdd'
		style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
		<sui:validate formId="navimenuFormAdd" onclick="navimenuFormSubmit"
			callback="navimenuFormCRUD.saveOrUpdate"></sui:validate>
		<form id="navimenuFormAdd" method="post"
			action='${ctxPath}/navimenu/navimenuSave.action'>





			<sui:field type="input">
				<sui:input title="父菜单：" size="x3">
					<input type="text"  id ='disParent' disabled='disabled' 	/> 
				</sui:input>
			</sui:field>
			
			<sui:field type="input">
				<sui:input title="菜单名称：" size="x30">
					<input letterNumberChinese='1' type="text" name='title' id="title"
						maxlength='100' />
				</sui:input>

 

				<sui:input title="对应资源：" size="x30">
					<sui:select id="sysresourceId" name='sysresourceId'
						defaultoption="[{'id':'','value':'请选择'}]"
						dataUrl="${ctxPath}/sysresource/getParentSysourSelId.action?optionId=id&optionName=name"
						jsonreader="{'id':'id','value':'name'}">
					</sui:select>
				</sui:input>
</sui:field>
 
<sui:field type="input">
				<sui:input title="remark：" size="x3">
					<textarea rows="5" name='remark' id="remark" maxlength='200'>					</textarea>
				</sui:input>

			</sui:field>


			<sui:field type="button" style="margin-left:10px">
				<input type='checkbox' slhFlag='closeFlag'
					${  param.closeFlag=='false'?'':'checked=1'  } title='保存后关闭窗口'></input> 
				<sui:button title="保存"
					onclick='navimenuFormCRUD.navimenuFormValidateSubmit()'></sui:button>
				<sui:button title="取消" onclick="suntoolkit.destroyDialog(this)"></sui:button>
			</sui:field>
<input type="hidden" id="parentMenu" name="parentMenu"  />
<input type="hidden" id="id" name="id"  />
		</form>
	</sui:panel>
</div>
</body>
</html>
