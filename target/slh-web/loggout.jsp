<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();

%>

<html>
	<head>
		<style>
		img { 
			width: 100%;
			height: 100%;
		}  
		</style>

		<meta http-equiv="refresh" content="5;url=<%=path%>/login.jsp" />
		<title>你已退出系统</title>   
		
	 
	</head>  
	<body style='margin:0' onclick="window.top.location.href='<%=path%>/login.jsp'"> 
		<img src="html/js/common/img/loggout.jpg" />
	</body>
</html>
