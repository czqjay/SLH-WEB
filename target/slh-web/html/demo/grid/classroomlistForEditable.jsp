<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/demo/grid/js/classroomListForEditable.js"></script>
 
<script type="text/javascript">
		
		
	$(function() {
		$('#ClassroomSearchBtn').click(function(){
			$('#classroomListGridForEditable').jqGrid("setGridParam",{url:'${ctxPath}/classroomForEditable/loadClassroomListDataGrid.action'});
			classroomListCRUDForEditable.reloadData({myClassroom:$('#myClassroom').val()});
		}); 
	}); 
			 
	 function clearFromJob() {
		$("#myClassroom").val(""); 
	} 
</script>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr>
				<td>
					班级名： 
					<input type="text" id="myClassroom" name="myClassroom" />
				</td>
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='clearFromClassroom' onclick="clearFromClassroom()">
								重置
							</button> 
						</div>
					</div>
					</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='ClassroomSearchBtn'>
								检索
							</button>
						</div>
					</div>
				</li>

			</ul>
		</div>
	</div>
</div>



<div class="pageContent">
	<div id="classroomListGridDiv" style='height:100%'>  
		<sui:validate formId="classroomFormAdd" onclick="classroomFormSubmit"
				callback="classroomListCRUDForEditable.saveOrUpdate"></sui:validate>
	<form id="classroomFormAdd" method="post"
				action='${ctxPath}/classroomForEditable/classroomSave.action'>
		<sui:grid id="classroomListGridForEditable" pageId="classroomListGridForEditable_page" title=""
			offsetHeight="290"    
			pkName="id" url="${ctxPath}/classroomForEditable/loadClassroomListDataGrid.action"
			onready="classroomListCRUDForEditable.setGrid" rownumber="20"  
			addClick="classroomListCRUDForEditable.addClassroomForEditable" addOperator="grid_add" 
			editClick="classroomListCRUDForEditable.editClassroomForEditable" editOperator="grid_add" 
			delClick="classroomListCRUDForEditable.deleteClassroom" delOperator="grid_add" 
			saveClick="$.sunitnon"  saveOperator="grid_add"     
			cancelClick="classroomListCRUDForEditable.cancelClassroom"     cancelOperator="grid_add"  
			editable="true"	 editableUrl="${ctxPath}/classroomForEditable/classroomUpdate.action"   formValidate="classroomListCRUDForEditable.classroomFormValidateSubmit"  
			>
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="name" title="班级名"
			    editable="true"  edittype="text"  editoptions="{'class':'required',maxlength:'5'}"
				align='center'></sui:gridCell>  
			<sui:gridCell name="address" title="联系地址" 
				editable="true"  edittype="text"  editoptions="{'class':'required',maxlength:'5',dataEvents:{event:{type:'click',fn:function(){alert('click')}}}}" 
				align='center'></sui:gridCell>	 
			<sui:gridCell name="createdate" title="createdate"  
				editable="true"  edittype="text"   editoptions="{'class':'required',calendar:'1','class':'datePicker',format:'yyyy-MM-dd HH:mm:ss'}" 
				align='center'></sui:gridCell>	  
				
			<%-- <!--  sui:gridCell name="roleName" title="suiselect example"   
			editable="true"  edittype="suiselect"  editoptions="{maxlength:'5',style:'overflow:hidden;width:130px',jsonreader:{'id':'id','value':'deptname'},dataUrl:'${ctxPath}/dept/getDeptParentSelectBody.action'}"
			 width="250" align='center'> 
			</sui:gridCell >  --> --%>
			   
				 
				
		</sui:grid>
		</form>
	</div>
</div>