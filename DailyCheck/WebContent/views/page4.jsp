<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page4Ajax.js"></script>
<script>
$(function(){ getWithAjax(); });
</script>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page4">
		<%@ include file="explain/forPage4.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●DMZ Server</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>


			<h3>TFSITNWEB (Host)</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NWCPU","Y","N",false) %>
				<%= Sets.setBlock("b","NWmemory","Y","N",false) %>
				<%= Sets.setBlock("c","NWvaccine","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NWupdate","Y","N",false) %>
				<%= Sets.setBlock("b","NWstatus","Good","Bad",false) %>
			</div>
			<h3>TFSITNSPAM (Guest)</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NSCPU","Y","N",false) %>
				<%= Sets.setBlock("b","NSmemory","Y","N",false) %>
				<%= Sets.setBlock("c","NSvaccine","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NSupdate","Y","N",false) %>
				<%= Sets.setBlock("b","NSstatus","Good","Bad",false) %>
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