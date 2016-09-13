
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

<script src="../js/func.js"></script>
<link rel="stylesheet" href="../css/style.css">





<%@ page import=" tools.* "%>
<% 
	String clientIP = RequestParameter.getClientIP(request);
	SystemWriterLog.writeLog(GetDate.getCurrentTime()+" / "+clientIP);
	
	EnvVal.getEnvSetVals();	
	//System.out.println(EnvVal.AUTH_PASSWORD);
	
	
	//System.out.println(request.getServletPath().toString()); // /views/page7.jsp
	//System.out.println(request.getRequestURL().toString()); // http://localhost:50006/DailyCheck/views/page7.jsp
	//System.out.println(request.getRequestURI().toString()); // /DailyCheck/views/page7.jsp
	
	if (UserService.isCurrentUserLoggedIn(session) == false) { 
		
		UserService.setCurrURL(session, request.getRequestURI().toString()); //세션에 현재의 URI를 넣어줌.
			
		SystemWriterLog.writeLog("No Authority!");
		String returnUrl = "/DailyCheck/views/login.jsp";	//Console에서 에러가 나면 안된다.	
		response.sendRedirect(returnUrl);
 	} 
%>


