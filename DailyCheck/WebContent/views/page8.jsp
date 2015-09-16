<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page8Ajax.js"></script>
<script>
$(function(){ getWithAjax(); });
</script>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page8">
		<%@ include file="explain/forPage8.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●Back up</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>

			<h3>TFSKR File daily check</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","web","Y","N",false) %>
				<%= Sets.setBlock("b","dew","Y","N",false) %>
				<%= Sets.setBlock("c","app","Y","N",false) %>

			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","ADV_1","Y","N",false) %>
				<%= Sets.setBlock("b","VRS","Y","N",false) %>
				<%= Sets.setBlock("c","mail","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<div class='ui-block-a'>
					<label for='FAX_W'>FAX:</label>
					<select type='checkbox' data-role='flipswitch' name='FAX_W' id='FAX_W'>
						<option value='off'>N</option>
						<option value='on'>Y</option>
					</select>
				</div>
				<%= Sets.setBlock("b","DBsafer_M","Y","N",false) %>
				<%= Sets.setBlock("c","file_","Y","N",false) %>
			</div>
			<br /> <br />
			<h3>TFSKR DB daily check</h3>
			<hr />
			<!-- /set -->
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","VRS_DB","Y","N",false) %>
				<%= Sets.setBlock("b","DBM","Y","N",false) %>
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