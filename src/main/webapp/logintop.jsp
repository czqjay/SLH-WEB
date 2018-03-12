<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<%@ page language="java" pageEncoding="utf-8"%>
<% 
	String path = request.getContextPath();
%> 

<html>
<sessionTimeout>
<script type="text/javascript"> 
	window.top.location='<%=path %>/login.jsp'
</script>
</html>  