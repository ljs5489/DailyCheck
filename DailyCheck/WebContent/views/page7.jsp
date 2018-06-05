<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page7Ajax.js"></script>

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
						
				<%= Sets.setBlock("a","firm_banking_nice","Y","N",false,"펌뱅킹 Nice") %>
				<%= Sets.setBlock("b","firm_banking_kcb","Y","N",false,"펌뱅킹 KCB") %>
				<%= Sets.setBlock("c","firm_banking","Y","N",false,"펌뱅킹 WebCash") %>		
				<!-- 2018-06-05 김효중 부장님 지시
				Sets.setBlock("a","network_conn","Y","N",false) 
				<div class="ui-block-c">
					<label for="network_err">Network Err:</label> <input type="tel"
						name="network_err" id="network_err" data-clear-btn="true">
				</div>
				 -->
			</div>
			<div class="ui-grid-c">
				<%= Sets.setBlock("a","vpn_21","Y","N",true) %>
				<%= Sets.setBlock("b","vpn_31","Y","N",true) %>
				<%= Sets.setBlock("c","vpn_200","Y","N",true) %>
				<%= Sets.setBlock("d","vpn_254","Y","N",true) %>
			</div>
						<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="internet_traffic">internet traffic IN:</label> <input type="tel"
						name="internet_traffic" id="internet_traffic" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="internet_traffic_2"></label>internet traffic OUT:<input type="tel"
						name="internet_traffic_2" id="internet_traffic_2" data-clear-btn="true">
				</div>
			</div>

			<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="traffic_IDC">Traffic(IDC) IN:</label> <input type="tel"
						name="traffic_IDC" id="traffic_IDC" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="traffic_IDC_2">Traffic(IDC) OUT:</label> <input type="tel"
						name="traffic_IDC_2" id="traffic_IDC_2" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="internet_spd">Internet Spd DOWN</label> <input type="tel"
						name="internet_spd" id="internet_spd" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="internet_spd_2">Internet Spd UP</label> <input type="tel"
						name="internet_spd_2" id="internet_spd_2" data-clear-btn="true">
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