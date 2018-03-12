<%@ page language="java" pageEncoding="utf-8"%>
		<script type='text/javascript'
			src='${ctxPath}/html/portlets/actlist/actList.js'></script>
<style>
	#actportlet td {
		border: 1px solid #a6c9e2; 
		padding:5px; 
		text-align:center;
	} 
</style>

   

<table  id ='actportlet'  class="row " style="width: 100%;">
				<tr style="width: 100%; "  >
					<td class="col-xs-4" ><span>标题</span></td>
					<td class="col-xs-8" ><span>内容 </span></td>
				</tr> 
</table>     

<script type="text/javascript">

$(function(){
	actListCRUD.reload();
})
</script>




