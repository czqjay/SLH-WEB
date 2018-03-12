<%@ tag pageEncoding="UTF-8"%>
<%@ tag
	import="java.util.*,net.sf.json.JSONArray,net.sf.json.JSONObject"%>
<%@tag import="org.apache.commons.lang.StringUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--tree 控件 , 基于 jquery.dynatree.js $Version: 1.2.0_rc1$--%>
<%@ attribute name="id" type="java.lang.String" required="true"%>
<%--tree id --%>
<%@ attribute name="height" type="java.lang.String" required="false"%>
<%--tree 高度 --%>
<%@ attribute name="width" type="java.lang.String" required="false"%>
<%--tree 宽度 --%>
<%@ attribute name="buttons" type="java.lang.String" required="false"%><%--tree 自定义面板的按钮 --%>
<%@ attribute name="checkbox" type="java.lang.String" required="false"%><%--tree节点是否显示checkbox--%>
<%@ attribute name="selectmode" type="Integer" required="false"%>
<%--tree 的选中模式  1.为单选2.为多选3.继承式的多选--%>
<%@ attribute name="checkboxclass" type="java.lang.String"
	required="false"%><%--checkbox的样式类，可以是checkbox，也可以是radio--%>
<%@ attribute name="onclick" type="java.lang.String" required="false"%><%--拦截树的点击事件--%>
<%@ attribute name="url" type="java.lang.String" required="false"%>
<%--  数据源  --%>
<%@ attribute name="onselect" type="java.lang.String" required="false"%>
<%--拦截树的选择事件--%>
<%@ attribute name="onactivate" type="java.lang.String" required="false"%>
<%--拦截树的激活事件--%>
<%@ attribute name="onlazyread" type="java.lang.String" required="false"%>
<%--拦截树的懒加载事件--%>
<%@ attribute name="ondeactivate" type="java.lang.String"
	required="false"%>
<%--拦截树的失去激活事件--%>
<%@ attribute name="onexpand" type="java.lang.String" required="false"%>
<%--拦截树展开事件--%>
<%@ attribute name="rootid" type="java.lang.String" required="false"%>
<%-- 树的key属性--%>

<%@ attribute name="contextMenus" type="java.lang.String"
	required="false"%>
<%-- 右键菜单插件,尚未测试--%>
<%@ attribute name="contextMenuClick" type="java.lang.String"
	required="false"%>
<%-- 树的右键事件,尚未测试--%>
<%@ attribute name="contextMenuConfig" type="java.lang.String"
	required="false"%>
<%-- 树的右键事件配置,尚未测试--%>



<%@ attribute name="postProcess" type="java.lang.String"
	required="false"%>
<%-- 树得到数据时的预处理方法 --%>
<%@ attribute name="onDblClick" type="java.lang.String" required="false"%>
<%--拦截双击事件--%>
<%@ attribute name="onCreate" type="java.lang.String" required="false"%>
<%--创建node事件--%>

<%@ attribute name="postData" type="java.lang.String" required="false"%>
<%-- 获取ajax数据时的data属性  --%>

<%@ attribute name="styleClass" type="java.lang.String" required="false"%>
<%@ attribute name="clickFolderMode" type="java.lang.Integer"
	required="false"%>

<%@ attribute name="dnd" type="java.lang.String" required="false"%>
<%--拖动事件--%>


<%
	Boolean isLazy = null;
	if (rootid == null)
		rootid = "";
	if (StringUtils.isBlank(checkbox))
		checkbox = "false";

	if (url == null)
		isLazy = true;

	//1.为单选2.为多选3.继承式的多选
	if (selectmode == null)
		selectmode = 3;
%>

<c:if test="${empty clickFolderMode}">
	<c:set var="clickFolderMode" value="2"></c:set>
</c:if>


<script type='text/javascript'>
	
