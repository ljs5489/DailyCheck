<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>
<title>Comment</title>



<script>
	//Override용
	function onResized() {

	}

	$(function() {

	})
</script>


</head>
<%

RequestParameter param = new RequestParameter(request);
int aid = param.getInt("aid", 0);

Comment cmt = CommentDAO.selectById(aid);




%>
<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main">
		<h1>글을 삭제합니다.</h1>
		
		<hr />
		<div style="min-height: 300px;">
			<div >
				<br/>
				<h2 style="text-align:center;">비밀번호를 입력하여 주세요.	</h2>
			</div>
			<div align="center">
				<input name="usrText" type="text" style="width:50%;"/>
			</div>
			<div align="center">
				<button type="submit" class="btn btn-small" style="width:70px; height:40px;">확인</button>
				<button type="submit" class="btn btn-small"  style="width:70px; height:40px;">목록</button>
				<button type="submit" class="btn btn-small" style="width:70px; height:40px;">이전</button>
	        </div>
        </div>
		<hr />

	</div>
</body>
</html>
