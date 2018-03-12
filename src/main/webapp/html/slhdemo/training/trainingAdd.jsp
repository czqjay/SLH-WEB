<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<%@ taglib uri="/sunittag" prefix="sui"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<head>

		<title>学习意向表添加</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/training/js/trainingForm.js'></script>
		<script type='text/javascript'
			src='${ctxPath}/html/slhdemo/training/js/trainingForm.js'></script>
	<script src="${ctxPath}/html/js/common/js/comboSelect.js"
		type="text/javascript"></script> 
	</head>
	<body>

		<style type="text/css">
label {
	color: #000000;
	display: inline;
	font-weight: bold;
	text-align: right;
	float: left;
}

#trainingAdd label {
	margin: 6px 0 0;
	//overflow: hidden; 
	position: relative;
	white-space: pre-wrap;
	width: 120px;
}

#trainingAdd li {
	margin: 5px 30px 5px 10px;
	 display:inline-block; _zoom:1;*display:inline;  /*推荐:IE67*/
}

#trainingAdd ul {
	 display:inline-block; _zoom:1;*display:inline;  /*推荐:IE67*/
}

#trainingAdd .ui-inputInWidth {
	margin: 5px 30px 0 130px;
	
}

</style>
		<script type="text/javascript">

$(function(){
	
	$('[other=1]').click(function(){ 
		if(this.checked==true){
		 $('['+$(this).attr('name')+']').show()
		  
		}else{
			$('['+$(this).attr('name')+']').hide() 	
		 	$('['+$(this).attr('name')+']:eq(0) input').val('') 	  
		}
	})

})

