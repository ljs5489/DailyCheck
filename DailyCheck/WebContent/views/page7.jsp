<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page">
		<%@ include file="explain/forPage7.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<h2>●Network Error</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>

			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Network Conn:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
				<div class="ui-block-b">
					<label for="switch2">Firm-Banking:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
				<div class="ui-block-c">
					<label for="switch2">VPN(21):</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">VPN(31):</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
				<div class="ui-block-b">
					<label for="switch2">VPN(200):</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
				<div class="ui-block-c">
					<label for="switch2">VPN(254):</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
			</div>
			<!-- /set -->

			<!-- set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="fullname">Network Err:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="fullname">Internet Spd:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<label for="fullname">Traffic(IDC):</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
				<div class="ui-block-b">
					<label for="fullname">Internet Traffic:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			
			<br/>
			<!-- /set -->
			<%@ include file="/../include/bottomTools.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>