<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>
<title>Board_Delete</title>


<%
	RequestParameter param = new RequestParameter(request);
	int aid = param.getInt("aid", 0);
	String usrText = param.getString("usrText", "");
	String urlGoBack = "Comment_Article.jsp?"+request.getQueryString().replaceAll("&?cmd=[a-z]+&?", "");
	String urlList = "Comment.jsp?"
			+ request.getQueryString().replaceAll("&?aid=[0-9]+&?", "").replaceAll("&?cmd=[a-z]+&?", "");

	System.out.println(usrText);
	if(request.getMethod().equals("POST")){
		if(CommentDAO.checkPW(aid,usrText,false)){
			
			CommentDAO.deleteArticle(aid);	
			 %>
			 <script> 
			 alert("삭제되었습니다.");
			 location.href = "<%=urlList%> ";	 		
			 </script>
			 <%

		}
		else{
		%> <script>alert("비밀번호가 틀립니다. 다시 시도해주세요.")</script> <%	
		}
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
		
		
		$("#menuComment").css("background-color","#cccccc");
		$("#menuComment").css("color","#111111");
		$("#menuComment").css("font-weight","bold");
	})
</script>
</head>

<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main">
		<h1><%=aid%>번 글을 삭제합니다.
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
