<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
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

			<div class="ui-grid-c">

				<%= Sets.setBlock("a","idle","Y","N",true) %>
				<%= Sets.setBlock("b","temperature","Y","N",true) %>
				<div class="ui-block-c">
					<label for="idle_val">idle_val</label> <input type="tel"
						name="idle_val" id="idle_val" data-clear-btn="true" data-mini='true'>
				</div>
				<div class="ui-block-d">
					<label for="temp_val">temp_val</label> <input type="tel"
						name="temp_val" id="temp_val" data-clear-btn="true" data-mini='true'>
				</div>
			</div>
			<div class="ui-grid-c">
				<%= Sets.setBlock("a","trunk","Y","N",true) %>
				<%= Sets.setBlock("b","in_serv_tru1","Y","N",true) %>
				<%= Sets.setBlock("c","in_serv_tru2","Y","N",true) %>
				<%= Sets.setBlock("d","gateway","Y","N",true) %>
			</div>
			<br />
			<div class="ui-field-contain">
				<label for="ipt_alarm">IPT_Alarm:</label>
				<textarea name="ipt_alarm" id="ipt_alarm"></textarea>
			</div>
			<br />
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