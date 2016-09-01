<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>
<title>Board_Edit_Check</title>


<%
	RequestParameter param = new RequestParameter(request);
	int aid = param.getInt("aid", 0);
	String usrText = param.getString("usrText", "");
	String urlGoBack = "Comment_Article.jsp?"+request.getQueryString();
	String url = request.getQueryString();
	
	SystemWriterLog.writeLog("url"+url);

	String urlList = "Comment.jsp?"
			+ request.getQueryString().replaceAll("&?aid=[0-9]+&?", "");

	SystemWriterLog.writeLog(usrText);
	if(request.getMethod().equals("POST")){
		
		String temp = "Comment_Edit.jsp?key="+UserService.encryptToMD5(usrText)+"&"+url;		
		SystemWriterLog.writeLog("GET : "+temp);
		
    	response.sendRedirect(temp);

	}

	//Comment cmt = CommentDAO.selectById(aid);
%>




<script>
	//Override용
	function onResized() {

	}

	$(function() {
		$("#submit").click(function(){
			$("form").submit();
		});
		$("#gotoList").click(function(){
			 location.href = "<%=urlList%> ";

		});
		$("#goback").click(function(){
			location.href = "<%=urlGoBack%> ";		
		});
		
		
		selectedMenu("menuComment",1);
	})
</script>
</head>

<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main">
		<h1><%=aid%>번 글을 수정합니다.
		</h1>

		<hr />
		<div style="min-height: 300px;">
			<form method="post">
				<div>
					<br />
					<h2 style="text-align: center;">비밀번호를 입력하여 주세요.</h2>
				</div>

				<div align="center">
					<input name="usrText" type="text" style="width: 50%;" />
				</div>
			</form>
			
			
				<div align="center">
					<button id="submit" class="btn btn-small"
						style="width: 70px; height: 40px;">확인</button>
					<button id="gotoList" class="btn btn-small"
						style="width: 70px; height: 40px;">목록</button>
					<button id="goback" class="btn btn-small"
						style="width: 70px; height: 40px;">이전</button>
				</div>
			
		</div>
		<hr />

	</div>
</body>
</html>
