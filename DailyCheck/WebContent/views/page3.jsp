<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="/../include/import.jsp"%>

<style>
.diskUsage {
	display: none;
}
</style>
<script>
	$(function() {
		$("#diskUsage").change(function() {
			console.log($("#diskUsage").is(":checked"));
			var onOff = $("#diskUsage").is(":checked");
			if (onOff) {//체크 되어있다면
				$(".diskUsage").show();
			} else {
				$(".diskUsage").hide();
			}
		});//HERE
	})
</script>


</head>
<body>

	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->

	<div data-role="page" id="page">

		<%@ include file="explain/forPage3.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<h2>●Mobile Server</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>
			<div class="ui-checkbox">
				<label for="diskUsage"
					class="ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-checkbox-on">Disk
					Usage Check</label> <input type="checkbox" name="diskUsage" id="diskUsage"
					data-cacheval="false">
			</div>


			<h3>TFSKR MOBH1 (VT: Host)</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-c">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-d">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFS MOBILE-DC2</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFSKR MOB WEB1</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFSKR MOB DB1</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-c">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-d">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFSKR MOBH2 (VT: Host)</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-c">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-d">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFS MOBILE-DC1</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFSKR MOB WEB2</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFSKR MOB DB2</h3>
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
					<label for="switch3">(value):</label><input type="tel"
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
			<!-- diskUsage -->
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<div class="ui-block-a">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
					<div class="ui-block-b">
						<input type="tel" name="fullname" id="fullname"
							data-clear-btn="true">
					</div>
				</div>
			</div>
			<!-- /diskUsage -->
			<%@ include file="/../include/bottomTools.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

	<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->




</body>
</html>