</script>



		<sui:panel title="学习意向表添加" id='trainingAdd'
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
			<sui:validate formId="trainingFormAdd" onclick="trainingFormSubmit" ignore=":hidden" 
				callback="trainingFormCRUD.saveOrUpdate"></sui:validate>
			<form id="trainingFormAdd" method="post" 
				action='${ctxPath}/training/trainingSave.action'>



				<sui:field type="input">
					<sui:input title="姓名："  topStyle="width:300px">  
						<input stringCH='true' type="text" name='tranName' id="tranName" value="${userName}" readonly='ture'
							maxlength='222' />
					</sui:input>
 

					<sui:input title="所属科室："  topStyle="width:300px">
						<input stringCH='true' type="text" name='tranDept' id="tranDept" value="${departName}" readonly='ture' 
							maxlength='222' />
					</sui:input>

 
				
				</sui:field>

				<sui:field type="input">
			
					<sui:input title="现从事的岗位：" size="x30" topStyle="width:300px" require="true"> 
									<sui:select  id="tranPostion" name='tranPostion'
										defaultoption="[{'id':'','value':'请选择'},{'id':'综合管理岗','value':'综合管理岗'},{'id':'税收管理岗','value':'税收管理岗'},{'id':'税收征收岗','value':'税收征收岗'},{'id':'风险管理岗','value':'风险管理岗'},{'id':'数据分析岗','value':'数据分析岗'},{'id':'纳税服务岗','value':'纳税服务岗'},{'id':'收入规划核算岗','value':'收入规划核算岗'},{'id':'规费管理岗','value':'规费管理岗'},{'id':'信息技术岗','value':'信息技术岗'}]"
										jsonreader="{'id':'id','value':'value'}">
									</sui:select>
								</sui:input>
				</sui:field>

				<sui:field type="input">
					<sui:input title="以后希望从事岗位(请选择1至3个)：" topStyle="width:100%" require="true"> 


						<ul style="display: inline-block; text-align: left; width: 100%;"
							id='tranExpectposUL'>
							<li 
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="综合管理岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">综合管理岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="税收管理岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">税收管理岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="税收征收岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">税收征收岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="风险管理岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">风险管理岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="数据分析岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">数据分析岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="纳税服务岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">纳税服务岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="收入规划核算岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">收入规划核算岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="规费管理岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">规费管理岗</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranExpectpos" value="信息技术岗"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">信息技术岗</span>
							</li>



						</ul>


					</sui:input>

				</sui:field>


				<sui:field type="input">
					<sui:input title="所需培训内容：" topStyle="width:100%" require="true">
						<ul style="display: inline-block; text-align: left; width: 100%;"
							id='tranNeedTypeUL'>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedType" value="学历培训"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								学历培训
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedType" value="专业技术资格培训"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								专业资格培训
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedType" value="日常培训"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								日常培训
							</li>
							
						</ul>
					</sui:input>

				</sui:field>


				<sui:field type="input">
					<sui:input title="三年内有无学历培训需求：" topStyle="width:100%" require="true">

						<ul style="display: inline-block; text-align: left; width: 100%;"
							id='tranNeedEducationUL'>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedEducation" value="大专/本科"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								大专/本科
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedEducation" value="硕士研究生"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								硕士研究生
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedEducation" value="博士研究生"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								博士研究生
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedEducation" value="无"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								无
							</li>
						</ul>

					</sui:input>

				</sui:field>


				<sui:field type="input">
					<sui:input title="专业资格培训的需求项目：" topStyle="width:400px" require="true">

						<ul style="display: inline-block; text-align: left; width: 100%;"
							id='tranNeedProfessionUL'>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedProfession" value="注册会计师"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								注册会计师
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedProfession" value="注册税务师"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								注册税务师
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedProfession" value="律师"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								律师
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="radio" name="tranNeedProfession"  
									value="无"
									style="margin-top: 0px; width: 14px; vertical-align: middle;" />
								无
							</li>
						</ul>

					</sui:input>


					<sui:input title="计划：" topStyle="width:350px" require="true">
						<sui:select id="tranPlanYear" name='tranPlanYear'
							defaultoption="[{'id':'','value':'请选择'},{'id':'1','value':'1年'},{'id':'2','value':'2年'},{'id':'3','value':'3年'},{'id':'4','value':'4年'}]"
							jsonreader="{'id':'id','value':'value'}">
						</sui:select>
						<span style="margin-top: 0px; width: 61px;">年内取得资格</span>

					</sui:input>

				</sui:field>


				<sui:field type="input">
					<sui:input title="业务类培训：" topStyle="width:100%" require="true">

						<ul style="display: inline-block; text-align: left; width: 100%;"
							id='tranBusinessTypeUL'>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='财务会计'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">财务会计</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='公文写作'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">公文写作</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='税收政策解读'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">税收政策解读</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='社保业务'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">社保业务</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='风险管理'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">风险管理</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='税收征管'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">税收征管</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranBusinessType" value='其他'
									other=1
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">其他</span>
							</li>
						</ul>
					</sui:input> 
				</sui:field>


				<sui:field type="input" style='display: none' attrs="{tranBusinessType:1}">
					<sui:input title="其他业务类培训：" size="x30" topStyle="width:100%" require="true">
						<input type="text" name='tranBusinessOther' id="tranBusinessOther"
							maxlength='1111' />
					</sui:input>

				</sui:field>


				<sui:field type="input">
					<sui:input title="兴趣类培训：" topStyle="width:100%" require="true"> 
						<ul style="display: inline-block; text-align: left; width: 100%;" 
							id='tranInterestTypeUL'>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="篮球"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">篮球</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="羽毛球"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">羽毛球</span>
							</li>

							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="乒乓球"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">乒乓球</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="足球"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">足球</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="瑜伽"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">瑜伽</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="书画"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">书画</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="棋牌"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">棋牌</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="太极"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">太极</span>
							</li>

							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="舞蹈"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">舞蹈</span>
							</li>

							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="游泳"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">游泳</span>
							</li>

							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="摄影"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">摄影</span>
							</li>

							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="台球"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">台球</span>
							</li>

							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="健身操"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">健身操</span>
							</li>

							<li
								style="width: 150px; display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranInterestType" value="其他"
									other='1'
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">其他</span>
							</li>
						</ul>
					</sui:input>
				</sui:field>


				<sui:field type="input" style='display: none' attrs="{tranInterestType:1}">
					<sui:input title="其他兴趣类培训：" topStyle="width:100%" require="true">
						<input type="text" name='tranInterestOther' id="tranInterestOther"
							maxlength='2000' />
					</sui:input>

				</sui:field>


				<sui:field type="input">
					<sui:input title="常识类培训：" topStyle="width:100%" require="true">


						<ul style="display: inline-block; text-align: left; width: 100%;"
							id='tranKnowledgeTypeUL'>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranKnowledgeType" value="养身保健"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">养身保健</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranKnowledgeType" value="情绪管理"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">情绪管理</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px;">
								<input type="checkbox" name="tranKnowledgeType" value="科普知识"
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">科普知识</span>
							</li>
							<li
								style="display: inline-block; float: left; margin-left: 10px; margin-right: 30px; ">
								<input type="checkbox" name="tranKnowledgeType" value="其他" other=1
									style="margin-top: 0px; width: 14px; vertical-align: middle;"
									maxlength="200">
								<span style="margin-top: 0px; width: 61px;">其他</span>
							</li>



						</ul>

					</sui:input>

				</sui:field>


				<sui:field type="input" style='display: none' attrs="{tranKnowledgeType:1}">
					<sui:input title="其他常识类培训：" size="x30" topStyle="width:100%" require="true"> 
						<input type="text" name='tranKnowledgeOther'  
							id="tranKnowledgeOther" maxlength='2000'  />  
					</sui:input>
				</sui:field>
				

				<sui:field type="button" style="margin-left:10px">
					<input type='checkbox' slhFlag='closeFlag' ${  param.closeFlag==
						'false'?'':'checked=1 '  }  
				  title='保存后关闭窗口'></input>
					<sui:button title="保存"
						onclick='trainingFormCRUD.trainingFormValidateSubmit()'></sui:button>
					<sui:button title="取消" onclick="suntoolkit.destroyDialog(this)"></sui:button>
				</sui:field>

			</form>
		</sui:panel>
		<script type="text/javascript">

$(function(){
	$('#combotranPlanYear').width('70px') 
})

</script>
	</body>
</html>
