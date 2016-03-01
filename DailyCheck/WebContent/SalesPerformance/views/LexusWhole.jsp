<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, pages.*" %>

<html>

<head>

<%@ include file="/SalesPerformance/import/include.jsp" %>

<%@ page import= " tools.EnvVal " %>
<% Sales v = SalesDAO.getTotal("a271"); %>

<script>

if(testing == false){
	wl1 = [ [ '지점', '목표 금액', '달성 금액 '], [ "목표금액 합산", <%= v.getTarget_amt() %>, <%= v.getTm_t_funded_amt() %> ], ];
	wl2 = [ [ '지점', '목표 M/S', '달성 M/S '], [ "목표 평균M/S", <%= v.getTarget_ms() %>, <%= v.getMs_all() %> ],  ];
}
else{
	wl1 = [ [ '지점', '목표 금액', '달성 금액 '], [ "목표금액 합산", 1, 2 ], ];
	wl2 = [ [ '지점', '목표 M/S', '달성 M/S '], [ "목표 평균M/S", 30.6, 52.5],  ];
}


//OVERRIDE
var chart = function(){
	this.on_id = "chart_id"; //#chart_id에 그린다.
	this.on_head_id = "chart_name";	
	this.sort = "A271";	
	 
	this.graphHead_left = menuWidth+15+leftSpace;	
	this.graphHead_top = 15;
	this.graphHead_title = "LEXUS 전체 금액 목표";
	this.graphHead_subTitle = currentMonth+"월달 전일자 누적  ";	
	this.graphHead_title_left = "금액(백만)";
	this.graphHead_title_right = "";
	
	
	this.dataTable = wl1;
	
	//graph 설정======================================
	this.width = $(window).width()*(9/10)/2-leftSpace-40;
	this.height = $(window).height()-15;
	this.left = leftSpace + menuWidth;
	this.top = 0;
	this.margin = 15;
	this.lineWidth = 5; //선의 굵기

	this.barWidth = "25%";
	this.legendFontSize = 25;
	
	this.barMax = 0;
	this.lineMax = 12500;
	
	this.series = {
		0 : { targetAxisIndex : 0, },
		1 : { targetAxisIndex : 0, },
		2 : { targetAxisIndex : 1, type : 'bar', },
		3 : { targetAxisIndex : 1, type : 'bar', },
	};
	this.chartArea = {
			left : "11%",
			top : "15%",
			width : "87%",
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
	//================================================
}
	
	

//OVERRIDE
var chart2 = function(){
	this.on_id = "chart_id2"; //#chart_id에 그린다.
	this.on_head_id = "chart_name2";
		
	this.sort = "A271";
		
	this.graphHead_left = $(window).width()*(9/10)/2 + menuWidth+15+leftSpace;	
	this.graphHead_top = 15;
	this.graphHead_title = "LEXUS 전체 M/S 목표";
	this.graphHead_subTitle = currentMonth+"월달 전일자 누적  ";
	this.graphHead_title_left = "M/S(%)";
	this.graphHead_title_right = "";
	
		
	this.dataTable = wl2;
	
	//graph 설정======================================
	this.width = $(window).width()*(9/10)/2-leftSpace-40;
	this.height = $(window).height()-15;
	this.left = $(window).width()*(9/10)/2 + leftSpace + menuWidth;
	this.top = 0;
	this.margin = 15;
	this.lineWidth = 5; //선의 굵기

	this.barWidth = "25%";
	this.legendFontSize = 25;
	
	this.barMax = 0;
	this.lineMax = 80;
	
	this.series = {
			0 : { targetAxisIndex : 0, },
			1 : { targetAxisIndex : 0, },
			2 : { targetAxisIndex : 1, type : 'bar', },
			3 : { targetAxisIndex : 1, type : 'bar', },
		};
	this.chartArea = {
			left : "8%",
			top : "15%",
			width : "87%",
			height : "70%",		
	};
	this.graphColor = {/*
		color1 : "#2478FF",
		color2 : "#53FF4C",
		color3 : "#5BE1E1", 
		color4 : "#AF4BAD",	
		*/
			color1 : "#5BE1E1",
			color2 : "#AF4BAD",
			color3 : "#5BE1E1", 
			color4 : "#AF4BAD",	
	};
	//================================================
}

//Override용
function onResized(){
	menuWidth = $(window).width()/10;      	
	//if(testing){
		//테스트용=====================================
		google.charts.setOnLoadCallback(function(){drawCharts(new chart)});    		
		google.charts.setOnLoadCallback(function(){drawCharts(new chart2)});
		//============================================		
	//}
	//else{
		//실제 데이터용==================================
	//	getSalesWithAjax(new chart);
	//	getSalesWithAjax(new chart2);
		//=============================================
	//}	  
	$("#middleLine").css("margin-top",0);
	$("#middleLine").css("margin-left",$(window).width()*9/10/2+menuWidth);
	$("#middleLine").css("width",1);
	$("#middleLine").css("height",$(window).height());
}



$(document).ready(function(){
	$("#menuWhole").css("background-color","#cccccc");
	$("#menuWhole").css("color","#111111");
	$("#menuWhole").css("font-weight","bold");
	
	$("#middleLine").css("margin-top",$(window).height()/8);
	$("#middleLine").css("margin-left",$(window).width()*9/10/2+menuWidth);
	$("#middleLine").css("width",1);
	$("#middleLine").css("height",$(window).height()*(6/8));
});


<%@ page import= " tools.EnvVal " %>

$(function(){	
	nextPage = "<%= EnvVal.NEXT_LexusWhole %>";

	

	//if(testing){
		//테스트용=====================================
		google.charts.setOnLoadCallback(function(){drawCharts(new chart)});
		google.charts.setOnLoadCallback(function(){drawCharts(new chart2)});
		//============================================		
	//}
	//else{
		//실제 데이터용==================================
	//	getSalesWithAjax(new chart);
	//	getSalesWithAjax(new chart2);
		//=============================================
	//}	

});


</script>
 
 <!-- 순서도 중요함.. -->
</head>
<body>

<div id="chart_id"></div>
<div id="chart_name" class="chart_name_s"></div>

<div id = "middleLine"></div>

<div id="chart_id2"></div>
<div id="chart_name2" class="chart_name_s"></div>

<%@ include file="/SalesPerformance/import/nav.jsp" %>

<img style="position:fixed; " id="newLoading" src="../img/support-loading.gif"/>



</body>
</html>