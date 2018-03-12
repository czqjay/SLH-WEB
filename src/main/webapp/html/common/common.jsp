<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sunit.global.base.Global"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ include file="css.jsp"%>



<!-- 	<script src="${ctxPath}/html/js/dwz/js/jquery-1.4.4.js" type="text/javascript"></script> -->

<%  
WebApplicationContext ac = WebApplicationContextUtils.getWebApplicationContext(pageContext.getServletContext());
Global g =(Global)ac.getBean("globalPara");
if(g.isCompressActive()){%> 

<script src="${ctxPath}/html/js/jqGrid/js/jquery-1.7.2.min.js" 
	type="text/javascript"></script> 
 
<script src="${ctxPath}/html/js/dwz/js/dwz.min.gzjs" 
	type="text/javascript"></script>
	
<%}else{%>

<script src="${ctxPath}/html/js/jqGrid/js/jquery-1.7.2.src.js"
	type="text/javascript"></script>


<script src="${ctxPath}/html/js/dwz/js/speedup.js" 
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/jquery.cookie.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/jquery.bgiframe.js"
	type="text/javascript"></script>
<script
	src="${ctxPath}/html/js/dwz/xheditor/xheditor-1.1.9-zh-cn.min.js"
	type="text/javascript"></script>
<script
	src="${ctxPath}/html/js/dwz/uploadify/jquery.uploadify.js" 
	type="text/javascript"></script> 
<script src="${ctxPath}/html/js/dwz/js/dwz.core.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.util.date.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.regional.zh.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.barDrag.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.drag.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.tree.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.accordion.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.ui.js" type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.theme.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.switchEnv.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.alertMsg.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.contextmenu.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.navTab.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.tab.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.resize.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.dialog.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.dialogDrag.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.cssTable.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.stable.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.taskBar.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.ajax.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.pagination.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.database.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.datepicker.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.effects.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.panel.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.checkbox.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.history.js"
	type="text/javascript"></script>
<script src="${ctxPath}/html/js/dwz/js/dwz.combox.js"
	type="text/javascript"></script>
<%}%>

<link href="${ctxPath}/html/js/dwz/themes/default/style.css"
	rel="stylesheet" type="text/css" />
<link href="${ctxPath}/html/js/dwz/themes/css/core.css" rel="stylesheet"
	type="text/css" />

<link href="${ctxPath}/html/js/dwz/uploadify/uploadify.css" 
	rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" media="screen"
	href="${ctxPath}/html/js/jquery-ui/themes/redmond/jquery-ui.css" />

<link rel="stylesheet" type="text/css"
	href="${ctxPath}/html/js/jqGrid/css/ui.jqgrid.css" />


<link rel="stylesheet" type="text/css"
	href="${ctxPath}/html/js/jqGrid/plugins/ui.multiselect.css" />

<link rel="stylesheet" type="text/css" media="all"
	href="${ctxPath}/html/js/common/css/msgAlert.css" />


<link rel="stylesheet" type="text/css" media="all"
	href="${ctxPath}/html/js/dynatree-1.2.0_rc1/css/skin-vista/ui.dynatree.css" />
 
<link rel="stylesheet" type="text/css" media="all"
	href="${ctxPath}/html/js/jquery.contextMenu/jquery.contextMenu.css" /> 
	
<link rel="stylesheet" type="text/css" media="all"
	href="${ctxPath}/html/js/common/css/comboSelect.css" /> 	

<% 

if(g.isCompressActive()){%>
 
<script type="text/javascript"
		src="${ctxPath}/html/js/bin/sunit.min.gzjs"></script>
		
<script type="text/javascript"
	src="${ctxPath}/html/js/jquery.validate/additional-methods.js"></script>
	
		
	<script src="${ctxPath}/html/js/dwz/js/dwz.datepicker.js" 
	type="text/javascript"></script>
		
	<script src="${ctxPath}/html/js/dwz/js/dwz.regional.zh.js"
	type="text/javascript"></script>
	
	 <script src="${ctxPath}/html/js/common/js/comboSelect.js"
	type="text/javascript"></script> 
 
 <script src="${ctxPath}/html/js/common/js/comboCheckbox.js" 
	type="text/javascript"></script>	
	
 
<%}else{%>

<script type='text/javascript'
			src='${ctxPath}/html/js/echarts-2.2.6/build/source/echarts-all.js'></script>

<script type="text/javascript"
	src="${ctxPath}/html/js/jquery.validate/jquery.validate.js"></script>
<script type="text/javascript"
	src="${ctxPath}/html/js/jquery.validate/messages_cn.js"></script>
<script type="text/javascript"
	src="${ctxPath}/html/js/jquery.validate/additional-methods.js"></script>


<script type="text/javascript"
	src="${ctxPath}/html/js/jquery-ui/jquery-ui-1.9.2/ui/jquery-ui.js"></script>
	
	<script src="${ctxPath}/html/js/dwz/js/dwz.datepicker.js" 
	type="text/javascript"></script>
	
<script type="text/javascript" 
	src="${ctxPath}/html/js/jquery-ui/jquery-ui-1.9.2/ui/jquery.ui.sortable.js"></script>

<script type="text/javascript"
	src="${ctxPath}/html/js/jqGrid/js/i18n/grid.locale-cn.js"></script>
<script type="text/javascript"
	src="${ctxPath}/html/js/jqGrid/js/jquery.jqGrid.src.js"></script>

<script type="text/javascript"
	src="${ctxPath}/html/js/common/js/msgAlert.js"></script>
<script type="text/javascript"
	src="${ctxPath}/html/js/common/js/string.util.js"></script>
<script type="text/javascript" 
	src="${ctxPath}/html/js/jquery.form/jquery.form.js"></script> 

<script type="text/javascript"
	src="${ctxPath}/html/js/dynatree-1.2.0_rc1/jquery/jquery.cookie.js"></script> 
<script type="text/javascript"
	src="${ctxPath}/html/js/dynatree-1.2.0_rc1/jquery/jquery.dynatree.js"></script> 
<!-- <script type="text/javascript" 
	src="${ctxPath}/html/js/jquery.contextMenu/jquery.contextMenu-custom.js"></script>  -->

<!-- 
<script src="bin/dwz.min.js" type="text/javascript"></script> 
-->
<script src="${ctxPath}/html/js/dwz/js/dwz.regional.zh.js"
	type="text/javascript"></script>
	
<script src="${ctxPath}/html/js/common/js/comboSelect.js"
	type="text/javascript"></script>
	 
<script src="${ctxPath}/html/js/common/js/comboFile.js" 
	type="text/javascript"></script>	
	
<script src="${ctxPath}/html/js/common/js/comboCheckbox.js" 
	type="text/javascript"></script>	
	  
	   
	<script src="${ctxPath}/html/js/common/js/jqGridExtend.js" 
	type="text/javascript"></script>
	
<%}%> 

