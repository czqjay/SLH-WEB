<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- grid标签的子标签,与grid标签配合使用,用来描述其中一列的配置 --%>

<%@ attribute name="name" type="java.lang.String" required="true"%> <%--与grid数据源的key匹配,展示相同名称的数据,通常都PO的字段名 --%>
<%@ attribute name="title" type="java.lang.String" required="true"%>   <%--表格中列的title--%>
<%@ attribute name="align" type="java.lang.String" required="false"%>  <%--内容对齐     例：align='center'  居中--%>
<%@ attribute name="sortable" type="Boolean" required="false"%>  
 <%--是否可排序,这只是一个前台开关,实现排序功能需要要后台编码. 例: 
 request.getParameter("sidx")
 request.getParameter("sord")
if(!SunitStringUtil.isBlankOrNull(sidx)){
			hqlBuf.append(" order by  " +sidx +" "+sord); 
		}			
		--%>
<%@ attribute name="hidden" type="java.lang.String" required="false"%>  <%-- 是否隐藏 --%>
<%@ attribute name="width" type="java.lang.String" required="false"%> <%-- 列宽度 --%>
<%@ attribute name="formatter" type="java.lang.String" required="false"%> <%-- 列内容格式化  --%>
<%@ attribute name="editable" type="java.lang.String" required="false"%>  <%-- 是否为可编辑,尚不完善,复杂业务不推荐使用 args: boolean --%>
<%@ attribute name="edittype" type="java.lang.String" required="false"%> <%--  编辑使用的html元素类型 例: text --%> 
<%@ attribute name="editoptions" type="java.lang.String" required="false"%> <%--  编辑时的参数 例: value name  --%>  
<%@ attribute name="searchoptions" type="java.lang.String" required="false"%> <%--  编辑时的参数 例: value name  --%>  



<c:if test="${empty sortable}"> 
	<c:set var="sortable" value="false"></c:set>
</c:if>
{
	"name":"${name}",
	"index":"${name}",
	"sortable":${sortable},
	"search": true,
	"stype": "text",
	
	
	<c:if test="${!empty hidden}">"hidden":eval(${hidden}),</c:if>
	<c:if test="${!empty align}">"align":"${align}",</c:if>	
	<c:if test="${!empty width}">"width":${width},</c:if>
	<c:if test="${!empty formatter}">"formatter":${formatter},</c:if> 
	<c:if test="${!empty datefmt}">"datefmt":${datefmt},</c:if> 
	<c:if test="${!empty editable}">"editable":eval(${editable}),</c:if>    
	<c:if test="${!empty edittype}">"edittype":"${edittype}",</c:if> 
	<c:if test="${!empty editoptions}">"editoptions":$.extend(${editoptions},{"edittype":"${edittype}"}),</c:if> 
	<c:if test="${!empty searchoptions}">"searchoptions":${searchoptions},</c:if> 
	"label":"${title}"
}, 