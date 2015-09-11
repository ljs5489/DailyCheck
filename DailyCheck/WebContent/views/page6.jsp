<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page6Ajax.js"></script>
<script>
$(function(){ getWithAjax(); });
</script>
</head>
<body>

	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page6">
		<%@ include file="explain/forPage6.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●IPT</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>

			<div class="ui-grid-b">
				<%= Sets.setBlock("a","trunk","Y","N",false) %>
				<%= Sets.setBlock("b","idle","Y","N",false) %>
				<%= Sets.setBlock("c","temperature","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","in_serv_tru1","Y","N",false) %>
				<%= Sets.setBlock("b","in_serv_tru2","Y","N",false) %>
				<%= Sets.setBlock("c","gateway","Y","N",false) %>
			</div>
			<br/>
			<div class="ui-field-contain">
				<label for="ipt_alarm">IPT_Alarm:</label>
				<textarea name="ipt_alarm" id="ipt_alarm"></textarea>
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