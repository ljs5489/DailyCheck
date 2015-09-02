<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page">
		<%@ include file="explain/forPage1.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<h2>●Pre Check</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">ARS:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Mail:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Fax:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">VRS:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Messanger:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Lease Loan:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Visual:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Image:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Font:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
			</div>
			<!-- /set -->
			<!-- HomePage set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Link(5 Test):</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
				<div class="ui-block-b">
					<label for="switch2">BBS(Notice):</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N">
				</div>
				<div class="ui-block-c">
					<label for="fullname">Index.asp(Size):</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /HomePage set -->

			<br /> <br />

			<h3>IT ROOM(West)</h3>
			<hr />
			<!-- IT ROOM (W) set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<h2>Morning</h2>
				</div>
				<div class="ui-block-b">
					<label for="fullname">Time:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-c">
				<div class="ui-block-a">
					<label for="fullname">State:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad">
				</div>
				<div class="ui-block-b">
					<label for="fullname">Pump:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-c">
					<label for="fullname">Aircon:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-d">
					<label for="fullname">Temperature:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>

			</div>
			<!-- /IT ROOM (W) set -->
			<!-- IT ROOM (W) set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<h2>Evening</h2>
				</div>
				<div class="ui-block-b">
					<label for="fullname">Time:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-c">
				<div class="ui-block-a">
					<label for="fullname">State:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad">
				</div>
				<div class="ui-block-b">
					<label for="fullname">Pump:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-c">
					<label for="fullname">Aircon:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-d">
					<label for="fullname">Temperature:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>

			</div>
			<!-- /IT ROOM (W) set -->
			<br /> <br />

			<h3>IT ROOM(East)</h3>
			<hr />
			<!-- IT ROOM (E) set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<h2>Morning</h2>
				</div>
				<div class="ui-block-b">
					<label for="fullname">Time:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- IT ROOM (E) set -->
			<div class="ui-grid-c">
				<div class="ui-block-a">
					<label for="fullname">State:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad">
				</div>
				<div class="ui-block-b">
					<label for="fullname">Pump:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-c">
					<label for="fullname">Aircon:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-d">
					<label for="fullname">Temperature:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>

			</div>
			<!-- /IT ROOM (E) set -->

			<!-- IT ROOM (E) set -->
			<div class="ui-grid-a">
				<div class="ui-block-a">
					<h2>Evening</h2>
				</div>
				<div class="ui-block-b">
					<label for="fullname">Time:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- IT ROOM (E) set -->
			<div class="ui-grid-c">
				<div class="ui-block-a">
					<label for="fullname">State:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Good" data-off-text="Bad">
				</div>
				<div class="ui-block-b">
					<label for="fullname">Pump:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-c">
					<label for="fullname">Aircon:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="N" data-off-text="A">
				</div>
				<div class="ui-block-d">
					<label for="fullname">Temperature:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>

			</div>
			<!-- /IT ROOM (E) set -->
			<%@ include file="/../include/bottomTools.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>