<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="tools.*" %>

<% String tempNav = "/DailyCheck/SalesPerformance"; %>

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
		<div id='stackedTarget' class='menuButton' onclick='location.href="<%= tempNav %>/views/StackedTarget.jsp?timer=off"'>STACKED TARGET</div>
		<div id='bothStackedTarget' class='menuButton' onclick='location.href="<%= tempNav %>/views/BothStackedTarget.jsp?timer=off"'>BOTH STACKED</div>
		 -->
		
		<div id='menuWhole' class='menuButton' onclick='location.href="<%= tempNav %>/views/LexusWhole.jsp?timer=off"'>LEXUS TARGET</div>
		<div id='menuWhole2' class='menuButton' onclick='location.href="<%= tempNav %>/views/ToyotaWhole.jsp?timer=off"'>TOYOTA TARGET</div>
		<div id='menuMain' class='menuButton' onclick='location.href="<%= tempNav %>/views/BothTarget.jsp?timer=off"'>TARGET BY DEALER</div>
		<div id='menuLexus' class='menuButton' onclick='location.href="<%= tempNav %>/views/LexusTarget.jsp?timer=off"'>LEXUS BY DEALER</div>
		<div id='menuToyota' class='menuButton' onclick='location.href="<%= tempNav %>/views/ToyotaTarget.jsp?timer=off"'>TOYOTA BY DEALER</div>
		<div id='menuComment' class='menuButton' onclick='location.href="<%= tempNav %>/views/Comment/Comment.jsp?timer=off&pg=1&od=0&ss=0&st=&sz=10"'>Board</div>
	</div>

	<div style="height:10%;"></div>
	
	<div id="logo3" class="chart_name_ss"></div>
</div>
