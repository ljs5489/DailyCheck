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
 
 
 	
 	//========== 2016-10-11 ===========
 	if("on".equals(request.getParameter("timer"))){ //timer가 on이어서 넘어온 것이라면,
 		//session.setMaxInactiveInterval(1800); //세션 유지... 		
 	 	//SystemWriterLog.writeLog("Auto Timer Access | Session was postponed... "+session.getMaxInactiveInterval());
 		SystemWriterLog.writeLog("Auto Timer Access | Session was postponed... "+session.isNew());
 		
 	}
 	//========== /2016-10-11 ===========
 
 	//=========== 2016-09-12 권한체크 =================
	String clientIP = RequestParameter.getClientIP(request);
 	String currPg = request.getRequestURL().toString();
 
 
 
	SystemWriterLog.writeLog(GetDate.getCurrentTime()+" | "+clientIP +" | "+currPg);	
	String returnUrl = "/DailyCheck/SalesPerformance/views/Login.jsp";	//Console에서 에러가 나면 안된다.	
	
	
	
	if (UserService.isCurrentUserLoggedIn(session) == false && currPg.contains(returnUrl) == false) { 
			
		SystemWriterLog.writeLog("No Authority!");				
		response.sendRedirect(returnUrl);
		return;
 	} 
 	//=========== /2016-09-12 권한체크 =================
%>
 
 
<%
	//========================================
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


