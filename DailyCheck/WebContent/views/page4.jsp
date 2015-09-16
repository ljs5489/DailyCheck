<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page4Ajax.js"></script>
<script src="../js/diskUsage.js"></script>

<script>
$(function(){ getWithAjax(); });
</script>

<style>
.diskUsage {
	display: none;
}
</style>

</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page4">
		<%@ include file="explain/forPage4.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●DMZ Server</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>


			<div class="ui-checkbox">
				<label for="diskUsage"
					class="ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-checkbox-on">Weekly</label> <input type="checkbox" name="diskUsage" id="diskUsage"
					data-cacheval="false" data-theme="a">
			</div>




			<h3>TFSITNWEB (Host)</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NWCPU","Y","N",false) %>
				<%= Sets.setBlock("b","NWmemory","Y","N",false) %>
				<%= Sets.setBlock("c","NWvaccine","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NWupdate","Y","N",false) %>
				<%= Sets.setBlock("b","NWstatus","Good","Bad",false) %>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<%=Sets.setText("a", "WEB_disk1", "tel")%>
					<%=Sets.setText("b", "WEB_disk2", "tel")%>
					<%=Sets.setText("c", "WEB_disk3", "tel")%>
					<%=Sets.setText("d", "WEB_disk4", "tel")%>
				</div>
			</div>
			<h3>TFSITNSPAM (Guest)</h3>
			<hr />
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NSCPU","Y","N",false) %>
				<%= Sets.setBlock("b","NSmemory","Y","N",false) %>
				<%= Sets.setBlock("c","NSvaccine","Y","N",false) %>
			</div>
			<div class="ui-grid-b">
				<%= Sets.setBlock("a","NSupdate","Y","N",false) %>
				<%= Sets.setBlock("b","NSstatus","Good","Bad",false) %>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<%=Sets.setText("a", "SPAM_disk1", "tel")%>
					<%=Sets.setText("b", "SPAM_disk2", "tel")%>
				</div>
			</div>
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