<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>





<title>Board_Create</title>


<%
RequestParameter param = new RequestParameter(request);
int boardId = param.getInt("bid", 0);
int articleId = param.getInt("aid", 0);
int category = param.getInt("ct", 0);

boolean notice = param.getBoolean("notice", false);
String errMsg = null;


String urlList = "Comment.jsp?"+ request.getQueryString().replaceAll("&?aid=[0-9]+&?", "");


String cmd = param.getString("cmd", "");
String title = param.getString("title", "");
String writer = param.getString("writer", "");
String pw = param.getString("pw", "");
String content = param.getString("content", "");

if(request.getMethod().equals("POST")){	
	SystemWriterLog.writeLog(title);
	SystemWriterLog.writeLog(writer);
	SystemWriterLog.writeLog(pw);
	SystemWriterLog.writeLog(content);	
		
	if ("저장".equals(cmd)) {
	    if (title.length() > 0) {
	        if (content.length() > 0) {
	        	if (pw.length() > 0) {
		            CommentDAO.insertComment(writer,pw, title, content);
		    		response.sendRedirect(urlList);
		            SystemWriterLog.writeLog("password : "+pw);
		        	//EXEC sp.insertComment  '1','2','3'
	        	} else 
	        	%><script> alert("비밀번호를 입력하세요"); </script><%
	        } else
	            %><script> alert("내용을 입력하세요"); </script><%
	    } else
	    	    %><script> alert("제목을 입력하세요"); </script><%
	}
}

%>




<script>
	//Override용
	function onResized() {

	}

	$(function() {
		$("#gotoList").click(function(){
			 location.href = "<%=urlList%> ";

		});		
		
		selectedMenu("menuComment",1);
	})
</script>
</head>

<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main">
		<h1>글을 추가합니다.</h1>

		<hr />
		<div style="min-height: 300px;">
			<form method="post">
				<div>	
					<div style="float:left;"><h5>작성자:</h5> <input type="text" name="writer" value="<%= writer %>" /></div>				
					<div style="float:left; margin-left:10px;"><h5>제목:</h5> <input type="text" name="title" value="<%= title %>" /></div>					
					<div style="float:left; margin-left:10px;"><h5>비밀번호:</h5> <input type="text" name="pw" value="<%= pw %>" /></div>
				</div>
	
				<textarea id="articleBody" name="content" style="width:100%" class="smarteditor2"><%= content %></textarea>
				

				<button style="margin:5px; float:right" type="submit" class="btn btn-default" name="cmd" value="저장">
					<i class="fa fa-floppy-o"></i> 저장
				</button>
				<div id="gotoList" style="margin:5px; float:right" class="btn btn-default">
					<i class="fa fa-file-text-o"></i> 목록
				</div>
			</form>
		</div>
	</div>
</body>
</html>
