<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tools.*" %>


<%
	EnvVal.getEnvSetVals();
	int margin = Integer.parseInt(EnvVal.ENTIRE_MARGIN); //전체 마진
	int testing = Integer.parseInt(EnvVal.TESTING); //테스트여부
	int timeTerm = Integer.parseInt(EnvVal.TIME_TERM); //시간간격
	String currentVersion = EnvVal.CURRENT_VERSION; //버젼
	
%>


<script>

var testing = <%= testing %>
var timeTerm = <%= timeTerm %>
var currentVersion = <%= currentVersion %>

var header_name_margin_top = 10;
var menuWidth = $(window).width()/10;
var leftSpace = <%= margin %>;

var timerOnOff='off';
var myTimer;
var temp=0;




$(function(){		
	//$("body").width($("html").width());
	//$("body").height($("html").height());
	//$("html").width($(window).width());
	//$("html").height($(window).height());
	
	setAllElement(); //반응형
	var onResizeStop;
	$(window).resize(function(){ 		
		//console.log("resizing..."+onResizeStop);
		//$("html").width($(window).width());
		//$("html").height($(window).height());
		clearInterval(onResizeStop);
		onResizeStop = setInterval(function(){ 
			setAllElement();
			onResized();
			//console.log($(window).width());
			
			//console.log("ok!..."+onResizeStop);
		    clearInterval(onResizeStop);
		}, 200);				 
	});		
});
function onResized(){ }


function setAllElement(){
	menuWidth = $(window).width()/10;

	//배경색 설정
	$("body").css("background-color","#292929");	
	
	$("#timerPlay").css("width",menuWidth*0.3);
	$("#timerPlay").css("height",menuWidth*0.3);
	$("#timerStop").css("width",menuWidth*0.3);
	$("#timerSTop").css("height",menuWidth*0.3);
	
	$("#menuBar").css("width",menuWidth);
	$("#menuBar").css("height","100%");
	$("#menuBar").css("position","absolute");
	$("#menuBar").css("top",0);
	$("#menuBar").css("left",0);
	
	$("#newLoading").css("top",($(window).height()/2-$(window).height()*(1/20)));
	$("#newLoading").css("left",($(window).width()+menuWidth)/2-$(window).height()*(1/20));
	$("#newLoading").css("width",$(window).height()*(1/10));
	$("#newLoading").css("height",$(window).height()*(1/10));
	
	$("#logo").css("margin-top",menuWidth/2); //이미지마크로고	
	$("#logo3").css("width",menuWidth); //all right reserverd.
	
	$("#logo3").html("Version "+currentVersion+"<div style='height:50px;'></div> COPYRIGHT 2016 TOYOTA FINANCIAL ALL RIGHT RESERVED.");
		
	$(".main").css("width",$(window).width()*(9/10)-leftSpace-30);
	$(".main").css("height",$(window).height()-30);
	$(".main").css("margin",<%= margin %>);
	$(".main").css("position","absolute");
	$(".main").css("right","0");
	$(".main").css("bottom","0");
	/*
	//메뉴 추가==================================================================================
	var menus = ""
	+"<div id='menuWhole' class='menuButton' onclick='location.href=\"SP_Both_Whole_Lexus.html\"'>LEXUS TARGET</div>"
	+"<div id='menuWhole2' class='menuButton' onclick='location.href=\"SP_Both_Whole_Toyota.html\"'>TOYOTA TARGET</div>"
	+"<div id='menuMain' class='menuButton' onclick='location.href=\"SP_Both.html\"'>TARGET BY DEALER</div>"
	+"<div id='menuLexus' class='menuButton' onclick='location.href=\"SP_Lexus.html\"'>LEXUS BY DEALER</div>"
	+"<div id='menuToyota' class='menuButton' onclick='location.href=\"SP_Toyota.html\"'>TOYOTA BY DEALER</div>"
	+"<div id='menuComment' class='menuButton' onclick='location.href=\"SP_Comment.html\"'>COMMENT</div>"	
	+"";
	$("#menus").html(menus);
	*/

}

</script>

