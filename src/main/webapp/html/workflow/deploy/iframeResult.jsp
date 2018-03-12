<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="org.apache.commons.lang.StringUtils"%>
<head>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />

</head>
<body>
<script type="text/javascript">
	<%
		String success ="";
		String operation ="";
		if(request.getAttribute("success")!=null){
			success=request.getAttribute("success").toString();
		}
		if(!StringUtils.isBlank(success)){
			if(success.equals("true")){
		%> 		
				window.parent.deployListCRUD.reloadData();
				alert("保存成功");								 
				window.parent.suntoolkit.destroyDialog("");  
			<%} else{%> 
				alert("保存失败.${msg}");
				 window.parent.removeDisableAttr();
				
				 <% 
				
				
		} 
	}%>
</script>	
 
</body>	