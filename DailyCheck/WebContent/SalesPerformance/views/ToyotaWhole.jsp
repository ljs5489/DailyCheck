<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, pages.*" %>

<html>

<head>

<%@ include file="/SalesPerformance/import/include.jsp" %>

<%@ page import= " tools.EnvVal " %>


<% 
Sales v = new Sales();
if(EnvVal.TESTING.equals("1")){	
	v.setTarget_amt("4000");	
	v.setTm_t_funded_amt("3000");
	v.setTarget_ms("38.5");
	v.setMs_all("20.6");	
}else{
	v = SalesDAO.getTotal("a272");	
}
%>


<script>


wt1 = [ [ '지점', '목표 금액', '달성 금액 '], [ "목표금액 합산", <%= v.getTarget_amt() %>, <%= v.getTm_t_funded_amt() %> ], ];
wt2 = [ [ '지점', '목표 M/S', '달성 M/S '], [ "목표 평균M/S", <%= v.getTarget_ms() %>, <%= v.getMs_all() %> ],  ];



//OVERRIDE
var chart = function(){
	this.on_id = "chart_id"; //#chart_id에 그린다.
	this.on_head_id = "chart_name";	
	this.sort = "A272";	
	
	this.graphHead_left = menuWidth+15+leftSpace;	
	this.graphHead_top = 15;
	this.graphHead_title = "TOYOTA 전체 금액 목표";
	this.graphHead_subTitle = currentMonth+"월달 전일자 누적 ("+d.yyyymmdd()+")";	
	this.graphHead_title_left = "금액(백만)";
	this.graphHead_title_right = "";
	
	
	this.dataTable = wt1;
	
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
	/*this.lineMax = 5000;*/
	
	this.series = {
		0 : { targetAxisIndex : 0, },
		1 : { targetAxisIndex : 0, },
		2 : { targetAxisIndex : 1, type : 'bar', },
		3 : { targetAxisIndex : 1, type : 'bar', },
	};
	this.chartArea = {
			left : "10%",
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
		
	this.sort = "A272";
		
	this.graphHead_left = $(window).width()*(9/10)/2 + menuWidth+15+leftSpace;	
	this.graphHead_top = 15;
	this.graphHead_title = "TOYOTA 전체 M/S 목표";
	this.graphHead_subTitle = currentMonth+"월달 전일자 누적 ("+d.yyyymmdd()+")";
	this.graphHead_title_left = "M/S(%)";
	this.graphHead_title_right = "";
	
		
	this.dataTable = wt2;
	
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
	//this.lineMax = 50;
	
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
	
	selectedMenu("menuWhole2",1);
	
	$("#middleLine").css("margin-top",$(window).height()/8);
	$("#middleLine").css("margin-left",$(window).width()*9/10/2+menuWidth);
	$("#middleLine").css("width",1);
	$("#middleLine").css("height",$(window).height()*(6/8));
	
});



<%@ page import= " tools.EnvVal " %>

$(function(){	
	nextPage = "<%= EnvVal.NEXT_ToyotaWhole %>";

	

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