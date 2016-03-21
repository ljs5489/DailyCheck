<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="/SalesPerformance/import/include.jsp" %>

<script>
//OVERRIDE
var chart = function(){
	this.on_id = "chart_id"; //#chart_id에 그린다.
	this.on_head_id = "chart_name";	
	this.sort = "A271";	
	this.graphHead_left = menuWidth+15+leftSpace;	
	this.graphHead_top = 15;
	this.graphHead_title = "월별 영업 목표/실적";
	this.graphHead_subTitle = currentMonth+"월달 전일자까지  ";

	this.graphHead_title_left = "M/S(%)";
	this.graphHead_title_right = "금액(백만)";
	//---------------------------
	this.dataTable = stackedData1; //데이터 셋 설정
	//---------------------------
	
	//graph 설정======================================
	this.width = $(window).width()*(9/10)-leftSpace-30;
	this.height = $(window).height()-30,
	this.left = leftSpace + menuWidth;
	this.top = 0;
	this.margin = 15;
	this.lineWidth = 5; //선의 굵기

	this.barWidth = "30%";
	this.legendFontSize = 20;	
	this.barMax = 2000;

	this.lineMax = 100;
	this.series = {
			0 : { targetAxisIndex : 1, },
			1 : { targetAxisIndex : 1, },
			2 : { targetAxisIndex : 0, type : 'line', },
			3 : { targetAxisIndex : 0, type : 'line', },
		};
	this.chartArea = {						
			left : "4%",
			top : "15%",
			width : "90%",
			height : "70%",			
		};
	this.graphColor = {/*
			color1 : "#2478FF",
			color2 : "#53FF4C",
			color3 : "#5BE1E1", 
			color4 : "#AF4BAD",	
			*/
			color1 : "#2478FF",
			color2 : "#53FF4C",
			color3 : "#5BE1E1", 
			color4 : "#AF4BAD",	
		};
	this.isStacked = true;
	//===============================================
}	

</script>

<script>



//Override용
function onResized(){
	menuWidth = $(window).width()/10;      	
	
	//getSalesWithAjax(new chart);
	//불러온 것으로 그려야 한다. 매번 요청하면 너무 느려진다.
	google.charts.setOnLoadCallback(function(){drawCharts(new chart)});
	 
}

<%@ page import= " tools.EnvVal " %>

$(function(){	
	nextPage = "<%= EnvVal.NEXT_LexusTarget %>";
	
	$("#toyotaStackedTarget").css("background-color","#cccccc");
	$("#toyotaStackedTarget").css("color","#111111");
	$("#toyotaStackedTarget").css("font-weight","bold");
	    
	
	if(testing){
		//테스트용=====================================
		google.charts.setOnLoadCallback(function(){drawCharts(new chart)});
		//============================================		
	}
	else{
		//실제 데이터용==================================
		getSalesWithAjax(new chart);
		//=============================================
	}
});


</script>
 
</head>
<body>

<div id="chart_id"></div>
<div id="chart_name" class="chart_name"></div>

<%@ include file="/SalesPerformance/import/nav.jsp" %>

<img style="position:fixed; " id="newLoading" src="../img/support-loading.gif"/>



</body>
</html>