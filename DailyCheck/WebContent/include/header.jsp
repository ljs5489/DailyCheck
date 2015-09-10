<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="tools.GetDate"%>
<!-- 반드시 패키지 안에 있어야 함. -->

<div data-role="header" data-theme="b">
	<h1><%=GetDate.getDate()%></h1>
	<a href="#myPanel"
		class="ui-btn ui-icon-search ui-btn-icon-notext ui-corner-all"></a> <a
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
		</ul>
	</div>
</div>

