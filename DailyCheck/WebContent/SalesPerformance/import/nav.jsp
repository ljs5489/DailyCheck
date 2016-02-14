<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<div id="menuBar" style="width:300px;">
	<img id="logo"  style="width:100%; "src="../img/financial.png"/>
	
	<div style="height:50px;"></div>
	<img id="timerPlay" src="../img/play.png"/>
	<img id="timerStop" src="../img/pause.png"/>
	
	<div style="text-align:right; color:white; font-size:20px; margin:5px;">1 Min</div>

	<div style="height:10%;"></div>
	<div style="text-align:right; color:white;" class="chart_name_ss">Sales Performance Report.</div>
	<div style="height:2%;"></div>
	
	
	<div style="height:13%;" id="menus">
		<div id='menuWhole' class='menuButton' onclick='location.href="LexusWhole.jsp"'>LEXUS TARGET</div>
		<div id='menuWhole2' class='menuButton' onclick='location.href="ToyotaWhole.jsp"'>TOYOTA TARGET</div>
		<div id='menuMain' class='menuButton' onclick='location.href="BothTarget.jsp"'>TARGET BY DEALER</div>
		<div id='menuLexus' class='menuButton' onclick='location.href="LexusTarget.jsp"'>LEXUS BY DEALER</div>
		<div id='menuToyota' class='menuButton' onclick='location.href="ToyotaTarget.jsp"'>TOYOTA BY DEALER</div>
		<div id='menuComment' class='menuButton' onclick='location.href="Comment.jsp?pg=1&od=0&ss=0&st=&sz=10"'>COMMENT</div>
	</div>

	<div style="height:10%;"></div>
	
	<div id="logo3" class="chart_name_ss"></div>
</div>
