<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="tools.*"%>
<!-- 반드시 패키지 안에 있어야 함. -->

<%
String today = Sets.getToday();
//today="20151201";
%>

<div data-role="header" data-theme="b">
	<h1><input id="mydate" name="mydate" style="text-align:center;" readonly/></h1>

	<a href="#myPanel"
		class="ui-btn ui-icon-info ui-btn-icon-notext ui-corner-all"></a> <a
		href="" class="ui-btn ui-icon-grid ui-btn-icon-notext ui-corner-all"
		id="headerTest"></a>
	<div data-role="navbar" id="myNavbar">
		<ul>
			<li><a onclick="location.href='page1.jsp'">Pre Check</a></li>
			<li><a onclick="location.href='page2.jsp'">Servers</a></li>
			<li><a onclick="location.href='page3.jsp'">Mobile Server</a></li>
			<li><a onclick="location.href='page4.jsp'">DMZ Server</a></li>
			<li><a onclick="location.href='page5.jsp'">Batch Job</a></li>
			<li><a onclick="location.href='page6.jsp'">IPT</a></li>
			<li><a onclick="location.href='page7.jsp'">Netwrok Error</a></li>
			<li><a onclick="location.href='page8.jsp'">Backup</a></li>
			<li><a onclick="location.href='print.jsp?date=<%= today %>'">Print</a></li>
			<li><a onclick="location.href='../SalesPerformance/views/SP_Both.html'">Statistics</a></li>
		</ul>
	</div>
</div>

