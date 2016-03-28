<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="/SalesPerformance/import/include.jsp" %>

<script>
    //google.charts.load('current', {packages:['corechart']});
    google.charts.setOnLoadCallback(drawChart);
  function drawChart() {
    var oldData = google.visualization.arrayToDataTable([
      ['Name', '누적금액'],
      ['Cesar', 250],
      ['Rachel', 4200],
      ['Patrick', 2900],
      ['Eric', 8200],
      ['Cesar', 250],
      ['Rachel', 4200],
      ['Patrick', 2900],
      ['Eric', 8200],
      ['Cesar', 250],
      ['Rachel', 4200],
      ['Patrick', 2900],
      ['Eric', 8200]
    ]);

    var newData = google.visualization.arrayToDataTable([
      ['Name', '누적금액'],
      ['Cesar', 370],
      ['Rachel', 600],
      ['Patrick', 700],
      ['Eric', 1500],
      ['Cesar', 370],
      ['Rachel', 600],
      ['Patrick', 700],
      ['Eric', 1500],
      ['Cesar', 370],
      ['Rachel', 600],
      ['Patrick', 700],
      ['Eric', 1500]
    ]);

    var colChartBefore = new google.visualization.ColumnChart(document.getElementById('colchart_before'));
    var colChartAfter = new google.visualization.ColumnChart(document.getElementById('colchart_after'));
    var colChartDiff = new google.visualization.ColumnChart(document.getElementById('colchart_diff'));
    var barChartDiff = new google.visualization.BarChart(document.getElementById('barchart_diff'));
    
    
	$("#colchart_diff").css("width", $(window).width()*(9/10));
	$("#colchart_diff").css("height", $(window).height()*(9/10));
	$("#chart_id").css("left", leftSpace + menuWidth);
	$("#chart_id").css("top", 15);
	$("#chart_id").css("margin", 15);
    
    
    var options = { 
    		diff: { newData: { widthFactor: 0.8 } },
    		focusTarget : "category",
    		chartArea : {
    			left : "7%",
    			top : "15%",
    			width : "86%",
    			height : "75%",	
    			
    		},
    		legend : { //범례
    			position : 'none',//'bottom',
    			textStyle : {
    				color : '#D9E8F7',
    				fontSize: 15,
    			}
    		},
    		colors : [ "#2478FF","#53FF4C" ],
    		backgroundColor : '#292929', //배경색

    		animation : {
    			duration : 1000,
    			easing : 'out',
    			/*startup : true,*/

    		},
    		hAxis : {
    			showTextEvery : 1, //얼마나 건너뛸지 정한다.
    			textStyle : {
    				color : '#D9E8F7', //강남, 서초, 용산등등의 색깔
    				bold : false,
    			},
    		},
    		vAxes : {
    			0 : { //왼쪽 y축
    				viewWindowMode : 'explicit',
    				viewWindow : {
    					//max : lineMax, //최대값
    					min : 0
    				//최소값
    				},
    				gridlines : {
    					color : ''//가로선 색깔
    				},
    				textStyle : {
    					color : '#D9E8F7'
    				},
    			},

    		},
    };

    colChartBefore.draw(oldData, options);
    colChartAfter.draw(newData, options);

    var diffData = colChartDiff.computeDiff(oldData, newData);
    colChartDiff.draw(diffData, options);
    //barChartDiff.draw(diffData, options);
    
    
    
  }
  
  $(function(){
  })
</script>


 
</head>
<body>

<div id="chart_name" class="chart_name"></div>

<%@ include file="/SalesPerformance/import/nav.jsp" %>

<img style="position:fixed; " id="newLoading" src="../img/support-loading.gif"/>

<div id="chart_id" style="width:1000px; height:600px;">
	<span id='colchart_before' style='display: none;'></span>
	<span id='colchart_after' style='display: none;'></span>
	<span id='barchart_diff' style='display: noine;'></span>
	<span id='colchart_diff' style='display: inline-block'></span>
</div>

</body>
</html>
