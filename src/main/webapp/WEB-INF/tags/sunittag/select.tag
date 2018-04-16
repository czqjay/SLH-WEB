<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ tag import="org.apache.commons.lang.StringUtils"%>
<%@ tag import="net.sf.json.JSONArray,net.sf.json.JSONObject"%>
<%@ tag import="java.util.*"%>

<%-- 生成一个 自定义select 控件, 包含 autocomplete 功能   --%>

<%@ attribute name="id" type="java.lang.String" required="true"%> <%-- 生成select的id   --%>
<%@ attribute name="name" type="java.lang.String" required="true"%><%-- 生成select的 name  --%>
<%@ attribute name="dataUrl" type="java.lang.String" required="false"%><%-- url    例：dataUrl="${ctxPath}/student/getAllClassroom.action" --%>
<%@ attribute name="jsonreader" type="java.lang.String" required="false"%><%--  接收数据key与value名称     例：jsonreader="{'id':'id','value':'classname'}"      id:<option>中的value的值，value:<option>的显示值--%>
<%@ attribute name="multiple" type="java.lang.String" required="false"%> <%-- 是否生成 原生的html多选框   --%>
<%@ attribute name="size" type="java.lang.String" required="false"%><%-- 已定义的宽度css, 可用style代替 --%>
<%@ attribute name="style" type="java.lang.String" required="false"%><%--  select css style --%>
<%@ attribute name="value" type="java.lang.String" required="false"%><%-- 将匹配value的option置为 选中状态, update页面中使用较多 --%>
<%@ attribute name="defaultoption" type="java.lang.String"	required="false"%><%-- 默认的option     例：defaultoption="{id:'',value:'---请选择---'}" --%>
<%@ attribute name="required" type="java.lang.String" required="false"%><%--  是否必填验证 --%>
<%@ attribute name="autoCombobox" type="java.lang.String"	required="false"%><%-- 是否使用原生的select   例：autoCombobox="off"--%>
<%@ attribute name="autoComboboxOptions" type="java.lang.String"	required="false"%><%--  combo控件的 options    例：autoComboboxOptions='{select:acSelect}'--%>
<%@ attribute name="attrs" type="java.lang.String"	required="false"%> <%--  自定义属性 --%>
<%if(StringUtils.isBlank(autoComboboxOptions)){
		this.getJspContext().setAttribute("autoComboboxOptions","{}");  
 }%>

<%if(StringUtils.isBlank(jsonreader)){   
		this.getJspContext().setAttribute("jsonreader","{}"); 
 }%>

<%if(StringUtils.isBlank(defaultoption)){ 
		this.getJspContext().setAttribute("defaultoption","{}");  
 }%>

<script type="text/javascript"> 
	 	<% if ( autoCombobox==null||!autoCombobox.equals("off") ){%>    
		 	$('#${id}').combobox( $.extend(${autoComboboxOptions},{id:'${id}',defaultoption:${defaultoption}},{id:'${id}',jsonreader:${jsonreader},dataUrl:'${dataUrl}',value:'${value}'}));  
		<%}%> 
		
		
		
		<%if( multiple!=null&&!multiple.equals("")){%>
		$('#${id}').bind('reload',function(event,options){
			DWZ.debug(arguments) 
			var url='${dataUrl}';
			var data={}; 
			if(options){
				url = options.url?options.url:'${dataUrl}';
				data= options.data?options.data:{};
			}  
			data['nd']=Math.random(); 
			
			$.getJSON(url,data,function(data){
			var sid ='id';
			var svalue='name';
			<%if(!StringUtils.isBlank(jsonreader)){%>
				var json=${jsonreader};  
				sid =json.id?json.id:'id';
				svalue =json.value?json.value:'name'; 
			<%}%>
			if(data.success) 
			for(i in data.list){
				if('${value}'==data.list[i][sid])
					$(event.currentTarget).append("<option selected='true' title="+data.list[i][svalue]+"  value="+data.list[i][sid]+">"+data.list[i][svalue]+"</option>")
				else
					$(event.currentTarget).append("<option title="+data.list[i][svalue]+"   value="+data.list[i][sid]+">"+data.list[i][svalue]+"</option>")					
			}   
			    
		}).error(function(){
		}).complete(function(){
		})
		}) 
	    $('#${id}').trigger('reload');
		<%}%>
</script>  



<select  id="${id}" name="${name}" 
<%if( multiple==null||multiple.equals("")){out.print(" style=\"display:none\"");}%>
	<%if( multiple!=null&&!multiple.equals("")){out.print("multiple=\"multiple\"");}%>
	<%if( size!=null&&!size.equals("")){out.print("size="+size);}%>
	<%if( style!=null&&!style.equals("")){out.print("style="+style);}%>
	<%if( required!=null&&!required.equals("")){out.print("required=true");}%>
	<%if(!StringUtils.isBlank(attrs)){
		JSONObject jsonobj  = JSONObject.fromObject(attrs.replaceAll("'","\"")); 
		Set set = jsonobj.keySet(); 
//		for (Object o : set) { 
//			out.print(" ");
//			out.print(o.toString()+"='"+jsonobj.get(o.toString())+"'");
//			out.print(" "); 
//		} 
	} %>
	
	
	>
<jsp:doBody /></select>