<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<link rel="stylesheet"
	href="${ctxPath}/html/js/common/css/gridbutton.css" type="text/css" />
	
<style type="text/css">
	.wb_row:hover{
		border: 1px solid #79b7e7;
		background: #d0e5f5 url(images/ui-bg_glass_75_d0e5f5_1x400.png) 50% 50% repeat-x;
		font-weight: bold;
		color: #1d5987;
	}
	#workbench td {
		padding:0px     ; 
		text-align:center  ; 
	} 
</style> 
	
	
	
<script type="text/javascript">

$(function(){
	
		
/* 	jQuery.ajax({
		type : "post", 
		url : window.WWWROOT + "/flowability/loadFlowabilityListByUser.action",
		dataType : 'json',
		success : function(data) { 
			if (data && data.success) {
				
			} else {
				
			} 
		}, 
		error : function(XMLHttpRequest, textStatus,
				errorThrown) {
			jQuery.alert("删除失败，请稍后再次尝试删除！！");
		}
	}); 
	 */
	
})




$('#workbench tr:gt(0) ').mouseenter(function(){
	$(this).addClass('ui-state-hover')
}).mouseout(function(){
	$(this).removeClass('ui-state-hover')
	})

</script>
<div class="pageContent" 	style="overflow-x: hidden; width: 100%; position: absolute; top: 0px; bottom: 0px; left: 0px;">

	<!-- <script type="text/javascript">
		function getGridHeight() {
			return $('.navTab-panel').height()
					- $('.navTab-panel .page').height() - 50;
		}   
	</script> -->

	<div align="center" id="adminScoreListGridDiv" style='height: 100% ; padding: 20px'> 
		欢迎您！
  
  	
  
  
  
			<div id='workbench'  class='row'  style ='display:none' 	>
				<div   class="col-xs-3"   style="   background: #fcfdfd url(images/ui-bg_inset-hard_100_fcfdfd_1x100.png) 50% bottom repeat-x;    color: #222222;">  
						<div class=" ui-widget-header ">	<span > 待审核任务</span></div>  
						
						<table  class="row "   style=" width:100%;">
							<tr     style=" width:100%;border: 1px solid #a6c9e2;   text-align:center ">  
								<td class="col-xs-4  "     style=" border: 1px solid #a6c9e2;   " >标题</td>     
								<td class="col-xs-8 "    style=" border: 1px solid #a6c9e2;   " >内容</td>    
							</tr>    
						<tr   style=" border: 1px solid #a6c9e2;     cursor: pointer;  ">
								<td class="col-xs-4  "   style=" border: 1px solid #a6c9e2;   "  >审核确认</td>
								<td class="col-xs-8 "   style=" border: 1px solid #a6c9e2;   "  >无聊审核详情</td>
							</tr>
						</table>
						
						<!-- <div   class='row  '  	>  
									<div class="col-xs-4  "  style=" border: 1px solid #a6c9e2;   "  >标题</div> 
									<div class="col-xs-8"  style=" border: 1px solid #a6c9e2;  " >内容</div> 
						</div>   
						   
						<div   class='row wb_row  ui-state-hover'  	>  
									<sapn>
												<div class="col-xs-4  "  style=" border: 1px solid #a6c9e2;     cursor: pointer;  ">审核确认</div> 
												<div class="col-xs-8"  style=" border: 1px solid #a6c9e2;    cursor: pointer;  ">无聊审核详情</div>    
									</sapn>
						</div>  -->
						 
			</div>
			
			</div>
	</div>
</div>