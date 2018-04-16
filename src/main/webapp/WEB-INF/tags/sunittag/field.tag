<%@ tag pageEncoding="UTF-8"  %>
<%@ tag import="org.apache.commons.lang.StringUtils"%>
<%@ tag import="net.sf.json.JSONArray,net.sf.json.JSONObject"%>
<%@ tag import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- div 标签 . 主要用法是与 input.tag 配合, 生成固定风格的界面 --%>
<%@ attribute name="type" type="java.lang.String" required="true"  %> <%-- 按钮风格或输入框风格--%>
<%@ attribute name="align" type="java.lang.String" required="false"  %> <%-- div align--%>
<%@ attribute name="id" type="java.lang.String" required="false"  %>
<%@ attribute name="display" type="java.lang.String" required="false"  %> <%-- div 显示风格, 也可以在style中定义--%>
<%@ attribute name="paddingLeft" type="java.lang.String" required="false"  %> <%-- css paddingLeft 也可以在style中定义 --%>
<%@ attribute name="paddingRight" type="java.lang.String" required="false"  %><%-- css paddingRight 也可以在style中定义 --%>
<%@ attribute name="style" type="java.lang.String" required="false"  %>  <%-- div style--%>
<%@ attribute name="attrs" type="java.lang.String" 	required="false"%> <%-- 自定义 attr--%> 

<c:choose>
	<c:when test="${type eq 'input'}">
		<c:set var="cssClass" value="ui-inputCon"></c:set>
	</c:when>
	<c:when test="${type eq 'button'}">
		<c:set var="cssClass" value="ui-inputBtn"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="cssClass" value="ui-inputCon"></c:set>
	</c:otherwise>
</c:choose>
<c:if test="${!empty display}">
	<c:set var="display" value="display:${display};"/>
</c:if>
<c:if test="${!empty paddingLeft}">
	<c:set var="paddingLeft" value="padding-left:${paddingLeft}px;"/>
</c:if>
<c:if test="${!empty paddingRight}">
	<c:set var="paddingRight" value="padding-right:${paddingRight}px;"/>
</c:if>
<c:if test="${!empty id}">
	<c:set var="id" value="id='${id}'"/>
</c:if>
<div style="${paddingLeft}${paddingRight}${display}${style}" class="${cssClass}" align="${align}" ${id}  
<%if(!StringUtils.isBlank(attrs)){
		JSONObject jsonobj  = JSONObject.fromObject(attrs.replaceAll("'","\""));  
		Set set = jsonobj.keySet();
		for (Object o : set) {   
			out.print(" ");
			out.print(o.toString()+"='"+jsonobj.get(o.toString())+"'");
			out.print(" "); 
		} 
	} %>
>
	<jsp:doBody></jsp:doBody>
</div>