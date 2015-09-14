<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page1Ajax.js"></script>
</head>
<body>
	<form method="post">
		<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
		<div data-role="page" id="page1">
			<%@ include file="explain/forPage1.jsp"%>
			<%@ include file="/../include/header.jsp"%>

			<div data-role="main" class="ui-content">			
				<%@ include file="../include/popup.jsp"%>
				<h2 id="test">●Pre Check</h2>
				<%@ include file="../include/whoDidCheck.jsp"%>

				<h3>Connect Status</h3>
				<hr />
				<div class="ui-grid-b">
					<%= Sets.setBlock("a","ars","Good","Bad",false) %>
					<%= Sets.setBlock("b","mail","Good","Bad",false) %>
					<%= Sets.setBlock("c","fax","Good","Bad",false) %>
				</div>
				<div class="ui-grid-b">
					<%= Sets.setBlock("a","vrs","Good","Bad",false) %>
					<%= Sets.setBlock("b","messanger","Good","Bad",false) %>
					<%= Sets.setBlock("c","leaseloan","Good","Bad",false) %>
				</div>

				<h3>Homepage</h3>
				<hr />
				<div class="ui-grid-b">
					<%= Sets.setBlock("a","visual","Good","Bad",false) %>
					<%= Sets.setBlock("b","images","Y","N",false) %>
					<%= Sets.setBlock("c","font","Y","N",false) %>
				</div>
				<!-- HomePage set -->
				<div class="ui-grid-b">
					<%= Sets.setBlock("a","links","Y","N",false) %>
					<%= Sets.setBlock("b","bbs","Y","N",false) %>
					<div class="ui-block-c">
						<label for="indexsize">Index.asp(Size):</label> <input type="tel"
							name="indexsize" id="indexsize" data-clear-btn="true">
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
						<label for="WMtime">Time:</label> <input type="tel" name="WMtime"
							id="WMtime" data-clear-btn="true" onclick="setTime($(this))">
					</div>
				</div>
				<div class="ui-grid-c">
					<%= Sets.setBlock("a","WMstate","Good","Bad",true) %>
					<%= Sets.setBlock("b","WMpump","N","A",true) %>
					<%= Sets.setBlock("c","WMaircon","N","A",true) %>
					<div class="ui-block-d">
						<label for="WMtemperature">Temperature:</label> <input type="tel"
							name="WMtemperature" id="WMtemperature">
					</div>

				</div>
				<!-- /IT ROOM (W) set -->
				<!-- IT ROOM (W) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>Afternoon</h2>
					</div>
					<div class="ui-block-b">
						<label for="WEtime">Time:</label> <input type="tel" name="WEtime"
							id="WEtime" data-clear-btn="true" onclick="setTime($(this))">
					</div>
				</div>
				<div class="ui-grid-c">
					<%= Sets.setBlock("a","WEstate","Good","Bad",true) %>
					<%= Sets.setBlock("b","WEpump","N","A",true) %>
					<%= Sets.setBlock("c","WEaircon","N","A",true) %>
					<div class="ui-block-d">
						<label for="WEtemperature">Temperature:</label> <input type="tel"
							name="WEtemperature" id="WEtemperature" data-clear-btn="true">
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
						<label for="EMtime">Time:</label> <input type="tel" name="EMtime"
							id="EMtime" data-clear-btn="true" onclick="setTime($(this))">
					</div>
				</div>
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-c">
					<%= Sets.setBlock("a","EMstate","Good","Bad",true) %>
					<%= Sets.setBlock("b","EMpump","N","A",true) %>
					<%= Sets.setBlock("c","EMaircon","N","A",true) %>
					<div class="ui-block-d">
						<label for="EMtemperature">Temperature:</label> <input type="tel"
							name="EMtemperature" id="EMtemperature" data-clear-btn="true">
					</div>

				</div>
				<!-- /IT ROOM (E) set -->

				<!-- IT ROOM (E) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>Afternoon</h2>
					</div>
					<div class="ui-block-b">
						<label for="EEtime">Time:</label> <input type="tel" name="EEtime"
							id="EEtime" data-clear-btn="true" onclick="setTime($(this))">
					</div>
				</div>
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-c">
					<%= Sets.setBlock("a","EEstate","Good","Bad",true) %>
					<%= Sets.setBlock("b","EEpump","N","A",true) %>
					<%= Sets.setBlock("c","EEaircon","N","A",true) %>
					<div class="ui-block-d">
						<label for="EEtemperature">Temperature:</label> <input type="tel"
							name="EEtemperature" id="EEtemperature" data-clear-btn="true">
					</div>

				</div>
				<!-- /IT ROOM (E) set -->
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



	</form>


</body>


</html>