var TreeTag_${id} = ({
newNode : function(node){
	var tnode = {};   
	tnode = node;
	if(tnode.isleaf=="0")
		tnode.isFolder = true;
	else 
		tnode.isFolder = false;
	tnode.isLazy = false;
	tnode.expand = true;
    return tnode; 
},


createDyNodes : function(url, parentid, newnodefnc) {
	return {
    	type : "post",
        url: url,
        dataType:"json", 
        data: {id:parentid,postData:'${postData}'},
        <c:if test="${!empty postProcess}">
        	postProcess:${postProcess},
        </c:if>
        cache: false 
    }      
} 
});
 
 hadLoadTree_${id} = false;  
$(document).ready(function(){ 

    if (hadLoadTree_${id}) {
        return;
    } 
    dy_${id} = $('#${id}').dynatree({
        key: '${rootid}', 
        keyborad: true, 
        selectMode: 3,  
        clickFolderMode:  ${clickFolderMode},      
        checkbox: <%=checkbox%>,
        initAjax: TreeTag_${id}.createDyNodes('${url}', '${postData}'),
        onLazyRead: function(dtnode){
            dtnode.appendAjax(TreeTag_${id}.createDyNodes('${url}', dtnode.data.id));
        },
        <c:if test="${!empty selectmode}">
         selectMode:${selectmode},    
        </c:if>
        <c:if test="${!empty onDblClick}">
         onDblClick:${onDblClick},   
        </c:if>  
        <c:if test="${!empty onlazyread}">
         onLazyRead:${onlazyread},  
        </c:if> 
        <c:if test="${!empty onactivate}">
         onActivate:${onactivate},  
        </c:if>
         <c:if test="${!empty onselect}">
         onSelect:${onselect},  
        </c:if>
        <c:if test="${!empty ondeactivate}">
         onDeactivate:${ondeactivate},  
        </c:if>
        <c:if test="${!empty onexpand}">
         onExpand:${onexpand},  
        </c:if>
        
         <c:if test="${!empty onclick}">
         	onClick:${onclick}, 
         </c:if>
        onCreate: function(node, span){
         <c:if test="${!empty onCreate}">
        	 ${onCreate}(arguments);
          </c:if> 
          
     	 <c:if test="${!empty contextMenus}">
     		bindContextMenu(node); 
     	</c:if>
	       
      	},
     	 <c:if test="${!empty dnd}">
     	dnd: $.extend({
            onDragStart: function(node) {
        //        logMsg("tree.onDragStart(%o)", node);
                return true;
              }, 
              onDragStop: function(node) {
          //      logMsg("tree.onDragStop(%o)", node); 
              },
              autoExpandMS: 1000,
              preventVoidMoves: true, // Prevent dropping nodes 'before self', etc. 
              onDragEnter: function(node, sourceNode) {
         //       logMsg("tree.onDragEnter(%o, %o)", node, sourceNode);
                return true;
              },
              onDragOver: function(node, sourceNode, hitMode) {
          //      logMsg("tree.onDragOver(%o, %o, %o)", node, sourceNode, hitMode);
                if(node.isDescendantOf(sourceNode)){
                  return false;
                }
              },
              onDrop: function(node, sourceNode, hitMode, ui, draggable) { 
          //      logMsg("tree.onDrop(%o, %o, %s)", node, sourceNode, hitMode);
                sourceNode.move(node, hitMode);
              }, 
              onDragLeave: function(node, sourceNode) {
                //logMsg("tree.onDragLeave(%o, %o)", node, sourceNode);
              }
             },${dnd}),
        
 		</c:if>  
 	   cookieId: 'ui-dynatree-DirTree', 
       cookieId: 'ui-dynatree-DirTree-',
       classNames: {},
     
    });
    hadLoadTree_${id} = true; 
  
    
}); 

