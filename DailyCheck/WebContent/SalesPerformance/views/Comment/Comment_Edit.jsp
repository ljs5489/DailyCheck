<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>


<script src="../SmartEditor/js/HuskyEZCreator.js"></script>
<script src="../js/se_init.js"></script>


<title>Comment</title>


<%
RequestParameter param = new RequestParameter(request);

int aid = param.getInt("aid", 0);

String urlList = "Comment.jsp?"+ request.getQueryString().replaceAll("&?key=[a-z0-9]+&?", "");
String urlEditCheck = "Comment_Edit_Check.jsp?"+ request.getQueryString().replaceAll("&?key=[a-z0-9]+&?", "");



String title="", writer="", pw="", content="";

String cmd = param.getString("cmd", "");
String key = param.getString("key", "");



if(request.getMethod().equals("GET")){	
	Comment cmt = CommentDAO.selectByIdWithoutView(aid);
	title   = param.getString("title", cmt.getTitle());
	writer  = param.getString("writer", cmt.getWriter());
	pw      = param.getString("pw", cmt.getPw());
	content = param.getString("content", cmt.getContent());
	/*
	System.out.println("GET");
	System.out.println("title"+cmt.getTitle());
	System.out.println("pw"+cmt.getPw());
	System.out.println("writer"+writer);
	System.out.println("content.length()"+content.length());
	*/
	
	if(CommentDAO.checkPW(aid,key,true) == false){	
		System.out.println("비번 노일치!");
		 %><script> 
		 alert("비밀번호가 일치하지 않습니다.");
		 location.href = "<%=urlEditCheck%> ";	
		 </script><%
	}
}
else if(request.getMethod().equals("POST")){	
	title   = param.getString("title", "");
	writer  = param.getString("writer", "");
	pw      = param.getString("pw", "");
	content = param.getString("content", "");
	/*
	System.out.println("POST");
	System.out.println("content"+content);
	System.out.println("writer"+writer);
	System.out.println("content.length()"+content.length());
	*/
	
    if (title.length() > 0) {
        if (content.length() > 13) {
        	
            CommentDAO.updatComment(aid, writer, pw, title, content);
            %>
            <script> 
            	alert("수정되었습니다."); 
   				location.href = "<%=urlList%> ";
            </script>	            
            <%
        } else
            %><script> alert("내용을 입력하세요"); </script><%
    } else
    	    %><script> alert("제목을 입력하세요"); </script><%

}
else{
	
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
		$("#edit").click(function(){
			
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
		<h1>글을 수정합니다.</h1>

		<hr />
		<div style="min-height: 300px;">
			<form method="post">
				<div>	
					<div style="float:left;"><h5>작성자 수정:</h5> <input type="text" name="writer" value="<%= writer %>" /></div>				
					<div style="float:left; margin-left:10px;"><h5>제목 수정:</h5> <input type="text" name="title" value="<%= title %>" /></div>					
					<div style="float:left; margin-left:10px;"><h5>비밀번호 수정:</h5> <input type="text" name="pw" value="" /></div>
				</div>
	
				<textarea id="articleBody" name="content" style="width:100%" class="smarteditor2"><%= content %></textarea>
				

				<button id="edit" style="margin:5px; float:right"  type="submit"  class="btn btn-default">
					<i class="fa fa-floppy-o"></i> 수정
				</button>
				<div id="gotoList" style="margin:5px; float:right" class="btn btn-default">
					<i class="fa fa-file-text-o"></i> 목록
				</div>
			</form>
		</div>
	</div>
</body>
</html>
