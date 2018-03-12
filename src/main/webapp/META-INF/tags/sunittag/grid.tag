<%@ tag pageEncoding="UTF-8"%>
<%@tag import="org.apache.commons.lang.StringUtils"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ tag import="net.sf.json.JSONArray,net.sf.json.JSONObject"%>
<%@ tag import="java.util.List"%>
<%@ attribute name="id" type="java.lang.String" required="true"%> <%-- 生成grid 控件 的id  --%>
<%@ attribute name="pageId" type="java.lang.String" required="true"%>  <%-- 生成grid 控件 的 分页条  --%>
<%@ attribute name="pkName" type="java.lang.String" required="true"%> <%-- grid 数据的 id ,一般指定为数据库表记录id  --%> 
<%@ attribute name="datatype" type="java.lang.String" required="false"%>   <%-- ajax 数据类型  --%>
<%@ attribute name="url" type="java.lang.String" required="false"%>  <%-- 数据提供者  --%>
<%@ attribute name="title" type="java.lang.String" required="false"%> <%-- 生成grid 控件 title  --%>
<%@ attribute name="height" type="java.lang.String" required="false"%> <%-- 生成grid 控件 的高度  --%>
<%@ attribute name="offsetHeight" type="java.lang.String" 	required="false"%>    <%-- 已废弃  --%>
<%@ attribute name="multiselect" type="Boolean" required="false"%>           <%-- 是否多选 --%>
<%@ attribute name="multiboxonly" type="Boolean" required="false"%>           <%-- 是否同是选中多个选中多个 --%>
<%@ attribute name="showRownumbers" type="Boolean" required="false"%>      <%-- 是否显示总行数  --%>
<%@ attribute name="onSelectRow" type="java.lang.String" 	required="false"%>  <%-- 行选择事件  --%>
<%@ attribute name="addCheck" type="java.lang.String" required="false"%>  <%-- add 事件时的验证方法,会在add方法前触发  --%> 
<%@ attribute name="addClick" type="java.lang.String" required="false"%> <%--  add 的click事件   --%>
<%@ attribute name="addOperator" type="java.lang.String"	required="false"%> <%--  add 按钮的资源code,对应于tb_sysresource中的code ,用于权限 --%>
<%@ attribute name="addTitle" type="java.lang.String"	required="false"%>   <%--  add 的文字  --%>
<%@ attribute name="editCheck" type="java.lang.String" required="false"%><%-- 同add --%>
<%@ attribute name="editClick" type="java.lang.String" required="false"%><%-- 同add --%>
<%@ attribute name="editOperator" type="java.lang.String"    	required="false"%> <%-- 同add --%>
<%@ attribute name="editTitle" type="java.lang.String"    	required="false"%> <%-- 同add --%>
<%@ attribute name="delCheck" type="java.lang.String" required="false"%>  <%-- 同add --%>
<%@ attribute name="delClick" type="java.lang.String" required="false"%>  <%-- 同add --%>
<%@ attribute name="delOperator" type="java.lang.String"       required="false"%>   <%-- 同add --%>
<%@ attribute name="delTitle" type="java.lang.String"       required="false"%>   <%-- 同add --%>
<%@ attribute name="otherButtons" type="java.lang.String"	required="false"%>     <%-- 自定义其他按钮 --%> 
<%@ attribute name="gridComplete" type="java.lang.String"	required="false"%>    <%--jqGrid 完成时的callback --%> 

<%@ attribute name="onready" type="java.lang.String" required="false"%>   <%--grid.tag 准备好时的callback, 不同之处在于 onready是标签本身的加载完成时--%> 

<%@ attribute name="subGridUrl" type="java.lang.String" required="false"%>     <%--已废弃  --%> 

<%@ attribute name="rowList" type="java.lang.String" required="false"%>      <%--单页可显示条数, args:数组对象  --%> 
<%@ attribute name="rownumber" type="java.lang.String" required="false"%>    <%--默认单页可显示条数, args: int  --%> 
<%@ attribute name="topPager" type="java.lang.String" required="false"%>   <%--分页条上置, args: boolean  --%> 

