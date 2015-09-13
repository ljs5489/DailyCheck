<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page7Ajax.js"></script>
<script>
$(function(){ getWithAjax(); });
</script>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page7">
		<%@ include file="explain/forPage7.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●Network Error</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>

			<div class="ui-grid-b">
				<%= Sets.setBlock("a","network_conn","Y","N",false) %>
				<%= Sets.setBlock("b","firm_banking","Y","N",false) %>
				<%= Sets.setBlock("c","vpn_21","Y","N",false) %>
			</div>
			<!-- set -->
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vpn_31","Y","N",false) %>
				<%= Sets.setBlock("b","vpn_200","Y","N",false) %>
				<%= Sets.setBlock("c","vpn_254","Y","N",false) %>
			</div>
			<!-- /set -->

			<!-- set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="network_err">Network Err:</label> <input type="tel"
						name="network_err" id="network_err" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="internet_spd">Internet Spd:</label> <input type="tel"
						name="internet_spd" id="internet_spd" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="traffic_IDC">Traffic(IDC):</label> <input type="tel"
						name="traffic_IDC" id="traffic_IDC" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="internet_traffic">Internet Traffic:</label> <input type="tel"
						name="internet_traffic" id="internet_traffic" data-clear-btn="true">
				</div>
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