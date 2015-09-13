<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page3Ajax.js"></script>

<style>
.diskUsage {
	display: none;
}
</style>
<script>
	$(function() {
		$("#diskUsage").change(function() {
			var onOff = $("#diskUsage").is(":checked");
			if (onOff) {//체크 되어있다면
				$(".diskUsage").show();
			} else {
				$(".diskUsage").hide();
			}
		});//HERE
		getWithAjax();
	})
</script>
</head>
<body>
	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page3">
		<%@ include file="explain/forPage3.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●Mobile server</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>




			<div class="ui-checkbox">
				<label for="diskUsage"
					class="ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-checkbox-on">Disk
					Usage Check</label> <input type="checkbox" name="diskUsage" id="diskUsage"
					data-cacheval="false" data-theme="a">
			</div>


			<h3>TFSKR MOBH1 (VT: Host)</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "MOBH1_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "MOBH1_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="MOBH1_m_val">M_val</label> <input type="tel"
						name="MOBH1_m_val" id="MOBH1_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "MOBH1_vaccine", "Y", "N", false)%>
				<%=Sets.setBlock("b", "MOBH1_update", "Y", "N", false)%>
				<%=Sets.setBlock("c", "MOBH1_status", "Good", "Bad", false)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<%=Sets.setText("a", "MOBH1_disk1", "tel")%>
					<%=Sets.setText("b", "MOBH1_disk2", "tel")%>
					<%=Sets.setText("c", "MOBH1_disk3", "tel")%>
					<%=Sets.setText("d", "MOBH1_disk4", "tel")%>
				</div>
			</div>
			<br />
			<h3>TFS MOBILE-DC2</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "DC2_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "DC2_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="DC2_m_val">M_val</label> <input type="tel"
						name="DC2_m_val" id="DC2_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "DC2_vaccine", "Y", "N", false)%>
				<%=Sets.setBlock("b", "DC2_update", "Y", "N", false)%>
				<%=Sets.setBlock("c", "DC2_status", "Good", "Bad", false)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<%=Sets.setText("a", "DC2_disk1", "tel")%>
					<%=Sets.setText("b", "DC2_disk2", "tel")%>
				</div>
			</div>
			<br />
			<h3>TFSKR MOB WEB1</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "WEB1_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "WEB1_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="WEB1_m_val">M_val</label> <input type="tel"
						name="WEB1_m_val" id="WEB1_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "WEB1_vaccine", "Y", "N", false)%>
				<%=Sets.setBlock("b", "WEB1_update", "Y", "N", false)%>
				<%=Sets.setBlock("c", "WEB1_status", "Good", "Bad", false)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<%=Sets.setText("a", "WEB1_disk1", "tel")%>
					<%=Sets.setText("b", "WEB1_disk2", "tel")%>
				</div>
			</div>
			<br />
			<h3>TFSKR MOB DB1</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "DB1_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "DB1_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="DB1_m_val">M_val</label> <input type="tel"
						name="DB1_m_val" id="DB1_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-c">
				<%=Sets.setBlock("a", "DB1_vaccine", "Y", "N", true)%>
				<%=Sets.setBlock("b", "DB1_update", "Y", "N", true)%>
				<%=Sets.setBlock("c", "DB1_DB", "Y", "N", true)%>
				<%=Sets.setBlock("d", "DB1_status", "Good", "Bad", true)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<%=Sets.setText("a", "DB1_disk1", "tel")%>
					<%=Sets.setText("b", "DB1_disk2", "tel")%>
					<%=Sets.setText("c", "DB1_disk3", "tel")%>
					<%=Sets.setText("d", "DB1_disk4", "tel")%>
				</div>
			</div>
			<br />
			<h3>TFSKR MOBH2 (VT: Host)</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "MOBH2_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "MOBH2_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="MOBH2_m_val">M_val</label> <input type="tel"
						name="MOBH2_m_val" id="MOBH2_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "MOBH2_vaccine", "Y", "N", false)%>
				<%=Sets.setBlock("b", "MOBH2_update", "Y", "N", false)%>
				<%=Sets.setBlock("c", "MOBH2_status", "Good", "Bad", false)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-c">
					<%=Sets.setText("a", "MOBH2_disk1", "tel")%>
					<%=Sets.setText("b", "MOBH2_disk2", "tel")%>
					<%=Sets.setText("c", "MOBH2_disk3", "tel")%>
					<%=Sets.setText("d", "MOBH2_disk4", "tel")%>
				</div>
			</div>
			<!-- /diskUsage -->
			<br />
			<h3>TFS MOBILE-DC1</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "DC1_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "DC1_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="DC1_m_val">M_val</label> <input type="tel"
						name="DC1_m_val" id="DC1_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "DC1_vaccine", "Y", "N", false)%>
				<%=Sets.setBlock("b", "DC1_update", "Y", "N", false)%>
				<%=Sets.setBlock("c", "DC1_status", "Good", "Bad", false)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<%=Sets.setText("a", "DC1_disk1", "tel")%>
					<%=Sets.setText("b", "DC1_disk2", "tel")%>
				</div>
			</div>
			<br />
			<h3>TFSKR MOB WEB2</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "WEB2_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "WEB2_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="WEB2_m_val">M_val</label> <input type="tel"
						name="WEB2_m_val" id="WEB2_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "WEB2_vaccine", "Y", "N", false)%>
				<%=Sets.setBlock("b", "WEB2_update", "Y", "N", false)%>
				<%=Sets.setBlock("c", "WEB2_status", "Good", "Bad", false)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<%=Sets.setText("a", "WEB2_disk1", "tel")%>
					<%=Sets.setText("b", "WEB2_disk2", "tel")%>
				</div>
			</div>
			<br />
			<h3>TFSKR MOB DB2</h3>
			<hr />
			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "DB2_CPU", "Y", "N", false)%>
				<%=Sets.setBlock("b", "DB2_memory", "Y", "N", false)%>
				<div class="ui-block-c">
					<label for="DB2_m_val">M_val</label> <input type="tel"
						name="DB2_m_val" id="DB2_m_val" data-clear-btn="true">
				</div>
			</div>
			<div class="ui-grid-c">
				<%=Sets.setBlock("a", "DB2_vaccine", "Y", "N", true)%>
				<%=Sets.setBlock("b", "DB2_update", "Y", "N", true)%>
				<%=Sets.setBlock("c", "DB2_DB", "Y", "N", true)%>
				<%=Sets.setBlock("d", "DB2_status", "Good", "Bad", true)%>
			</div>
			<div class="diskUsage">
				<h4>Disk Usage check</h4>
				<div class="ui-grid-a">
					<%=Sets.setText("a", "DB2_disk1", "tel")%>
					<%=Sets.setText("b", "DB2_disk2", "tel")%>
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