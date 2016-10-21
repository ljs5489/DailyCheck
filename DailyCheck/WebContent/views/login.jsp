<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@ page import="java.util.*"%>


<html>
<head>

<style>
#errMsg{
	color:red;
	text-align:center;
}
</style>



<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script	src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>  

<link rel="stylesheet" href="../css/style.css">


<title>Login Page</title>

</head>
<%
	String errMsg = null;
	RequestParameter param = new RequestParameter(request);
	String loginId = param.getString("loginId", "");

	if (request.getMethod().equals("POST")) {
		User user = new User();//UserDAO.selectByLoginId(loginId);
		if (user != null) {
			String passwd = param.getString("passwd", "");
			//String encryptedPasswd = UserService.encryptToMD5(passwd);
			
			//System.out.println(EnvVal.AUTH_PASSWORD);
			
			if (passwd.equals(EnvVal.AUTH_PASSWORD)) { //이것은 추후 변경할 수 있도록 하자.
				UserService.login(session, user);


				String returnUrl = UserService.getCurrURL(session);
				//System.out.println(UserService.getCurrentUserName(session));
				//UserService.setCurrURL(session, request.getRequestURL().toString());
				
				
				
				
				//System.out.println("Hello : "+returnUrl);
				
				
				if (returnUrl == null){					
					returnUrl = "/DailyCheck/views/page1.jsp";	//Console에서 에러가 나면 안된다.
				}
				response.sendRedirect(returnUrl);
				
				return;
			} else
				errMsg = "비밀번호가 잘못되었습니다.";
		}
	}
%>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="">

		<br /> 
		<br />
		
		<h2>●Login</h2>
		<h5>패스워드 관련문의는 IT팀에 해주세요.</h5>
		<br />
		<form method="post" data-ajax="false"> <!-- data-ajax="false"가 없으면 에러남. -->

			<input type="password" name="passwd" />
			<div>
				<button type="submit" class="btn btn-primary">
					<i class="icon-ok icon-white"></i> Submit
				</button>
			</div>
		</form>
		<br />
		<%
			if (errMsg != null) {
		%>
		<div id="errMsg"><%=errMsg%></div>
		<br /> <br />
		<%
			}
		%>
		<%@ include file="/../include/footer.jsp"%>
	</div>
	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>