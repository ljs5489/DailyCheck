<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/func.js"></script>
<link rel="stylesheet" href="../css/style.css">

</head>
<body>


	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page1">
		<%@ include file="explain/forPage2_1.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<h2>●Servers</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>
			<div data-role="navbar">
				<ul>
					<!-- data-transition="slide" -->
					<li><a href="#page2" data-theme="b">Go to Check2</a></li>
				</ul>
			</div>





			<h3>TFSKR WEB VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />


			<h3>TFSKR DBM VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-c">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch" id="switch"
						data-on-text="Y" data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Y" data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">DB:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Y" data-off-text="N"><br>
				</div>
				<div class="ui-block-d">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<h3>TFSKR DEW</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />

			<h3>TFSKR MAIL VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />

			<h3>TFSKR APP VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />

			<h3>TFSKR FAX</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />

			<h3>TFSKR ADN</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<%@ include file="/../include/bottomTools.jsp"%>
			<%@ include file="/../include/bottomGoUp.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->

	<!-- page2--------------------------------------------------------------------------------------------- -->
	<div data-role="page" id="page2">
		<div data-role="main" class="ui-content">
			<h2>●Servers(continuing...)</h2>
			<div data-role="navbar">
				<ul>
					<li><a href="#page1" data-theme="b">Go to Check1</a></li>
					<!-- data-transition="slide"
						data-direction="reverse" -->
				</ul>
			</div>


			<h3>TFSKR VRS</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />

			<h3>TFSKR FILE</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />

			<h3>TFSKR DEVN</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>


			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-c">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch" id="switch"
						data-on-text="Y" data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch2" id="switch"
						data-on-text="Y" data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">DB:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Y" data-off-text="N"><br>
				</div>

				<div class="ui-block-d">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-mini="true" data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>



			</div>
			<!-- /set -->
			<br />
			<h3>TFSKR MSVM1 VT-Host</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<h3>TFSKR MSVM2 VT-Host</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<h3>TFS Lync VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<h3>TFSKR ADV1 VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<h3>TFSKR ADV2 VT-Guest</h3>
			<hr />
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">CPU:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Memory:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="fullname" id="fullname" data-clear-btn="true">
				</div>
			</div>
			<!-- /set -->
			<!-- set -->
			<div class="ui-grid-b">
				<div class="ui-block-a">
					<label for="switch">Vaccine:</label> <input type="checkbox"
						data-role="flipswitch" name="switch" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-b">
					<label for="switch2">Update:</label> <input type="checkbox"
						data-role="flipswitch" name="switch2" id="switch" data-on-text="Y"
						data-off-text="N"><br>
				</div>
				<div class="ui-block-c">
					<label for="switch3">Status:</label> <input type="checkbox"
						data-role="flipswitch" name="switch3" id="switch"
						data-on-text="Good" data-off-text="Bad"><br>
				</div>
			</div>
			<!-- /set -->
			<br />
			<%@ include file="/../include/bottomTools.jsp"%>
			<%@ include file="/../include/bottomGoUp.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>



</body>


</html>