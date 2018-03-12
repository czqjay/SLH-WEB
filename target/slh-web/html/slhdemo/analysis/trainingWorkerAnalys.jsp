<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>学习意向表</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<script type='text/javascript'
			src='${ctxPath}/html/js/echarts-2.2.6/build/dist/echarts-all.js'></script>
<style>

#twachart1 ,#twachart2,#twachart3,#twachart4,#twachart5,#twachart6{
 display:inline-block; _zoom:1;*display:inline; /*推荐:IE67*/
} 


</style>
	</head>
	
	
	
	
	<body>
		<META http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" /> 
		<script type="text/javascript">
			$(function() { 
				var josnStr=${josns}; 
				DWZ.debug(josnStr['chart1'])  
				DWZ.debug(josnStr)  
        		
	function pie(dataSetName,divID, chartTitle){
		       var mytwachartX=[];  
		       var mytwachartY=[];
		       
		        DWZ.debug(dataSetName)
		       DWZ.debug(josnStr[dataSetName])
		       var twachartData= josnStr[dataSetName];
		       for(v in twachartData){  
		       	mytwachartX.push(twachartData[v]['name'])
		       }  
		        			 
		      var mytwachart = echarts.init(document.getElementById(divID));    			
		     			       var option = { 
		    title : {  
		        text: chartTitle,
		        subtext: '',
		        x:'center' 
		    },
		    tooltip : {
		        trigger: 'item',
		        formatter: "{a} <br/>{b} : {c} ({d}%)" 
		    },
		    legend: {
		        x : 'center',
		        y : 'bottom', 
		       // formatter: "{name)" , 
		         
		        data:mytwachartX   
		    },  
		    calculable : true,
		    series : [
		        { 
		            name:chartTitle,
		            type:'pie', 
		            radius : '50%',     
		            center: ['50%', '50%'], 
		           // data:[
		           //     {value:335, name:'直接访问'},
		            //    {value:310, name:'邮件营销'},
		             //   {value:234, name:'联盟广告'},
		              //  {value:135, name:'视频广告'},
		               // {value:1548, name:'搜索引擎'}
		           // ]
		            data:josnStr[dataSetName]   
		        }
		    ]
		};
		 mytwachart.setOption(option); 
	}        			
     pie('chart1','twachart4','业务类培训'); 
     pie('chart2','twachart5','兴趣类培训');					
     pie('chart3','twachart6','常识类培训');  			 
			
			}) 
		</script>
		<div id='trainingWorkerAnalys' style='border: 1px none; height: 100%; display: block; overflow: auto;'>
		
		<sui:panel title="切换统计与表格信息" id='trainingWorkerAnalysPanel' 
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
<div class="pageHeader" style="overflow:auto" style='display:inline-block'> 
			    <div  style='width:33%;height:480px' id='twachart4'></div>   
				<div  style='width:33%;height:480px' id='twachart5'></div>   
				<div  style='width:33%;height:480px' id='twachart6'> </div> 
		</div>    
 				
		</sui:panel> 
<div class="pageContent">
			
			<div id="trainingWorkerAnalysGridDiv" style='height: 100%'>
				<sui:grid id="trainingWorkerAnalysListGrid" pageId="trainingWorkerAnalysListGrid_page"
					title="" offsetHeight="290"  height='500'  
					 pkName="id"
					url="${ctxPath}/traningworker/loadtrainingWorkerAnalysListDataGrid.action">  
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='tranworkName' hidden="false" title='姓名' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='tranCrateTime' hidden="false" title='填报时间' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkDept' hidden="false" title='所属于科室' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkNeeds' hidden="false" title='所需工作技能培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkReason' hidden="false" title='理由' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkBusinessType' hidden="false" title='业务类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkBusinessOther' hidden="false" title='其他业务类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkInterestType' hidden="false" title='兴趣类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkInterestOther' hidden="false" title='其他兴趣类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranworkKnowledgeType' hidden="false" title='常识类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranKnowledgeOther' hidden="false" title='其他常识类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
						</sui:grid>  
					</div>   
</div>
</div>
	</body>
</html>




