<%@ tag pageEncoding="UTF-8"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- div 标签 . 主要用法是与 field.tag 配合, 生成固定风格的界面  一个 input.tag 表示一个方式 form 元素 如: input text   --%>
<%@ attribute name="title" type="java.lang.String" required="true"   %> <%-- 元素的标题,会生成一个固定样式的label --%>
<%@ attribute name="target" type="java.lang.String" required="false"  %> <%-- label 的target 属性 --%>
<%@ attribute name="require" type="java.lang.String" required="false"  %> <%-- 元素是否必填 --%>
<%@ attribute name="width" type="java.lang.String" required="false"  %>  <%-- 元素宽度 --%>
<%@ attribute name="size" type="java.lang.String" required="false"  %>  <%-- 元素宽度css --%>
<%@ attribute name="labelStyle" type="java.lang.String" required="false"  %> <%-- label 的 Style属性 --%>
<%@ attribute name="bodyStyle" type="java.lang.String" required="false"  %> <%-- html 控件 外层div 的 Style 属性 --%>
<%@ attribute name="topStyle" type="java.lang.String" required="false"  %> <%-- 整个input.tag  的 Style属性 --%>
<%@ attribute name="tips" type="java.lang.String" required="false"  %> <%-- 鼠标悬停提示 默认为tittle--%> 
<c:choose>
	<c:when test="${empty size}">
		<c:set var="size" value="x1"></c:set>
	</c:when>
</c:choose>
<c:choose>
	<c:when test="${require eq 'true'}">
		<c:set var="require" value="<div class='ui-state-error-text l'><span class='requiredStar' style='color:red;font-size:20px;'>*</span></div>"></c:set>
	</c:when>
	<c:otherwise>
		<c:set var="require" value=""></c:set>
	</c:otherwise>
</c:choose>

<c:if test="${!empty topStyle}"> 
	<c:set var="topStyle" value="style=${topStyle};"/> 
</c:if>

<c:if test="${empty tips}">
	<c:set var="tips" value="${title}"/> 
</c:if>
 

<div class="ui-inputIn ${size}"  ${topStyle} > 
	<label class="l" for="${target}" title='${tips}' style="${labelStyle}">${title}</label>
	<div class="ui-inputInWidth" style="${bodyStyle}">
		<jsp:doBody />
	</div>${require}
</div>