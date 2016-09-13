<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="comments.*, tools.* "%>




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

				String returnUrl = "/DailyCheck/SalesPerformance/views/StaffTarget.jsp?timer=on"; //Console에서 에러가 나면 안된다.	
				response.sendRedirect(returnUrl);

				return;
			} else
				errMsg = "비밀번호가 잘못되었습니다.";
		}
	}
%>



<html>
<head>
<style>
#errMsg{
	color:red;
	text-align:center;
}
</style>
<%@ include file="/SalesPerformance/import/include.jsp"%>
<title>Sales Performance System Login</title>


</head>

<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main">
		<h1>Sales Performance System Login</h1>

		<hr />
		<div style="min-height: 300px;">





			<form method="post" data-ajax="false">
				<!-- data-ajax="false"가 없으면 에러남. -->
				<div>
					<br />
					<h2 style="text-align: center;">비밀번호를 입력하여 주세요.</h2>
					<h4 style="text-align: center;">(IT팀에 문의하여 주세요)</h4>
					<br />
				</div>
				<div align="center">
					<input type="password" name="passwd"
						style="width: 50%; margin: auto;" />
				</div>
<br/>


				<div>
					<div align="center">
						<button id="submit" class="btn btn-small"
							style="width: 70px; height: 40px;">확인</button>
					</div>
				</div>
				<br/>
				<% if (errMsg != null) { %>
				<div id="errMsg"><%=errMsg%></div>
				<% } %>
			</form>



		</div>
		<hr />

	</div>
</body>
</html>
