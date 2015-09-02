<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page">
		<%@ include file="explain/forPage8.jsp"%>	
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<h2>●Backup</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>

			<h3>TFSKR File daily check</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">WEB:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">DEW:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">APP:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">ADV1:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">VRS:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">MAIL:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">FAX(weekly):</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">DBsafer(Monthly):</label> <input
						type="checkbox" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">FILE:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br /> <br />
			<h3>TFSKR DB daily check</h3>
			<hr />
			<!-- /set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">VRS:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">DBM:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<%@ include file="/../include/bottomTools.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>