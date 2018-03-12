<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/sunittag" prefix="sui"%>
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<script type="text/javascript" src="${ctxPath}/html/dept/js/deptList.js"></script>
<script type="text/javascript" src="${ctxPath}/html/dept/js/currentUserForDept.js"></script>
<script type="text/javascript">
	$(function() { 
					$('#deptSearchBtn').click(function(){
						$('#deptListGrid').jqGrid("setGridParam",{url:'${ctxPath}/dept/loadDeptListDataGrid.action'});	
						deptListCRUD.reloadData({deptNo:$('#deptno').val(),departName:$('#departName').val(),departLocation:$('#departLocation').val(),sources:$('#sources').val()});
					});
			}); 
				

	function setUserForDept(keyID,deptName){
	   var url="";
	   <sui:authorization oprationGrant="depart_setUser"> 
	   url = "<span style='width: 20px;height: 32px;' class='gridButtonbg' onclick=currentUserForDeptCRUD.currentUserForDept('"+keyID+"','"+deptName+"');>&nbsp;设置用户&nbsp;</span>";
	   </sui:authorization>
	   return url;
	}


	function clearFromDept() {
		jQuery("#deptno").val("");
		jQuery("#departName").val("");
		jQuery("#departLocation").val("");
		jQuery("#sources").val("");
	}
	$("#sources").change(function(){
			    $('#deptListGrid').jqGrid("setGridParam",{url:'${ctxPath}/dept/loadDeptListDataGrid.action'});
					deptListCRUD.reloadData({sources:$('#sources').val()});
			});
			
			
</script>

<div class="pageHeader">
	<div class="searchBar">

		<table class="searchContent">
			<tr>
				<td>
					部门编号：
					<input type="text" id="deptno"  name="deptno"/>
				</td>

				<td> 
					部门名称：
					<input type="text" id='departName' name="deptName"/>
				</td>
				
				<td> 
					部门地址：
					<input type="text" id='departLocation' name="departLocation"/>
				</td>
				
				<td>
				   数据来源：
					<select id="sources">
					   <option value="">--全部--</option>
					   <option value="0">本地</option>
					   <option value="1">同步</option>
					</select>
				</td>			
			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="button" id='clearFromDept' onclick="clearFromDept()">
								重置
							</button>
						</div>
					</div>
				</li>
				<li>
					<div class="buttonActive">
						<div class="buttonContent">
							<button type="submit" id='deptSearchBtn'>
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
 
	<script type="text/javascript"> 
			function getGridHeight(){ 
				return $('.navTab-panel').height()- $('.navTab-panel .page').height()-50;		
			}   
	</script>
 
	<div id="deptListGridDiv" style='height:100%'> 
		<sui:grid id="deptListGrid" pageId="deptListGrid_page" title=""
			offsetHeight="290"
			pkName="id" url="${ctxPath}/dept/loadDeptListDataGrid.action" 
			addClick="deptListCRUD.addDept"  addOperator="depart_add" 
			editClick="deptListCRUD.editDept"  editOperator="depart_edit" 
			delClick="deptListCRUD.deleteDept" delOperator="depart_del">
			<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell>
			<sui:gridCell name="deptno" title="部门编号"  width="150"
				align='center' formatter='deptListCRUD.hrefHandle'></sui:gridCell>
			<sui:gridCell name="deptname" title="部门名称"  width="150"
				align='center'></sui:gridCell>
			<sui:gridCell name="parentDeptName" title="上级部门"  width="150"
				align='center'></sui:gridCell>
			<sui:gridCell name="location" title="部门地址"  width="250"
				align='center'>
			</sui:gridCell>
			<sui:gridCell name="note" title="备注"  width="150"
				align='center'></sui:gridCell>
			<sui:gridCell name="isenabled" title="是否开启"  width="100" 
				align='center' formatter='deptListCRUD.formatOpenIsenabled' ></sui:gridCell>	
			<sui:gridCell name="sources" title="数据来源"  width="100"
				align='center' formatter='deptListCRUD.formatOpenSources' >></sui:gridCell>	 
			<sui:gridCell name="deptname" title="操作"  width="100" 
				align='center' formatter='deptListCRUD.buttonHandle' >
			</sui:gridCell>
		</sui:grid>
		
	</div>