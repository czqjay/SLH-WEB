<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag import="org.apache.commons.lang.StringUtils"%>
<%@ tag import="net.sf.json.JSONArray,net.sf.json.JSONObject"%>
<%@ tag import="java.util.*"%>
<%-- checkbox 与 radio 标签   --%>

<%@ attribute name="id" type="java.lang.String" required="true"%> <%-- 生成的id   --%>
<%@ attribute name="name" type="java.lang.String" required="true"%><%-- 生成的 name  --%>
<%@ attribute name="dataUrl" type="java.lang.String" required="false"%><%-- url    例：dataUrl="${ctxPath}/student/getAllClassroom.action" --%>
<%@ attribute name="style" type="java.lang.String" required="false"%> <%--  css style --%>
<%@ attribute name="utils" type="java.lang.String"	required="false"%>	<%-- checkbox的具体内容 例：utils="[{'lable':'税收1','value':'1','name':'tcCheck1'},{'lable':'税收2','value':'2','name':'tcCheck1'},{'lable':'税收3','value':'3','name':'tcCheck1'}]" --%>
<%@ attribute name="values" type="java.lang.String"	required="false"%> <%--  checkbox 默认选中的值,与utils中的value对应 例:[1,2,3]  --%>
<%@ attribute name="type" type="java.lang.String"	required="false"%>	<%-- 控件类型, checkbox / radio  --%>


<%
	if(StringUtils.isBlank(type)){
		this.getJspContext().setAttribute("type","checkbox");  
 	} 
 %>
 

<script type="text/javascript"> 

		$('#${id}ul').comboCheckcbox({utils:${utils},values: '${values}',type:'${type}'}); 

</script> 

<ul  id="${id}ul" class='suicheckboxul'   style="${style}"></ul> 


