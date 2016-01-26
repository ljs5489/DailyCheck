<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<html style="background-color:#292929">

<head>
<meta charset="utf-8" /> 
<script src="../js/SP_data.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<script>google.charts.load('current', {'packages':["corechart", "gauge"]});</script>

<link rel="stylesheet" href="../css/font_size.css">
<style>
*{
    font-family: Arial;
}
#menuBar{
	background: -webkit-linear-gradient(bottom,  rgba(0,0,0,0.65) 0%,rgba(0,0,0,0) 100%); /* Chrome10-25,Safari5.1-6 */
	border-right:2px solid #eeeeee;
	padding:4px;
	border-style: double;
	box-shadow: 5px 5px 5px #454545;
}

</style>



<script>
var menuWidth = $(window).width()/10;
var scaleWidth = 0;//(window).width()*(1.2/10);

var LGraphX = $(window).width()*(9/10)-scaleWidth; 
var LGraphY = $(window).height()/2-5;
var LMatrixX = $(window).width()*(4/10);
var LSubMatrixX = $(window).width()*(4/10);
var LGraphLeft = scaleWidth + menuWidth;
var LGraphTop = 0;
var LGraphMargin = 15;
var LLineWidth = 3;
var chart_nameLeft = 10+scaleWidth + scaleWidth;

var TGraphX = $(window).width()*(9/10)-scaleWidth; 
var TGraphY = $(window).height()/2-5;
var TMatrixX = $(window).width()*(4/10);
var TSubMatrixX = $(window).width()*(4/10);
var TGraphLeft = scaleWidth + menuWidth;

var TGraphTop = 0;
var TGraphMargin = 15;
var chart_name2Left = 10;

var LMatrixMarginX = 15;
var LMatrixMarginY = 15;

var TMatrixMarginX = 15;
var TMatrixMarginY = 15;
var TLineWidth = 3;

var myTimer;
var temp=0;
var timerOnOff='off';
var nextPage = "salesPerformance2";



</script>


<script>


//왼쪽 메뉴바 셋팅

$(function(){
	$("#menuBar").css("width",menuWidth);
	$("#menuBar").css("height","100%");
	$("#menuBar").css("position","absolute");
	$("#menuBar").css("top",0);
	$("#menuBar").css("left",0);
	
	$("#logo").css("margin-top",menuWidth/2); //이미지마크로고	
	$("#logo3").css("width",menuWidth); //all right reserverd.

});

</script>







<!-- <script src="../js/circleChartGraph.js"></script> -->
<script src="../js/sales_graph_lexus.js"></script>
<script src="../js/sales_graph_toyota.js"></script>

<link rel="stylesheet" href="../css/matrix_lexus.css">
<link rel="stylesheet" href="../css/matrix_toyota.css">


<script>
$(function(){
	var distance = 0; //렉서스와 토요타 사이의 간격
	var temp_height = Number($(window).height()/2)-Number($("#sub_matrix_id").height())-distance;
	
	$("#matrix_id").css("height",temp_height-LMatrixMarginY*2);
	//$("#sub_matrix_id").css("top",$("#matrix_id").height()+TMatrixMarginY);
	
	$("#matrix_id2").css("height",temp_height-TMatrixMarginY*2);
	$("#matrix_id2").css("bottom",$("#sub_matrix_id2").height()+TMatrixMarginY);	
	
	$("#middleLine").css("margin-top",$(window).height()/2);
	$("#middleLine").css("margin-left",menuWidth+15);
	
	$("#chart_name").css("margin-left",menuWidth+LGraphMargin);
	$("#chart_name").css("margin-top",15);
	$("#chart_name2").css("margin-left",menuWidth+TGraphMargin);
	$("#chart_name2").css("margin-top",$(window).height()/2+15);

	
	Date.prototype.yyyymmdd = function() {
	   var yyyy = this.getFullYear().toString();
	   var mm = (this.getMonth()+1).toString(); // getMonth() is zero-based
	   var dd  = this.getDate().toString();
	   return yyyy +"-"+ (mm[1]?mm:"0"+mm[0]) +"-"+ (dd[1]?dd:"0"+dd[0]); // padding
	};	
	d = new Date();
	d.setDate(d.getDate()-1);
	

	
	/* 테이블을 생성한다. */
	//createTable(ld,$("#matrix_id"));
	//createTable(td,$("#matrix_id2"));		
		
	getSalesWithAjaxLexus();
	getSalesWithAjaxToyota();


	$("#newLoading").css("top",($(window).height()/2-$(window).height()*(1/20)));
	$("#newLoading").css("left",($(window).width()+menuWidth)/2-$(window).height()*(1/20));
	$("#newLoading").css("width",$(window).height()*(1/10));
	$("#newLoading").css("height",$(window).height()*(1/10));
	


});


</script>
 
 <!-- 순서도 중요함.. -->

<script src="../js/timer.js"></script> 
</head>
<body style="margin:0px; position: absolute; top:0px; left:0px; width:100%; height:100%; overflow:hidden;">




<div id="chart_id"></div>
<div id="chart_name"></div>


 <!-- <table id="matrix_id" style="display:none;"></table>  -->
<div id = "middleLine" style="display :none;border: 1px solid white; box-shadow: 1px 1px 1px #eeeeee; border-style: groove;"></div>


<div id="chart_id2"></div>
<div id="chart_name2"></div>
 <!-- <table id="matrix_id2" style="display:none;"></table> -->



<div id="menuBar">
<img id="logo"  style="width:100%; "src="../img/financial.png"/>

<div id="logo3" style="position:absolute; color: white; text-align:right; left: 0px; bottom:10px; ">Version 0.002<div style="height:50px;"></div>COPYRIGHT 2016 TOYOTA FINANCIAL ALL RIGHT RESERVED.</div>

<div style="height:50px;"></div>
<img id="timerPlay" src="../img/play.png"/>
<img id="timerStop" src="../img/pause.png"/>

<div style="text-align:right; color:white; font-size:20px; margin:5px;">1 Min</div>



<div id="pageMove" style="width:100%; margin:auto;margin-top:30px;">
<img id="arrow_l"  style="width:32%; float:left;"src="../img/arrow_l.png" onclick="location.href='salesPerformance4.html'"/>
<img id="arrow_r"  style="width:32%; float:right;"src="../img/arrow_r.png" onclick="location.href='salesPerformance2.html'"/>
</div>

<div style="height:30%;"></div>
<b><div style="text-align:right; color:white; font-size:21px;" onclick="">Sales Performance Report.</div></b>
</div>

<!-- 
<div id="circleChart1" style="position:fixed; border:2px solid red;"></div>
<div id="circleChart2" style="position:fixed; border:2px solid red;"></div>
<div id="circleChart3" style="position:fixed; border:2px solid red;"></div>
<div id="circleChart4" style="position:fixed; border:2px solid red;"></div>
 -->

<img style="position:fixed; " id="newLoading" src="../img/support-loading.gif"/>



</body>
</html>