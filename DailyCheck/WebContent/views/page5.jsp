<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page5Ajax.js"></script>

</head>
<body>

	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page5">
		<%@ include file="explain/forPage5.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●Batch Job</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>


			<div class="ui-grid-b">
				<%= Sets.setBlock("a","ebilling","Y","N",false) %>
				<%= Sets.setBlock("b","fin_SMS","Y","N",false) %>
				<%= Sets.setBlock("c","funding_SMS","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
			
				<%= Sets.setBlock("a","del_M","Y","N",false) %>				
				<%= Sets.setBlock("b","leave_Mng","Y","N",false) %>				
				<%= Sets.setBlock("c","fax_SMS","Y","N",false) %>
			</div>
			<br/>
			<div class="ui-field-contain">
				<label for="info">If Any:</label>
				<textarea name="ifany" id="ifany"></textarea>
			</div>
			<%@ include file="/../include/bottomTools.jsp"%>
			<%@ include file="/../include/bottomGoUp.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>