<%@ tag pageEncoding="UTF-8"%>
<%@ tag import="org.apache.commons.lang.StringUtils"%>
<%-- 上传控件 ,支持多文件上传,默认路径为 web-inf/upload --%>
<%@ attribute name="id" type="java.lang.String" required="true"%> <%-- 生成的id   --%>
 
<%@ attribute name="name" type="java.lang.String" required="true"%> <%-- 生成的 name  --%> 

<%@ attribute name="value" type="java.lang.String" required="false"%>   <%-- 默认值,一般用于update页面初始化控件,以逗号分割. 例:a.txt,b.txt --%> 

<%@ attribute name="whiteList" type="java.lang.String" required="false"%>  <%-- 未实现 , 允许上传的后缀名白名单,以逗号分割. --%> 

<%@ attribute name="size" type="java.lang.Integer" required="false"%>  <%--  允许上传文件体积大小,单位为kb , 默认为 0,  表示大小无限制--%>  

<%@ attribute name="subDir" type="java.lang.String" required="false"%>  <%--  上传文件所在子目录. 例: subDir='mypic' 实际路径为:web-inf/upload/mypic--%> 

<%@ attribute name="showType" type="java.lang.String" required="false"%>  <%--  文件列表展示方式 --%> 

 


<%if(StringUtils.isBlank(showType)){   
		this.getJspContext().setAttribute("showType","1"); 
 }%>

  
<script type="text/javascript">   

	<% if(size==null)
	{	
		size =0;
	}
	application.setAttribute(name+"_size",size); 
	application.setAttribute(name+"_subDir",subDir); 
	 
	%>

	var comboFile${id} =  $('#${id}').comboFile({showType:${showType}}).data('comboFile');  
	comboFile${id}.setList('${value}');
</script>   
 
<input type="file"  id="${id}"  name="${name}" disabled='disabled' />  

<input type="hidden"  id="hidden_${id}"  name="${name}"/>    

 