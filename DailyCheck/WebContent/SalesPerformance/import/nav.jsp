<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tools.*" %>

<% String tempNav = "/DailyCheck/SalesPerformance"; %>


<script>

//$(function(){ menuMgmt(1); });

function selectedMenu(menuName,group){
	
	$("#"+menuName).css("background-color","#cccccc");
	$("#"+menuName).css("color","#111111");
	$("#"+menuName).css("font-weight","bold");
	menuMgmt(group);
}

function menuMgmt(obj){
	if(obj ==1){
		$(".group2").hide();
		$(".group1").show();
		$("#menu1").css("color","white");
		$("#menu1").css("background-color","black");
		$("#menu2").css("color","black");
		$("#menu2").css("background-color","#eeeeee");
		
		
	}
	else{
		$(".group1").hide();
		$(".group2").show();
		$("#menu1").css("color","black");
		$("#menu1").css("background-color","#eeeeee");
		$("#menu2").css("color","white");
		$("#menu2").css("background-color","black");
		
	}
	
}
</script>

<div id="menuBar" style="width:300px;">
	<img id="logo"  style="width:100%; "src="<%= tempNav %>/img/financial.png"/>
	
	<div style="height:50px;"></div>
	<img id="timerPlay" src="<%= tempNav %>/img/play.png"/>
	<img id="timerStop" src="<%= tempNav %>/img/pause.png"/>
	
	<div style="text-align:right; color:white; font-size:20px; margin:5px;">1 Min</div>

	<div style="height:10%;"></div>
	<div style="text-align:right; color:white;" class="chart_name_ss">Sales Performance Report.</div>
	<div style="height:2%;"></div>
	
	
	<div style="height:13%;" id="menus">
		
		
		<!-- 
		*<div class='menuTab' >
			*<div id="menu1" onclick="menuMgmt(1);" style="color:black; background-color:#eeeeee; border: 1px solid white; width:40%; height:95%; border-top-right-radius:10px; float:left;">Menu1</div>
			*<div id="menu2" onclick="menuMgmt(2);" style="color:black; background-color:#eeeeee; border: 1px solid white; left:30px; width:40%; height:95%; border-top-right-radius:10px;  float:left;">Menu2</div>
		*</div>
		-->
		<!-- 
		*<div id='lexusStackedTarget' class='menuButton group2' onclick='location.href="<%= tempNav %>/views/LexusStackedTarget.jsp?timer=off"'>LEXUS STACK</div>
		*<div id='toyotaStackedTarget' class='menuButton group2' onclick='location.href="<%= tempNav %>/views/ToyotaStackedTarget.jsp?timer=off"'>TOYOTA STACK</div>
		*<div id='menuPromotion' class='menuButton group2' onclick='location.href="<%= tempNav %>/views/Promotion.jsp?timer=off"'>PROMOTION RATIO</div>
		*<div id='menuSalesman' class='menuButton group2' onclick='location.href="<%= tempNav %>/views/Salesman.jsp?timer=off"'>SALESMAN</div>
		 -->
		 
		 
		<!-- 
		<div id='bothStackedTarget' class='menuButton' onclick='location.href="<%= tempNav %>/views/BothStackedTarget.jsp?timer=off"'>BOTH STACKED</div>
		-->
		
		<div id='menuWhole' class='menuButton group1' onclick='location.href="<%= tempNav %>/views/LexusWhole.jsp?timer=off"'>LEXUS TARGET</div>
		<div id='menuWhole2' class='menuButton group1' onclick='location.href="<%= tempNav %>/views/ToyotaWhole.jsp?timer=off"'>TOYOTA TARGET</div>
		<div id='menuMain' class='menuButton group1' onclick='location.href="<%= tempNav %>/views/BothTarget.jsp?timer=off"'>TARGET BY DEALER</div>
		<div id='menuLexus' class='menuButton group1' onclick='location.href="<%= tempNav %>/views/LexusTarget.jsp?timer=off"'>LEXUS BY DEALER</div>
		<div id='menuToyota' class='menuButton group1' onclick='location.href="<%= tempNav %>/views/ToyotaTarget.jsp?timer=off"'>TOYOTA BY DEALER</div>
		<div id='menuComment' class='menuButton group1' onclick='location.href="<%= tempNav %>/views/Comment/Comment.jsp?timer=off&pg=1&od=0&ss=0&st=&sz=10"'>Board</div>
	</div>

	<div style="height:10%;"></div>
	
	<div id="logo3" class="chart_name_ss"></div>
</div>