<%@ attribute name="cancelCheck" type="java.lang.String" required="false"%> <%-- 同add --%>
<%@ attribute name="cancelClick" type="java.lang.String" required="false"%><%-- 同add --%>
<%@ attribute name="cancelOperator" type="java.lang.String"%> <%-- 同add --%>
<%@ attribute name="saveCheck" type="java.lang.String" required="false"%><%-- 同add --%>
<%@ attribute name="saveClick" type="java.lang.String" required="false"%><%-- 同add --%>
<%@ attribute name="saveOperator" type="java.lang.String" required="false"%><%-- 同add --%>
<%@ attribute name="loadComplete" type="java.lang.String" required="false"%>    <%-- 加载数据完成时的callback --%> 
<%@ attribute name="beforeProcessing" type="java.lang.String" required="false"%>  <%-- 在grid处理之前的callback --%> 

<%@ attribute name="editable" type="java.lang.String" required="false"%>   <%-- 是否为可编辑,尚不完善,复杂业务不推荐使用 args: boolean --%>
<%@ attribute name="editableUrl" type="java.lang.String" required="false"%>   <%-- 当为可编辑时,数据的处理url --%>
<%@ attribute name="successFunc" type="java.lang.String" required="false"%>     <%--已废弃  --%> 
<%@ attribute name="formValidate" type="java.lang.String" required="false"%> <%-- 当为可编辑时,form数据的check方法 --%>


<%@ attribute name="defaultdblClick" type="java.lang.String" required="false"%> <%-- 默认双击方法与编辑方法相同 --%>

<%@ attribute name="shrinkToFit" type="java.lang.String" required="false"%> <%-- 自适应宽度 --%>

<%@ attribute name="pginput" type="java.lang.String" required="false"%> <%-- 分页条的输入框显示 --%>


<%@ attribute name="footerrow" type="java.lang.String" required="false"%> <%-- foot --%>

 






   


 
<% 
List authorityButtonListForGrid =(List)((javax.servlet.jsp.PageContext)jspContext).getSession().getAttribute("authorityButtonList");
%>
 
 
<c:if test="${empty addClick && editable}"> 	
	<c:set var="addClick" value="$.sunitnon"></c:set> 
</c:if>
 
<c:if test="${empty editClick && editable}"> 	
	<c:set var="editClick" value="$.sunitnon"></c:set> 
</c:if> 
<c:if test="${empty defaultdblClick}"> 	
	<c:set var="defaultdblClick" >${true}</c:set> 
</c:if> 



<c:if test="${empty multiselect}"> 
	<c:set var="multiselect">${true}</c:set>
</c:if>
<c:if test="${empty showRownumbers}">
	<c:set var="rownumbers">${true}</c:set>
</c:if>
<c:if test="${empty height}">
	<c:set var="height" value="suntoolkit.getGridHeight()"></c:set>
</c:if>
 
<c:if test="${height == 'auto'}">
	<c:set var="height" value="\"auto\""></c:set> 
</c:if>

<c:if test="${empty datatype}">
	<c:set var="datatype" value="json"></c:set>
</c:if>

<c:if test="${empty rownumber}">
	<c:set var="rownumber" value="20"></c:set>
</c:if>

<c:if test="${empty editable}">
	<c:set var="editable">${false}</c:set>
</c:if>

 
<c:if test="${empty topPager}">
	<c:set var="topPager">${true}</c:set>
</c:if>

<c:if test="${empty shrinkToFit}"> 
	<c:set var="shrinkToFit">${true}</c:set>
</c:if>

<c:if test="${empty pginput}">   
	<c:set var="pginput">${true}</c:set>
</c:if>


<%--添加按钮的权限--%>
<c:set var="hasAddOperator">${false}</c:set>

<%--编辑按钮的权限--%>
<c:set var="hasEditOperator">${false}</c:set>
 
<%--删除按钮的权限--%>
<c:set var="hasDelOperator">${false}</c:set> 

<%--保存按钮的权限--%>
<c:set var="hasSaveOperator">${false}</c:set> 

<%--取消按钮的权限--%>
<c:set var="hasCancelOperator">${false}</c:set> 
 
 
 <c:if test="${empty addTitle}"> 
	<c:set var="addTitle">添加</c:set>  
</c:if>
 
 <c:if test="${empty editTitle}"> 
	<c:set var="editTitle">编辑</c:set> 
</c:if>

 <c:if test="${empty delTitle}">  
	<c:set var="delTitle">删除</c:set> 
</c:if>


<%if(!StringUtils.isBlank(addOperator))
		if(authorityButtonListForGrid.contains(addOperator)){%>
			<c:set var="hasAddOperator">${true}</c:set>
<%}%>

<%if(!StringUtils.isBlank(editOperator))
		if(authorityButtonListForGrid.contains(editOperator)){%> 
			<c:set var="hasEditOperator">${true}</c:set>
<%}%>
 
