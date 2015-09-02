<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page">
		<%@ include file="explain/forPage4.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<h2>●DMZ server</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>


			<h3>TFSITNWEB (Host)</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
			</div>
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<h3>TFSITNSPAM (Guest)</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
			</div>
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<hr />

			<!-- /set -->
			<%@ include file="/../include/bottomTools.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>