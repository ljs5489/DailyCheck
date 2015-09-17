<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page1Ajax.js"></script>
</head>
<body>
	<form method="post">
		<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
		<div data-role="page" id="page1">
			<%@ include file="explain/forPage1.jsp"%>
			<%@ include file="/../include/header.jsp"%>

			<div data-role="main" class="ui-content">
				<%@ include file="../include/popup.jsp"%>

				<%@ include file="/../include/bottomTools.jsp"%>
				<%@ include file="/../include/bottomGoUp.jsp"%>
				
				<br/>
				<br/>
				<br/>
				<br/>
				<center><h2>프린트를 실행할 수 없습니다.</h2><center>
				<br/>
				<center><h1>채워지지 않은 페이지가 있습니다.</h1></center>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				<br/>
				
			</div>
			<%@ include file="/../include/footer.jsp"%>
		</div>

		<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->



	</form>


</body>


</html>