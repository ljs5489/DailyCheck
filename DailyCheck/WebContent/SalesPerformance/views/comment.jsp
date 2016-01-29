<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background-color:#292929">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../js/SP_data.js"></script>
<script src="../js/getAjax.js"></script>

<script src="../js/sales_graph.js"></script>

<link rel="stylesheet" href="../css/matrix_lexus.css">
<link rel="stylesheet" href="../css/matrix_toyota.css">
<link rel="stylesheet" href="../css/font_size_both.css">
<link rel="stylesheet" href="../css/left_menu.css">
<link rel="stylesheet" href="../css/common.css">
<script src="../js/timer.js"></script> 


<script>

$(document).ready(function(){
    $(window).resize(function(){    	
		//menuWidth = $(window).width()/10;      	
		
		//불러온 것으로 그려야 한다. 매번 요청하면 너무 느려진다.
		//google.charts.setOnLoadCallback(function(){drawCharts(new chart)});
		//google.charts.setOnLoadCallback(function(){drawCharts(new chart2)});    	
		setAllElement();   	    
		$("#menuComment").css("background-color","#cccccc");
		$("#menuComment").css("color","#111111");
		$("#menuComment").css("font-weight","bold");
		
		//$("#middleLine").css("margin-top",$(window).height()/2);
    	//$("#middleLine").css("margin-left",menuWidth+15);
    });
});
$(function(){	
	nextPage = "SP_Lexus";	
	
	setAllElement();   	    
	$("#menuComment").css("background-color","#cccccc");
	$("#menuComment").css("color","#111111");
	$("#menuComment").css("font-weight","bold");
});


</script>
 
 <!-- 순서도 중요함.. -->
 
 <script>
 

 function submitComment(obj) { 
	console.log(obj.writer);
 	$.ajax({
 		url : 'func/submitComment.jsp', 
 		type : 'get',
 		data : {
            writer : obj.writer,
            password : obj.password,
            content : obj.content,             
        },
 		contentType: "application/x-www-form-urlencoded; charset=utf-8",
 		dataType : 'json',

 		success : function(dataSet) {					
 			alert(1);
 		}
 	});
 }
 
 
 
 $(function(){
	$("#rightSide").css("width",$(window).width()-$("#menuBar").width()-15);	 
	$("#rightSide").css("margin-left",$("#menuBar").width()+15);
	$("#rightSide").css("height",$("#menuBar").height());
	
	
	$("#ok").click(function(){

		//alert($("#writerName").val() );
		//alert($("#writerPW").val());
		//alert($("#content").val());
		
		obj = {
			 writer : $("#writerName").val(),
             password : $("#writerPW").val(),
             content : $("#content").val(),             
				
		}
		submitComment(obj);
		
	});
	 
 });
 
 </script>
<style> 
	#rightSide{
		border : 1px solid red;
	}
	#bulletinBoard{
		margin:auto;
		width:100%;
		height:60%;
		margin-top:0%;		
		color:white;
		border-collapse: collapse;				
	}
	#bulletinBoardArea{
		margin:auto;
		width:80%;
		overflow-y:auto;
		height:500px;
		border : 3px solid blue;
	}
	
	#bulletinBoard tr td{
		padding:5px;
		background-color:green;
	}
	#bulletinBoard tr:hover{
		background-color:#eeeeee;
		color:#222222;
	}
	#bulletinBoard tr td{
		border : 1px solid white;
	}
	#bulletinBoard tr td:nth-child(1){
		width: 10%;
	}
	#bulletinBoard tr td:nth-child(2){
		width: 60%;
	}
	#bulletinBoard tr td:nth-child(3){
		width: 10%;
	}
	#bulletinBoard tr td:nth-child(4){
		width: 10%;
	}
	#bulletinBoard tr td:nth-child(5){
		width: 10%;
	}
	h1{
		font-size:40px;
		color:#eeeeee;
		height:10%;
		
	}
	#writeContent{
		margin:auto;
		width:80%; 
		height:60px;
		overflow:hidden;
	}
	#content{
		border : 1px solid blue;
		height:60px;

		width:80%; 
		background-color:#dddddd;
		float:left;
	}
	#ok{
		border : 1px solid blue;
		width:19%; 
		float:left;
		height:60px;
	}
 </style>
</head>
<body>
<div id ="rightSide">
<h1>COMMENT</h1>

<div id="bulletinBoardArea">
<table id = "bulletinBoard">
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
<tr><td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>조회수</td></tr>
</table>




</div>
<div id="writeContent" style="height:30px;">
작성자<input type="text" id="writerName" style="height:100%; width:15%;" ></input>
비밀번호 <input type="text" id="writerPW" style="height:100%; width:15%;"></input>

</div>

<div id="writeContent">
<textarea id="content"></textarea>
<button id="ok">Submmit</button>
</div>

</div>
<div id="menuBar">
	<img id="logo"  style="width:100%; "src="../img/financial.png"/>
	
	<div style="height:50px;"></div>
	<img id="timerPlay" src="../img/play.png"/>
	<img id="timerStop" src="../img/pause.png"/>
	
	<div style="text-align:right; color:white; font-size:20px; margin:5px;">1 Min</div>

	<div style="height:10%;"></div>
	<div style="text-align:right; color:white;" class="chart_name_ss">Sales Performance Report.</div>
	<div style="height:2%;"></div>
	<div style="height:13%;" id="menus"></div>

	<div style="height:10%;"></div>
	
	<div id="logo3" class="chart_name_ss"></div>
</div>





<!-- 
<img style="position:fixed; " id="newLoading" src="../img/support-loading.gif"/>
 -->


</body>
</html>