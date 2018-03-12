<%@ tag pageEncoding="UTF-8"%>
<%@ tag import="java.util.List"%>

<%-- 权限验证标签 , 判断authorityButtonList 中是否包含有对应的code.
authorityButtonList 在 LoginSuccessListener 类中设置
  --%>

<%@ attribute name="oprationGrant" type="java.lang.String" required="true"%><%-- 授权的资源code 也就是资源表的code --%>
<% 
	
	
	List list =(List)((javax.servlet.jsp.PageContext)jspContext).getSession().getAttribute("authorityButtonList");
	if(list.contains(oprationGrant)){
	 
	%>	 <jsp:doBody></jsp:doBody>
	<% }else{
	
		
	}%> 


