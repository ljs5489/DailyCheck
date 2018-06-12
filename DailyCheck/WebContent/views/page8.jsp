<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page8Ajax.js"></script>

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

			<br /> 
			<h3>TFSKR Tape Backup Check</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","web","Y","N",false) %>
				<%= Sets.setBlock("b","dew","Y","N",false) %>
				<%= Sets.setBlock("c","app","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","mail","Y","N",false) %>
				<%= Sets.setBlock("b","DBM","Y","N",false) %>
				<%= Sets.setBlock("c","DBsafer_M","Y","N",false,"DBsafer(M)") %>
			</div>			
			<br />
			<br />  
			
			
			<h3>TFSKR SSR Backup Check</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","ADV_1","Y","N",false,"AD") %>
				<%= Sets.setBlock("b","file_","Y","N",false,"FILE") %>
				<%= Sets.setBlock("c","FAX_W","Y","N",false,"FAX(W)") %>
			</div>
			<br /> 
			<br /> 
			
			
			<h3>TFSKR ETC Backup Check</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","VRS","Y","N",false) %>
				<%= Sets.setBlock("b","VRS_DB","Y","N",false,"VRS (ACCESS)") %>
			</div>
			<br /> 
			<br /> 
			
			
			
			
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