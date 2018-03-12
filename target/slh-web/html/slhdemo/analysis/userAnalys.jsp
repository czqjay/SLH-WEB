<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib uri="/sunittag" prefix="sui"%>
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<title>学习意向表</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
<style>

#chart1 ,#chart2,#chart3{


} 
#chart1 ,#chart2,#chart3{
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
				  var myChart = echarts.init(document.getElementById('chart1'));
				  var mytachartX=[]; 
				  for(v in josnStr['chart1']){
			       	mytachartX.push(josnStr['chart1'][v]['name']) 
			      } 
				  
			       var option = { 
    title : {
        text: '职务',
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
            name:'职务',
            type:'pie',
            radius : '55%', 
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
        			
       var myChart2X=[];
       var myChart2Y=[];
       
       DWZ.debug(josnStr['chart2'])
       var chart2Data= josnStr['chart2'];
       for(v in chart2Data){
       	myChart2X.push(chart2Data[v]['name'])
       	myChart2Y.push(chart2Data[v]['value'])
       }
       DWZ.debug( myChart2X);		
        			
      var myChart2 = echarts.init(document.getElementById('chart2'));    			
      var option2 = {
    title: {
        x: 'center',
        text: '学历' 
    },
    tooltip: {
        trigger: 'item'
    },
   
    calculable: true,
    grid: {
        borderWidth: 0,
        y: 80,
        y2: 60
    },
    xAxis: [
        {
            type: 'category',
            show: true,
            data: myChart2X
        }
    ],
    yAxis: [
        {
            type: 'value' 
        }
    ],
   
    series: [
        {
            name: '学历',
            type: 'bar',
            itemStyle: {
                normal: {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                          '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                           '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                           '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                        ];
                        return colorList[params.dataIndex]  
                    },
                    label: {
                        show: true,
                        position: 'top',
                        formatter: '{b}\n{c}'
                    }
                }
            },
            data: myChart2Y
             
        }
    ]
};

 myChart2.setOption(option2);  
                      			 
        			
       var myChart3X=[]; 
       var myChart3Y=[];
       
       DWZ.debug(josnStr['chart3'])
       var chart3Data= josnStr['chart3'];
       for(v in chart3Data){
       	myChart3X.push(chart3Data[v]['name'])
       	myChart3Y.push(chart3Data[v]['value'])
       } 
       DWZ.debug( myChart3X);		
        			 
      var myChart3 = echarts.init(document.getElementById('chart3'));    			
      var option3 = {
    title: {
        x: 'center', 
        text: '入局时间' 
    },
    tooltip: {
        trigger: 'item'
    }, 
    toolbox: { 
        show : true, 
        feature : {
         //   mark : {show: true},
          //  dataView : {show: true, readOnly: false}, 
           // magicType : {show: true, type: ['line', 'bar']},
            //restore : {show: true},   
            //saveAsImage : {show: true,type:'jpeg'} 
        } 
    },
    calculable: true,
    grid: {
        borderWidth: 0,
        y: 80,
        y2: 60
    },
    xAxis: [
        {
            type: 'category',
            show: true,
            data: myChart3X
        }
    ],
    yAxis: [
        {
            type: 'value' 
        }
    ],
   
    series: [
        {
            name: '入局时间',
            type: 'bar',
            itemStyle: {
                normal: {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                          '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                           '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                           '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                        ];
                        return colorList[params.dataIndex]  
                    },
                    label: {
                        show: true,
                        position: 'top',
                        formatter: '{b}\n{c}'
                    }
                }
            },
            data: myChart3Y
             
        }
    ]
};

 myChart3.setOption(option3);  
 
 
 
 
 
 
 	function bar(dataSetName,divID, chartTitle,X,Y){
		       var mytachartX=X; 
		       var mytachartY=Y; 
		       
		       var myChart = echarts.init(document.getElementById(divID));    			
      var option = {
    title: {
        x: 'center', 
        text: chartTitle 
    },
    calculable: true,
    grid: {
        borderWidth: 0,
        y: 80,
        y2: 60
    },
    xAxis: [
        {
            type: 'category',
            show: true,
            data: mytachartX
        }
    ],
    yAxis: [
        {
            type: 'value' 
        }
    ],
   
    series: [
        {
            name: chartTitle,
            type: 'bar', 
            itemStyle: {
                normal: {
                    color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                          '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',
                           '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                           '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                        ];
                        return colorList[params.dataIndex]  
                    },
                    label: {
                        show: true,
                        position: 'top',
                        formatter: '{b}\n{c}'
                    }
                }
            }, 
            data: mytachartY
             
        }
    ]
};
		 myChart.setOption(option); 
}
  
 bar('chart4','chart4','综合素质',['政治素质','道德品行','担当意识','廉洁从业'],[10,25,15,16]);
 bar('chart5','chart5','个人能力',[ '业务能力','带队伍能力'],[10,25]); 
 bar('chart5','chart6','工作业绩',[' 组织业绩',' 个人业绩'],[10,25]);
 
  bar('chart7','chart7','综合评价',['综合素质','个人能力','工作业绩'],[10,25,10]); 
   
 
 

a = function  (){  
  var myimage =myChart3.component.toolbox.zr.toDataURL('image/jpeg', '#fff');
  $('#mycharts').attr('href',myimage);
 } 
 setTimeout("a()",1000) 
 //myChart3.on('dataZoom',function(){alert('dataZoom')})			  
		
}) 
		</script>
		<sui:panel title="切换统计与表格信息" id='userAnalys' 
			style="width:100%;margin:0 auto;" isToggle="true" isFold="false">
<div class="pageHeader" style="overflow:auto" style='display:inline-block'>
			
			    <a href='' id='mycharts' download='mycharts'>我的图形</a>  
			    <div style='width:100%;height:250px' id='chart1'></div> 
				<div  style='width:48%;height:250px' id='chart2'></div>   
				<div  style='width:48%;height:250px' id='chart3'> </div>  
			    
		</div>   
		<div width='100%'>
 
			<div  style='width:48%;height:250px' id='chart4'> </div>   
			<div  style='width:48%;height:250px' id='chart5'> </div>    
			<div  style='width:48%;height:250px' id='chart6'> </div>    
			<div  style='width:48%;height:250px' id='chart7'> </div>   

		</div>
		</sui:panel>
<div class="pageContent">
			<div id="userTableGridDiv" style='height: 100%'>
				<sui:grid id="userTableListGrid" pageId="userTableListGrid_page"
					title="" offsetHeight="290"  height='500'
					 pkName="id"
					url="${ctxPath}/training/loadUserTableListDataGrid.action">  
					<sui:gridCell name="id" title="" hidden="true" align="center"></sui:gridCell> 
																		  
							<sui:gridCell name='mi' hidden="false" title='姓名' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='deptId' hidden="false" title='科室' align='left' width='120'	 align='center'   ></sui:gridCell>
							<sui:gridCell name='titleId' hidden="false" title='职务' align='left' width='120'	 align='center'   ></sui:gridCell>
							
																								  
							<sui:gridCell name='highestDegreeLevel' hidden="false" title='学历' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='hireDate' hidden="false" title='入局时间' align='left' width='120'	 align='center'   ></sui:gridCell>
																								  
							<sui:gridCell name='workDate' hidden="true" title='参加工作时间' align='left' width='120'	 align='center'   ></sui:gridCell>
						
																</sui:grid> 
					</div>   
</div>

	</body>
</html>




