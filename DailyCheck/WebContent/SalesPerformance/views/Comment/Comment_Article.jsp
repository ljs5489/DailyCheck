<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*, java.net.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>

<% 
RequestParameter param = new RequestParameter(request); 
int aid = param.getInt("aid", 0);



%>

<%
InetAddress Address = InetAddress.getLocalHost();
String userIP = Address.getHostAddress();
String userName = Address.getHostName();

//==============코멘트 쪽=================================================
String c_pw = param.getString("c_pw", "");
String c_writer = param.getString("c_writer", "");
String c_content = param.getString("c_content", "");
String cmd = param.getString("cmd", "");




//System.out.println("=>"+cmd);

Comment cmt;

if(request.getMethod().equals("POST")){	
	System.out.println(c_pw);
	System.out.println(c_writer);
	System.out.println(c_content);	
		
	if ("저장".equals(cmd)) {
		if(c_writer.length() > 0 ){
		    if (c_pw.length() > 0) {
		        if (c_content.length() > 0) {
		            ReplyDAO.insertReply(aid,c_writer,c_pw,c_content);		          	
		            c_pw="";
		            c_writer="";
		            c_content="";
		            response.sendRedirect("Comment_Article.jsp?"+ request.getQueryString());
		            //그냥 냅두면 F5누를시 댓글이 또 생성됨. 이것을 막기 위함.
		            
		        } else
		            %><script> alert("내용을 입력하세요"); </script><%
		    } else
		    	    %><script> alert("비밀번호를 입력하세요"); </script><%
		} else
			 %><script> alert("작성자를 입력하세요"); </script><%
	}
	else if ("좋아요".equals(cmd)) {
		
		if(ReplyDAO.chkLikeIt(aid, userIP, userName) > 0){
			 %><script> alert("\"좋아요\"는 내일 다시 가능합니다."); </script><%
			 System.out.println("좋아요 1회 원칙");
		}
		else{
			ReplyDAO.insertLike(aid, userIP, userName);
			System.out.println("좋아요");
			%><script> alert("좋아요!"); </script><%
		}
	
	}
	cmt = CommentDAO.selectByIdWithoutView(aid);
}
else{
	cmt = CommentDAO.selectById(aid, userIP, userName);	
}

if(cmt.getWriter().length() > 12){
	cmt.setWriter(cmt.getWriter().substring(0,12)+"...");
}
if(cmt.getTitle().length() > 55){
	cmt.setTitle(cmt.getTitle().substring(0,55)+"...");
}

ArrayList<Reply> replies = ReplyDAO.selectAll(aid);

//==============/코멘트 쪽=================================================

%>

<%
	//cmt = CommentDAO.selectByIdWithoutView(aid);
	
	//
	String urlDelete = "Comment_Delete.jsp?cmd=delete&"
			+ request.getQueryString();
	String urlList = "Comment.jsp?"
			+ request.getQueryString().replaceAll("&?aid=[0-9]+&?", "");
	String urlEdit = "Comment_Edit_Check.jsp?"
			+ request.getQueryString();
	

	
%>

<title>Comment</title>



<script>
	//Override용
	function onResized() {

	}

	$(function() {
		$("#deleteArticle").click(function(){
			 location.href = "<%=urlDelete%>";			
		});
		$(".deleteReply").click(function(){
			var pw = prompt("비밀번호를 입력하세요", "password");			
			var thisId = $(this).parent(); 			
		    
		    if (pw != null) {
		    	$.ajax({
		    		url : 'func/ReplyDeleteAjax.jsp',
		    		type : 'get',
		    		dataType : 'json',
		    		data : {
		    			chkPW:pw,
		    			sid : $(thisId).attr("data-id"),
		    			pid : <%= aid %>,
		    			
		            },
		    		success : function(data) {	
		    			alert(data.res);		
		    			//alert( $(thisId).attr("data-id") );
		    			if(data.processed == true){
		    				$(thisId).hide();
		    			}
		    			
		    		}
		    	});
		    }else{
		    	alert("비밀번호가 입력되지 않았습니다.");		    	
		    }
		});
		
		$("#gotoList").click(function(){
			 location.href = "<%=urlList%> ";
		});
		$("#editArticle").click(function(){
			 location.href = "<%=urlEdit%>";	
		});
		
		
		$("#menuComment").css("background-color","#cccccc");
		$("#menuComment").css("color","#111111");
		$("#menuComment").css("font-weight","bold");
		
	})
</script>


</head>

<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main" style="overflow-y: auto; overflow-x: hidden;">
		<h1 style="word-break:break-all;"><%=cmt.getTitle()%></h1>
			<form method="post" style="margin-bottom:10px;">
				<div>
					<span> 글쓴이 : </span><span><%=cmt.getWriter()%></span> 
					<span>| 조회 : </span><span><%=cmt.getView()%></span> 
					<span>| 댓글 : </span><span><%= cmt.getReplyCount() %></span>
					<span>| 추천 : </span><span><%= cmt.getLikeIt() %></span>
					<span>| 작성일자 : </span><span><%= cmt.getEntry_date() %></span>
	
					<div id="deleteArticle" style="margin: 5px; float: right"
						class="btn btn-default">
						<i class="fa fa-yelp"></i> 삭제
					</div>
					<div id="editArticle" style="margin: 5px; float: right"
						class="btn btn-default">
						<i class="fa fa-stack-overflow"></i> 수정
					</div>
	
					<div id="gotoList" style="margin: 5px; float: right"
						class="btn btn-default">
						<i class="fa fa-file-text-o"></i> 목록
					</div>
	
					<button id="likeIt" type="submit" name="cmd" style="margin: 5px; float: right"
						class="btn btn-default" value="좋아요">
						<i class="fa fa-thumbs-o-up"></i> 좋아요!
					</button>
			
				</div>
				<hr />
				<div style="min-height: 300px;">
					<h4 style="word-break:break-all;"><%=cmt.getContent()%></h4>
				</div>
				<hr />
				
				
				 <% for (Reply reply : replies) { %>				
				 <div data-id="<%= reply.getId() %>">
				 	<div class = "deleteReply btn btn-default" style="margin:5px; position:absolute; right:10px;" value="삭제">
							<i class="fa fa-yelp"></i> 삭제 
					</div>
					<h5> 
						작성자 : <%= reply.getWriter() %>/ 작성일 : <%= reply.getEntry_date() %>
					</h5>

					<h5 style="width: 90%; word-break:break-all; "> <%= reply.getContent() %> </h5>
				
		
					<hr />
				</div>
				<% } %>
		
				<div>	
					<div style="float:left;"><h5>작성자:</h5> <input type="text" name="c_writer" value="<%= c_writer %>" /></div>				
					<div style="float:left; margin-left:10px;"><h5>비밀번호:</h5> <input type="text" name="c_pw" value="<%= c_pw %>" /></div>					
				</div>
					<button style="margin:5px; float:right" type="submit" class="btn btn-default" name="cmd" value="저장">
						<i class="fa fa-floppy-o"></i> 저장
					</button>
				<textarea id="articleComment"  name="c_content" style="width:100%"><%= c_content %></textarea>
			</form>
		</div>

		<br />		
		<br />
</body>
</html>