<%if(!StringUtils.isBlank(delOperator)) 
		if(authorityButtonListForGrid.contains(delOperator)){%> 
			<c:set var="hasDelOperator">${true}</c:set> 
<%}%> 


 
<table id="${id}"></table>   
<c:if test="${!empty pageId}">
	 <div id="${pageId}" ></div> 
</c:if>


<script type="text/javascript">   
$(function(){ 
 
	$.sunitnon=function(){DWZ.debug('$.sunitnon');DWZ.debug(arguments)} 
 
 var jqGrid_${id} = $("#${id}").jqGrid({ 
		colModel:[
			 <jsp:doBody></jsp:doBody>
			{
			"name":"act",
			"index":"act",
			"label":"操作",
			<c:if test="${empty editurl}">"hidden":true,"hidedlg":true,</c:if>
			"align":"center"
			}
		],
		url:'${url}',
		mtype:'post',
		datatype: "${datatype}",
		<c:if test="${!empty pageId}">	pager: '#${pageId}', </c:if>
		 
		toppager: ${topPager},
		rowNum: ${rownumber},  
		rowList:[10,20,30,50,100],     
		<c:if test="${!empty footerrow}">footerrow:${footerrow},</c:if>
		
		<c:if test="${!empty rowList}">rowList:${rowList},</c:if>  
		<c:if test="${!empty title}">caption: "${title}",</c:if> 
		<c:if test="${!empty rownumbers}">rownumbers:true,</c:if>
		//gridview:true,//加
		recordpos: "right", 
		search :true, 
		viewrecords: true, //显示记录
		sortorder: "desc",  
		editurl:'${editableUrl}',  
		multiselect: ${multiselect}, //多选 
		<c:if test="${!empty multiboxonly}">multiboxonly:${multiboxonly},</c:if>
		jsonReader: { 
            id:"${pkName}",
            repeatitems: false
             
        }, 
         <c:if test="${!empty beforeProcessing}">beforeProcessing:${beforeProcessing},</c:if>    
   //     loadComplete :function(xhr){DWZ.debug(arguments);jqGrid_${id}.setGridHeight(${height}-1);<c:if test="${!empty loadComplete}">${loadComplete}.call(this,xhr)</c:if>},
       <c:if test="${!empty loadComplete}">loadComplete:${loadComplete},</c:if>      
      <c:if test="${!empty gridComplete}">gridComplete:${gridComplete},</c:if>
		height:${height},
		<c:if test="${!empty onSelectRow}">onSelectRow:${onSelectRow},</c:if> 
		width:"auto",  
		shrinkToFit : ${shrinkToFit},   
		forceFit :false,  
		<c:if test="${hasEditOperator  &&  defaultdblClick}">   
			ondblClickRow:function(  rowId,rowIndex,cellIndex, e){
				
				<c:if test="${editable eq true}">
				var isEditable =    jqGrid_${id}.jqGrid('getRowData', rowId)['isEditable'];
				if(isEditable && isEditable =="F"){
					
				}else{
					jqGrid_${id}.jqGrid('editRow', rowId);  
				}
					
				return ;
				</c:if>
			
				${editClick}(rowId,rowIndex,cellIndex, e);
			}, 
		 </c:if>
		pginput:  ${pginput},  
		//hidegrid:false, 
 		//toolbar:[true,"top"],
 		autowidth: true 
	});
	//$("#${id}").jqGrid("setGridWidth",$("#gbox_${id}").parent().width())
	//.jqGrid("setGridHeight",$("#gbox_${id}").parent().height()) 
	/**$("#t_${id}").append('<div style="width:80px" class="ui-pg-button ui-corner-all ui-state-hover" title="添加新记录"><div class="ui-pg-div"><span class="ui-icon ui-icon-plus"></span>添加</div></div>');
	$(".ui-pg-button","#t_${id}").click(function(){
		alert(1);
	});**/ 
	 
	<c:if test="${topPager}">  
		<c:set var="pageId">${id}_toppager</c:set>   
	</c:if>

jqGrid_${id}.navGrid('#${pageId}',{add:false,edit:false,del:false,search:false}) ;
	<c:if test="${editable}">  
		 //	edit: true,
		//	editicon: "ui-icon-pencil",
		//	add: true,
		//	addicon:"ui-icon-plus",
		//	save: true,
		//	saveicon:"ui-icon-disk",
		//	cancel: true,
		//	cancelicon:"ui-icon-cancel",
		//	addParams : {}, 
		//	editParams : {},
		//	restoreAfterSelect : true
		var  options=options||{add:false,edit:false,cancel:false,save:false}; 
		///alert('${cancelClick}') 
		<c:if test="${!empty addClick}">
			$.extend(options,{add :true,addtext:'添加'})   
		</c:if>  
		 
		<c:if test="${!empty editClick}">
			$.extend(options,{edit :true,edittext:'编辑'})
		</c:if>
		
		<c:if test="${!empty cancelClick}">  
			$.extend(options,{cancel: true,canceltext:'取消',canceltitle:'取消新记录'}) 
		</c:if>
		 
		<c:if test="${!empty saveClick}">    
			$.extend(options,{save :true,savetext:'保存',savetitle:'保存新记录'})  
		</c:if> 
			   
	//	$.extend(options,{editParams:{'url':'${editableUrl}','formValidate':${formValidate}}})    
		// $("#${id}").jqGrid('inlineNav','#${pageId}',options); 
	</c:if>    

	<c:if test="${!empty addClick}"> 
		<c:if test="${hasAddOperator}">    
			jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass:"ui-separator",sepcontent:''}) 
			.navButtonAdd('#${pageId}',{   
			   caption:"${addTitle}", 
			   id:"${id}_add" ,
			   title: '添加新记录', 
			   buttonicon:"ui-icon-plus",    
			   onClickButton: function($btn){  
			   	  <c:if test="${!empty addCheck}">if(${addCheck}(jqGrid_${id},$btn)==false) return false;</c:if>
			   	  <c:if test="${editable}"> 
					jqGrid_${id}.jqGrid('addRow');  
			   	  </c:if>    
			      ${addClick}(jqGrid_${id},$btn);  
			   },    
			   position:"last"  
			}) 
		</c:if> 
	</c:if> 
	<c:if test="${!empty editClick}"> 
		<c:if test="${hasEditOperator}">  
			jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass : "ui-separator",sepcontent: ''}) 
			 .navButtonAdd('#${pageId}',{   
				 caption:"${editTitle}", 
			   id:"${id}_edit"  ,
			   title: '编辑选中记录', 
			   buttonicon:"ui-icon-pencil",    
			   onClickButton: function($btn){ 
				   var selectedIds = jqGrid_${id}.jqGrid("getGridParam", "selarrrow");
				   if(selectedIds==''){$.alert("请选择需要编辑的记录。");return false;}
				   if((selectedIds+"").indexOf(",")!=-1){$.alert("每次只能编辑一条记录。");return false;}
				   
				   <c:if test="${editable}"> 
				   var sr = jqGrid_${id}.jqGrid('getGridParam','selrow'); 
				   var isEditable =    jqGrid_${id}.jqGrid('getRowData', sr)['isEditable'];
				   if(isEditable && isEditable =="F"){
						 
					}else{
						var sr = jqGrid_${id}.jqGrid('getGridParam','selrow'); 
						jqGrid_${id}.jqGrid('editRow', sr);  
						return ;
					}
				   
				
		   	  		</c:if>   
		   	  
			 	   <c:if test="${!empty editCheck}">if(${editCheck}(jqGrid_${id},$btn)==false) return false;</c:if>
			 	   		
			 	  
			 	       
			 	   var $rowData = jqGrid_${id}.jqGrid("getRowData", selectedIds);
			       ${editClick}(jqGrid_${id},$rowData);
			   },    
			   position:"last"  
			})
		</c:if>
	</c:if>
	<c:if test="${!empty saveClick}"> 
		<c:if test="${hasEditOperator}">  
			jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass : "ui-separator",sepcontent: ''}) 
			 .navButtonAdd('#${pageId}',{   
			   caption:"保存",
			   id:"${id}_save"  ,    
			   title: '保存新记录',     
			   buttonicon:"ui-icon-disk",     
			   onClickButton: function($btn){  
				   if(this.p.savedRow.length==0){$.alert("没有新记录需要提交。");return false;} 
			 	   <c:if test="${!empty saveCheck}">if(${saveCheck}(jqGrid_${id},$btn)==false) return false;</c:if>
			 	   <c:if test="${editable}">   
						if ( $.isFunction(${saveClick} )) {${saveClick}.call(this,this.p.savedRow)}    
			   	  </c:if>      
			   },     
			   position:"last"  
			})
		</c:if>
	</c:if>
	 
	
		<c:if test="${!empty cancelClick}"> 
		<c:if test="${hasEditOperator}">  
			jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass : "ui-separator",sepcontent: ''}) 
			 .navButtonAdd('#${pageId}',{   
			   caption:"取消",     
			   id:"${id}_cancel"  ,
			   title: '取消新记录',    
			   buttonicon:"ui-icon-disk",    
			   onClickButton: function($btn){ 
				   var selectedIds = jqGrid_${id}.jqGrid("getGridParam", "selarrrow");
				   if(selectedIds==''){$.alert("请选择需要取消的记录。");return false;}
				   var cancelList=[]; 
			 	   <c:if test="${!empty editCheck}">if(${editCheck}(jqGrid_${id},$btn)==false) return false;</c:if>
			 	   <c:if test="${editable}">  
			 	   		for(var v in selectedIds ){
			 	   			for(var k in this.p.savedRow){   // 判断是否需要取消操作 
			 	   				if(this.p.savedRow[k].id==selectedIds[v]){
			 	   					jqGrid_${id}.jqGrid('restoreRow', selectedIds[v]);    
			 	   					cancelList.push(selectedIds[v]);
			 	   				} 
			 	   			}
			 	   		}  
			   	  </c:if>
			   	        
			       ${cancelClick}(jqGrid_${id},cancelList);  
			   },     
			   position:"last"  
			})
		</c:if>
	</c:if>
	
	<c:if test="${!empty delClick}">
		<c:if test="${hasDelOperator}">
			jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass : "ui-separator",sepcontent: ''})
			.navButtonAdd('#${pageId}',{   
				caption:"${delTitle}", 
			   title: "删除选中记录",   
			   buttonicon:"ui-icon-trash",    
			   onClickButton: function($btn){  
			       var selectedIds = jqGrid_${id}.jqGrid("getGridParam", "selarrrow");  
				   if(selectedIds==''){$.alert("请选择需要删除的记录。");return false;} 
			  	   <c:if test="${!empty delCheck}">if(${delCheck}(jqGrid_${id},$btn)==false) return false;</c:if>  
			       ${delClick}(jqGrid_${id},selectedIds+"");
			   },    
			   position:"last"  
			}) 
		</c:if> 
	</c:if> 
	<c:if test="${!empty otherButtons}"> 
	<% 
		JSONArray jsonArray = JSONArray.fromObject("["+otherButtons.replaceAll("'","\"")+"]");
		for(int i=0;i<jsonArray.size();i++){
		   JSONObject json= jsonArray.getJSONObject(i);
		   try{
		   if(json.containsKey("operator")){
		  	 String operator = json.getString("operator");
		  	 
			 if(authorityButtonListForGrid.contains(operator)){
		  %>
				jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass : "ui-separator",sepcontent: ''})
				.navButtonAdd('#${pageId}',{
				 <%if(json.containsKey("id")){%>id:'<%=json.getString("id")%>',<%}%>
				 <%if(json.containsKey("name")){%>caption:'<%=json.getString("name")%>',<%}%>
				 <%if(json.containsKey("title")){%>title:'<%=json.getString("title")%>',<%}%>
				 <%if(json.containsKey("ui")){%> buttonicon:'<%=json.getString("ui")%>',<%}%>
				 <%if(json.containsKey("onClick")){%> onClickButton:function(){<%=json.getString("onClick").trim()%>(jqGrid_${id});},<%}%>
				 position:'last'
				})
			
			<%}}else{%>
			    jqGrid_${id}.navSeparatorAdd("#${pageId}",{sepclass : "ui-separator",sepcontent: ''})
				.navButtonAdd('#${pageId}',{
				 <%if(json.containsKey("id")){%>id:'<%=json.getString("id")%>',<%}%>
				 <%if(json.containsKey("name")){%>caption:'<%=json.getString("name")%>',<%}%>
				 <%if(json.containsKey("title")){%>title:'<%=json.getString("title")%>',<%}%>
				 <%if(json.containsKey("ui")){%> buttonicon:'<%=json.getString("ui")%>',<%}%>
				 <%if(json.containsKey("onClick")){%> onClickButton:function(){<%=json.getString("onClick").trim()%>(jqGrid_${id});},<%}%>
				 position:'last'
				})
		  <% }}catch(Exception e){e.printStackTrace();}}
	%>
	</c:if>
	  

	<c:if test="${!empty onready}"> 
		${onready}(jqGrid_${id}) 
	</c:if>
	
	
	
	
	
});

	

</script>