<c:if test="${!empty contextMenus}">

	function bindContextMenu(node) {
	    // Add context menu to this node:
	//    $(span).contextMenu({menu: "Menu_${id}"}, function(action, el, pos) {
	      // The event was bound to the <span> tag, but the node object
	      // is stored in the parent <li> tag
//	      var node = $.ui.dynatree.getNode(el); 
	//      ${contextMenuClick}(action, node); 
	//    }); 
		$(node.li).contextMenu('${contextMenus}', 	${contextMenuConfig}); 
	
	
	  }; 
</c:if> 

	<c:if test="${!empty buttons}">
		<%List authorityButtonListForTree = (List) ((javax.servlet.jsp.PageContext) jspContext).getSession()
						.getAttribute("authorityButtonList");
				JSONArray jsonbtnArray = JSONArray.fromObject("[" + buttons.replaceAll("'", "\"") + "]");
				for (int i = 0; i < jsonbtnArray.size(); i++) {
					JSONObject json = jsonbtnArray.getJSONObject(i);
					if (json.containsKey("operator")) {
						String operator = json.getString("operator");
						if (authorityButtonListForTree.contains(operator)) {%>
						var jsonbtns= eval([${buttons}]); 
						var  json=jsonbtns[<%=i%>];
						var  btn = $('#template').clone(); 
						btn.removeAttr('style'); 
						if(json.onclick) btn.attr('onclick',json.onclick); 
						if(json.id) btn.attr('id',json.id); 
						if(json.name) btn.attr('name',json.name);
						if(json.title) btn.attr('title',json.title);
						if(json['class']) btn.attr('class',json['class']);
						if(json.onmouseout) btn.attr('onmouseout',json.onmouseout);
						if(json.onmouseover) btn.attr('onmouseover',json.onmouseover);
						$(btn.children('span')[0]).attr('class',json.iconClass)
						$(btn.children('span')[1]).html(json.name)
						btn.appendTo('#${id}_btns')  
						$('<td>').appendTo('#${id}_btns').append(btn)
					<%}%> 
		<%} else {%> 
						var jsonbtns= eval([${buttons}]);
						var  json=jsonbtns[<%=i%>];
						var  btn = $('#template').clone();
						btn.removeAttr('style'); 
					    if(json.onclick) btn.attr('onclick',json.onclick);
						if(json.id) btn.attr('id',json.id); 
						if(json.name) btn.attr('name',json.name);
						if(json.title) btn.attr('title',json.title);
						if(json['class']) btn.attr('class',json['class']);
						if(json.onmouseout) btn.attr('onmouseout',json.onmouseout);
						if(json.onmouseover) btn.attr('onmouseover',json.onmouseover);
						$(btn.children('span')[0]).attr('class',json.iconClass)
						$(btn.children('span')[1]).html(json.name)
						btn.appendTo('#${id}_btns')
						$('<td>').appendTo('#${id}_btns').append(btn)  
				<%}
				}%>
		$('#${id}_btns_table').show();  
	</c:if>
</script>



<table id='${id}_btns_table'
	class='ui-state-default ui-th-column ui-th-ltr'
	style='width: 100%; display: none'>
	<tbody>
		<tr id='${id}_btns' style='float: left'>

			<td>
				<button title='' id='template' style='display: none'
					class='ui-state-default ui-corner-all x5'
					onmouseout="$(this).removeClass('ui-state-hover')"
					onmouseover="$(this).addClass('ui-state-hover')">
					<span class='ui-icon ui-icon-plus'></span> <span></span>
				</button>
			</td>

		</tr>
	</tbody>
</table>

<div id='${id}' class="${styleClass}"
	class='ui-accordion-content ui-helper-reset ui-widget-content ui-corner-all ui-accordion-content-active'
	style='text-align: left; height: 99%; width: 98%; padding: 0; margin: 0; overflow: auto'>
</div>

<script type="text/javascript">
	//调整高度
	if($('#${id}_btns_table').height()>5)   
		$('#${id}').height($('#${id}').height()-$('#${id}_btns_table').height());
	  
</script>


