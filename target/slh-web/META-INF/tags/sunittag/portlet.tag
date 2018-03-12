<%@ tag pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@ attribute name="jspurl" type="java.lang.String" required="true"%>
<%-- 要展现的内容 --%>
<%@ attribute name="id" type="java.lang.String" required="true"%>
<%@ attribute name="title" type="java.lang.String" required="true"%>

<div class='row' style='    box-shadow: 2px 2px 4px rgba(0,0,0,.3);'>
	<div class="col-xs-3" id="${id}"
		style="background: #fcfdfd url(images/ui-bg_inset-hard_100_fcfdfd_1x100.png) 50% bottom repeat-x; color: #222222;">
		<div class=" ui-widget-header ">
			<span>${title}</span>
		</div>
		<div class="portletContent">
			
		</div>



	</div>

	<script type="text/javascript">

$(function(){
	
		
	jQuery.ajax({
		type : "post", 
		url : '${jspurl}',
		dataType : 'html',
		success : function(data) { 
			$('#${id}  .portletContent').html(data)
		}, 
		error : function(XMLHttpRequest, textStatus,
				errorThrown) {
			log(arguments)
			jQuery.alert("获取portlet失败");
		}
	}); 
	
})
</script>



</div>