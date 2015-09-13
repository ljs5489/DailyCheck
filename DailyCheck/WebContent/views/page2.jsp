<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page2Ajax.js"></script>
<script>$(function(){ getWithAjax(); })</script>
</head>
<body>

	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page1">
			<%@ include file="explain/forPage1.jsp"%>
			<%@ include file="/../include/header.jsp"%>

			<div data-role="main" class="ui-content">			
				<%@ include file="../include/popup.jsp"%>
				<h2 id="test">●Servers</h2>
				<%@ include file="../include/whoDidCheck.jsp"%>			
			
			
			<div data-role="navbar">
				<ul>
					<li><a href="#page2" data-theme="b">Go to Check2</a></li>
				</ul>
			</div>



			<h3>TFSKR WEB VT-Guest</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU1","Y","N",false) %>
				<%= Sets.setBlock("b","memory1","Y","N",false) %>
				<div class="ui-block-c">
					<label for="fullname">Value:</label> <input type="tel"
						name="value1" id="value1" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vaccine1","Y","N",false) %>
				<%= Sets.setBlock("b","update1","Y","N",false) %>
				<%= Sets.setBlock("c","status1","Good","Bad",false) %>
			</div>
			<br />


			<h3>TFSKR DBM VT-Guest</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU2","Y","N",false) %>
				<%= Sets.setBlock("b","memory2","Y","N",false) %>
				<div class="ui-block-c">
					<label for="value2">Value:</label> <input type="tel"
						name="value2" id="value2" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-c">
				<%= Sets.setBlock("a","vaccine2","Y","N",true) %>
				<%= Sets.setBlock("b","update2","Y","N",true) %>				
				<%= Sets.setBlock("c","DB2","Y","N",true) %>
				<%= Sets.setBlock("d","status2","Good","Bad",true) %>
			</div>
			<br />
			<h3>TFSKR DEW</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU3","Y","N",false) %>
				<%= Sets.setBlock("b","memory3","Y","N",false) %>
				<div class="ui-block-c">
					<label for="value3">Value:</label> <input type="tel"
						name="value3" id="value3" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vaccine3","Y","N",false) %>
				<%= Sets.setBlock("b","update3","Y","N",false) %>
				<%= Sets.setBlock("c","status3","Good","Bad",false) %>
			</div>
			<br />

			<h3>TFSKR MAIL VT-Guest</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU4","Y","N",false) %>
				<%= Sets.setBlock("b","memory4","Y","N",false) %>
				<div class="ui-block-c">
					<label for="value4">Value:</label> <input type="tel"
						name="value4" id="value4" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vaccine4","Y","N",false) %>
				<%= Sets.setBlock("b","update4","Y","N",false) %>
				<%= Sets.setBlock("c","status4","Good","Bad",false) %>
			</div>
			<br />

			<h3>TFSKR APP VT-Guest</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU5","Y","N",false) %>
				<%= Sets.setBlock("b","memory5","Y","N",false) %>
				<div class="ui-block-c">
					<label for="value6">Value:</label> <input type="tel"
						name="value5" id="value5" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vaccine5","Y","N",false) %>
				<%= Sets.setBlock("b","update5","Y","N",false) %>
				<%= Sets.setBlock("c","status5","Good","Bad",false) %>
			</div>
			<br />

			<h3>TFSKR FAX</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU6","Y","N",false) %>
				<%= Sets.setBlock("b","memory6","Y","N",false) %>
				<div class="ui-block-c">
					<label for="value6">Value:</label> <input type="tel"
						name="value6" id="value6" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vaccine6","Y","N",false) %>
				<%= Sets.setBlock("b","update6","Y","N",false) %>
				<%= Sets.setBlock("c","status6","Good","Bad",false) %>
			</div>
			<br />

			<h3>TFSKR ADN</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","CPU7","Y","N",false) %>
				<%= Sets.setBlock("b","memory7","Y","N",false) %>
				<div class="ui-block-c">
					<label for="value7">Value:</label> <input type="tel"
						name="value7" id="value7" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","vaccine7","Y","N",false) %>
				<%= Sets.setBlock("b","update7","Y","N",false) %>
				<%= Sets.setBlock("c","status7","Good","Bad",false) %>
			</div>
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