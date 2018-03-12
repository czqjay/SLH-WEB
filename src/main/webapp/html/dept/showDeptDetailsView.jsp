<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<head>
<script type="text/javascript">

</script>

		<title>部门修改</title>
		<%-- 此组件不缓存 --%>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
	</head>
	<body>

		<style type="text/css">
label {
	color: #000000;
	display: inline;
	font-weight: bold;
	text-align: right;
	float: left
}
</style> 
<script type="text/javascript">

</script>	
		<sui:panel title="${depart.deptname}--部门修改" id='addDept' style="width:100%;margin:0 auto;"
			isToggle="true" isFold="false">
	
				<sui:field type="input">
					<sui:input title="部门编号：" size="x30" require="true">
						<input type="text" name="deptno" value="${depart.deptno}"   id ='deptno' maxlength="200"
						digitLetter="true" required="true" readonly='true' />
					</sui:input>
					<sui:input title="部门名称：" size="x30" require="true">
						<input type="text" name="deptname" value="${depart.deptname}" id ='deptName' maxlength="200"
							required="true" readonly='true' />
					</sui:input>
				</sui:field>
				
				<sui:field type="input">  
					<sui:input title="数据来源：" size="x30">
					  <c:if test="${depart.sources=='0'}">
						<input type="text" name="sources" value="本地" id="sources" 
							  readonly='true'/> 
					  </c:if>
					  <c:if test="${depart.sources=='1'}">
						<input type="text" name="sources" value="同步" id="sources" 
							  readonly='true'/> 
					  </c:if>
					</sui:input>
						
						<sui:input title="部门地址：" size="x30">
						<input type="text" name="location" value="${depart.location}" id="location" maxlength="50"
							readonly='true' /> 
					</sui:input>
			
				</sui:field>
				
  				<sui:field type="input">  
					<sui:input title="备注："  size="x300" > 
						<textarea name="note" rows="3" cols="60" readonly='true' maxlength="50">${depart.note}</textarea>
					</sui:input>
				</sui:field>
		</sui:panel>
	</body>
</html>
