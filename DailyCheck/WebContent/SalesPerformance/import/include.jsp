<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!--
HTML에서 캐시제거 
<meta http-equiv="Cache-Control" content="no-cache"/> 
<meta http-equiv="Expires" content="0"/> 
<meta http-equiv="Pragma" content="no-cache"/>
 -->
<%
	//========================================
	//System.out.println("delete Cache");
	response.setHeader("cache-control","no-cache"); 
	response.setHeader("expires","0"); 
	response.setHeader("pragma","no-cache");
	//========================================
%> 

<% String tempInclude = "/DailyCheck/SalesPerformance"; %>

<script src="<%= tempInclude %>/js/SP_data.js"></script>
<script src="<%= tempInclude %>/js/getAjax.js"></script>
<script src="<%= tempInclude %>/js/sales_graph.js"></script>
<script src="<%= tempInclude %>/js/timer.js"></script>

<script src="<%= tempInclude %>/SmartEditor/js/HuskyEZCreator.js"></script>
<script src="<%= tempInclude %>/js/se_init.js"></script>

<link rel="stylesheet" href="<%= tempInclude %>/css/matrix_lexus.css">
<link rel="stylesheet" href="<%= tempInclude %>/css/matrix_toyota.css">
<link rel="stylesheet" href="<%= tempInclude %>/css/font_size_both.css">
<link rel="stylesheet" href="<%= tempInclude %>/css/left_menu.css">
<link rel="stylesheet" href="<%= tempInclude %>/css/common.css">

<link href="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/css/bootstrap.min.css" rel="stylesheet">
<script src="http://netdna.bootstrapcdn.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

<%@ include file="/SalesPerformance/import/SetVals.jsp" %>


