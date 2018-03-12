<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>页面找不到</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<<meta http-equiv="refresh" content="30;url=login.jsp">  
	
	<!-- 
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  
  </head>
   
  <body style='margin:0;text-align:center'  onclick="window.top.location.href=login.jsp"> 
		 <img src="/html/js/common/img/404.jpg" />
		 <a href='/login.jsp'><H3>返回首页<H3></a> 
	</body>
</html>
