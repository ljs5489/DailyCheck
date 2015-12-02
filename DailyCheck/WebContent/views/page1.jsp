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
				<h5 style="font-size: 9px;">※N(Normal)/A(Abnormal),
					Y(Normal)/N(Not Normal)</h5>
				<h3>Connect Status</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ars", "Good", "Bad", false)%>
					<%=Sets.setBlock("b", "mail", "Good", "Bad", false)%>
					<%=Sets.setBlock("c", "fax", "Good", "Bad", false)%>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "vrs", "Good", "Bad", false)%>
					<%=Sets.setBlock("b", "messanger", "Good", "Bad", false)%>
					<div class='ui-block-c'>
						<label for='leaseloan'>Lease & Loan</label><select type='checkbox'
							data-role='flipswitch' name='leaseloan' id='leaseloan'>
							<option value='off'>Bad</option>
							<option value='on'>Good</option>
						</select><br>
					</div>
				</div>

				<h3>Homepage</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "visual", "Good", "Bad", false)%>
					<%=Sets.setBlock("b", "images", "Y", "N", false)%>
					<%=Sets.setBlock("c", "font", "Y", "N", false)%>
				</div>
				<!-- HomePage set -->
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "links", "Y", "N", false)%>
					<%=Sets.setBlock("b", "bbs", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="indexsize">Index.asp(Size):</label> <input type="tel"
							name="indexsize" id="indexsize" data-clear-btn="true">
					</div>

				</div>
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<label for="tra1time">Time(AM):</label> <input type="tel"
							name="tra1time" id="tra1time" data-mini="true"
							data-clear-btn="true" onclick="setTime($(this))">
					</div>
					<div class="ui-block-b">
						<label for="tra1val">Traffic(MB):</label> <input type="tel"
							name="tra1val" id="tra1val" data-mini="true"
							data-clear-btn="true">
					</div>
					<div class="ui-block-c">
						<label for="tra2time">Time(PM):</label> <input type="tel"
							name="tra2time" id="tra2time" data-mini="true"
							data-clear-btn="true" onclick="setTime($(this))">
					</div>
					<div class="ui-block-d">
						<label for="tra2val">Traffic(MB):</label> <input type="tel"
							name="tra2val" id="tra2val" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>


				<!-- /HomePage set -->

				<br /> <br />

				<h3>IT ROOM</h3>
				<hr />
				<!-- IT ROOM (W) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>West</h2>
					</div>
					<div class="ui-block-b">
						<label for="WMtime">Time:</label> <input type="tel" name="WMtime"
							id="WMtime" data-clear-btn="true" onclick="setTime($(this))">
					</div>
				</div>
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "WMstate", "Good", "Bad", true)%>
					<%=Sets.setBlock("b", "WMpump", "N", "A", true)%>
					<%=Sets.setBlock("c", "WMaircon", "N", "A", true)%>
					<div class="ui-block-d">
						<label for="WMtemperature">Temperature:</label> <input type="tel"
							name="WMtemperature" id="WMtemperature">
					</div>

				</div>
				<!-- /IT ROOM (W) set -->
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<h2>East</h2>
					</div>
					<div class="ui-block-b">
						<label for="EMtime">Time:</label> <input type="tel" name="EMtime"
							id="EMtime" data-clear-btn="true" onclick="setTime($(this))">
					</div>
				</div>
				<!-- IT ROOM (E) set -->
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "EMstate", "Good", "Bad", true)%>
					<%=Sets.setBlock("b", "EMpump", "N", "A", true)%>
					<%=Sets.setBlock("c", "EMaircon", "N", "A", true)%>
					<div class="ui-block-d">
						<label for="EMtemperature">Temperature:</label> <input type="tel"
							name="EMtemperature" id="EMtemperature" data-clear-btn="true">
					</div>
				</div>
				<!-- /IT ROOM (E) set -->
				<br /> <br />

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