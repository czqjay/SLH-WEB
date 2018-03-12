<%@ page language="java" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/demo/js/classroomList.js"></script>

<script type="text/javascript">
		$(function() {
			$("#normalGrid").change(function(){
				suntoolkit.offLoadingMask();
				var normalGrid = $("#normalGrid").val();
				$("#combomyStudent").val("---请选择---");
				$('#myStudent').trigger('setDefault');
				$('#myStudent').trigger('reload',{url:'${ctxPath}/student/getStudent.action',data:{classroomId:normalGrid}});
				
			});
			
/*			classroomCRUD = {
				addStudent : function(){
					
				}
			};*/
		});	

		function clearFromClassroom(){
			$("#combomyStudent").val("---请选择---");
		}
	
		function setStudent(){
			suntoolkit.openOptions({title:'班级学生树',width:800,height:500,resizable:false,zIndex:'auto'},window.WWWROOT + "/html/demo/gettree.jsp") ;
		}
		
			
	   acSelect = function acSelect(event,args){
			args['ele'].trigger('change') ;  
		};
</script>

<div class="pageHeader">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>
				<sui:input title="班级级联学生：" size="x30"  topStyle="width:300px" >
					
					<sui:select style='width:200px' autoComboboxOptions='{select:acSelect}' defaultoption="{id:'',value:'---请选择---'}"
						id="normalGrid" name="normalGrid"
						dataUrl="${ctxPath}/student/getAllClassroom.action"
						jsonreader="{'id':'id','value':'classname'}">
					</sui:select>
					
					</sui:input>
				</td> 
				<td>
				
					<sui:input title="学生：" size="x30"  topStyle="width:300px" > 
					
					<sui:select style='width:200px' autoComboboxOptions='{select:acSelect}' defaultoption="{id:'',value:'---请选择---'}"
						id="myStudent" name="myStudent"
						>
					</sui:select>
					</sui:input>
				</td> 
			</tr> 
			<tr>
				<td>
				<sui:input title="班级学生树：" size="x30"  topStyle="width:300px" >
					<button onmouseover="$(this).addClass('ui-state-hover')" 
						onmouseout="$(this).removeClass('ui-state-hover')" 
						class="ui-state-default ui-corner-all x8" title="分配学生"  
						onclick="setStudent()"> 
						<span>班级学生树</span>
					</button>
					</sui:input>
				</td>
				
			</tr>
		</table>
	</div>
</div>
<div class="pageContent">
	<div id="classroomListGridDiv" style='height:100%'> 
		<sui:grid id="classroomListGrid" 
		pageId="classroomListGrid_page"
		 title=""
			offsetHeight="290"                                
			pkName="id" url="${ctxPath}/classroom/loadClassroomListDataGrid.action"
			otherButtons="{id:'loadtree',name:'班级学生树',title:'查看班级学生树，并查询学生班级的地址',onClick:'setStudent()',operator:'loadtree'}"			
			addClick="classroomListCRUD.addClassroom" addOperator="classroom_add" 
			editClick="classroomListCRUD.editClassroom" editOperator="classroom_edit"
			delClick="classroomListCRUD.deleteClassroom" delOperator="classroom_del" >
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="classname" title="班级"  width="100"
				align='center'></sui:gridCell>
			<sui:gridCell name="address" title="联系地址"  width="400"
				align='center'></sui:gridCell>	
		</sui:grid>
		
	</div>
</div>