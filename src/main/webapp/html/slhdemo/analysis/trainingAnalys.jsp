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

#tachart1 ,#tachart2,#tachart3,#tachart4,#tachart5,#tachart6{
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
				
				  var mytachart1X=[];
			       var tachart1Data= josnStr['chart1'];
			       for(v in tachart1Data){ 
			       	mytachart1X.push(tachart1Data[v]['name']) 
			       }
				  var myChart = echarts.init(document.getElementById('tachart1'));
			       var option = { 
    title : {
        text: '所需培训内容',
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
         
        data:mytachart1X  
    },  
    calculable : true,
    series : [
        {
            name:'所需培训内容',
            type:'pie',
            radius : '30%',   
            center: ['50%', '50%'],
           // data:[
           //     {value:335, name:'直接访问'},
            //    {value:310, name:'邮件营销'},
             //   {value:234, name:'联盟广告'},
              //  {value:135, name:'视频广告'},
               // {value:1548, name:'搜索引擎'}
           // ]
            data:josnStr['chart1']  
            
            
        }
    ]
};
 myChart.setOption(option); 
        			
       var mytachart2X=[];
       var mytachart2Y=[];
       
       DWZ.debug(josnStr['chart2'])
       var tachart2Data= josnStr['chart2'];
       for(v in tachart2Data){
       	mytachart2X.push(tachart2Data[v]['name'])
       }
       DWZ.debug( mytachart2X);		
        			
      var mytachart2 = echarts.init(document.getElementById('tachart2'));    			
			       var option2 = { 
    title : { 
        text: '学历培训需求内容',
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
         
        data:mytachart2X  
    },  
    calculable : true,
    series : [
        { 
            name:'学历培训需求内容',
            type:'pie',
            radius : '30%',   
            center: ['50%', '50%'],
           // data:[
           //     {value:335, name:'直接访问'},
            //    {value:310, name:'邮件营销'},
             //   {value:234, name:'联盟广告'},
              //  {value:135, name:'视频广告'},
               // {value:1548, name:'搜索引擎'}
           // ]
            data:josnStr['chart2']   
        }
    ]
};

 mytachart2.setOption(option2);  
                      			 
        			
       var mytachart3X=[]; 
       var mytachart3Y=[];
       
       DWZ.debug(josnStr['chart3'])
       var tachart3Data= josnStr['chart3'];
       for(v in tachart3Data){ 
       	mytachart3X.push(tachart3Data[v]['name'])
       } 
       DWZ.debug( mytachart3X);		
        			 
      var mytachart3 = echarts.init(document.getElementById('tachart3'));    			
     			       var option3 = { 
    title : {  
        text: '专业技术资格培训的需求项目',
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
         
        data:mytachart3X   
    },  
    calculable : true,
    series : [
        { 
            name:'专业技术资格培训的需求项目',
            type:'pie', 
            radius : '30%',   
            center: ['50%', '50%'],
           // data:[
           //     {value:335, name:'直接访问'},
            //    {value:310, name:'邮件营销'},
             //   {value:234, name:'联盟广告'},
              //  {value:135, name:'视频广告'},
               // {value:1548, name:'搜索引擎'}
           // ]
            data:josnStr['chart3']   
        }
    ]
};
 mytachart3.setOption(option3);  			
        			 
        			
	function pie(dataSetName,divID, chartTitle){
		       var mytachartX=[];  
		       var mytachartY=[];
		       
		        DWZ.debug(dataSetName)
		       DWZ.debug(josnStr[dataSetName])
		       var tachartData= josnStr[dataSetName];
		       for(v in tachartData){  
		       	mytachartX.push(tachartData[v]['name'])
		       }  
		        			 
		      var mytachart = echarts.init(document.getElementById(divID));    			
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
		         
		        data:mytachartX   
		    },  
		    calculable : true,
		    series : [
		        { 
		            name:chartTitle,
		            type:'pie', 
		            radius : '30%',   
		            center: ['50%', '40%'],
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
		 mytachart.setOption(option); 
	}        			
     pie('chart4','tachart4','业务类培训'); 
     pie('chart5','tachart5','兴趣类培训');					
     pie('chart6','tachart6','常识类培训');  			 
			
			}) 
		</script>
		<sui:panel title="切换统计与表格信息" id='trainingAnalys'  
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
<div class="pageHeader" style="overflow:auto" style='display:inline-block'>
			    <div  style='width:33%;height:250px' id='tachart1'></div> 
				<div  style='width:33%;height:250px' id='tachart2'></div>   
				<div  style='width:33%;height:250px' id='tachart3'> </div> 
				<div  style='width:33%;height:250px'  id='tachart4'></div>  
				<div  style='width:33%;height:250px' id='tachart5'></div>   
				<div  style='width:33%;height:250px' id='tachart6'> </div>    
		</div>   
 				
		</sui:panel>
<div class="pageContent">
			
			<div id="trainingAnalysGridDiv" style='height: 100%'>
				<sui:grid id="trainingAnalysListGrid" pageId="trainingAnalysListGrid_page"
					title="" offsetHeight="290"   height='500'
					 pkName="id"
					url="${ctxPath}/training/loadTrainingAnalysListDataGrid.action">  
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='tranName' hidden="false" title='姓名' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='tranCrateTime' hidden="false" title='填报时间' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranDept' hidden="false" title='所属于科室' align='left' width='120'	 align='center'   ></sui:gridCell>
							
																 								  
							<sui:gridCell name='tranPostion' hidden="false" title='现从事岗位' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='tranNeedEducation' hidden="false" title='学历培训需求项目' align='left' width='120'	 align='center'   ></sui:gridCell>
							
							<sui:gridCell name='tranNeedProfession' hidden="false" title='专业资格培训的需求项目' align='left' width='120'	 align='center'   ></sui:gridCell>
							
							<sui:gridCell name='' hidden="false" title='其他专业资格' align='left' width='120'	 align='center'   ></sui:gridCell>
							
							<sui:gridCell name='tranBusinessType' hidden="false" title='业务类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranBusinessOther' hidden="false" title='其他业务类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranInterestType' hidden="false" title='兴趣类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranInterestOther' hidden="false" title='其他兴趣类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							
							<sui:gridCell name='tranKnowledgeType' hidden="false" title='常识类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='tranKnowledgeOther' hidden="false" title='其他常识类培训' align='left' width='120'	 align='center'   ></sui:gridCell>
						</sui:grid>  
					</div>  
			
</div>

	</body>
</html>




