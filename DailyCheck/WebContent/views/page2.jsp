<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page2Ajax.js"></script>
<script src="../js/diskUsage.js"></script>
<script>
	$(function() {
		$('#nav1').trigger('click');
	})
</script>
<style>
.diskUsage {
	display: none;
}
</style>
</head>
<body>
	<div data-role="page" id="page2">
		<%@ include file="explain/forPage2.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2 id="test">●Servers</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>


			<div data-role="navbar">
				<ul>
					<li><a href="" data-theme="b" id="nav1"
						onclick="$('#page2_1').show(); $('#page2_2').hide();">Check1</a></li>
					<li><a href="" data-theme="b"
						onclick="$('#page2_1').hide(); $('#page2_2').show();">Check2</a></li>
				</ul>
			</div>
			<br />
			<div class="ui-checkbox">
				<label for="diskUsage"
					class="ui-btn ui-corner-all ui-btn-inherit ui-btn-icon-left ui-checkbox-on">Weekly</label>
				<input type="checkbox" name="diskUsage" id="diskUsage"
					data-cacheval="false" data-theme="a">
			</div>



			<!-- page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<div id="page2_1">
				<h3>TFSKR WEB VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "WEB_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "WEB_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="WEB_value">C_val:</label> <input type="tel"
							name="WEB_value" id="WEB_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="WEB_value_2">M_val:</label> <input type="tel"
							name="WEB_value_2" id="WEB_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "WEB_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "WEB_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "WEB_status", "Good", "Bad", false)%>
				</div>

				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "WEB_disk1", "tel")%>
						<%=Sets.setText("b", "WEB_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "WEB_disk3", "tel")%>
						<%=Sets.setText("b", "WEB_disk4", "tel")%>
					</div>
				</div>

				<br />


				<h3>TFSKR DBM VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DBM_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DBM_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="DBM_value">C_val:</label> <input type="tel"
							name="DBM_value" id="DBM_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="DBM_value_2">M_val:</label> <input type="tel"
							name="DBM_value_2" id="DBM_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DBM_vaccine", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DBM_update", "Y", "N", true)%>
					<%=Sets.setBlock("c", "DBM_DB", "Y", "N", true)%>
					<%=Sets.setBlock("d", "DBM_status", "Good", "Bad", true)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "DBM_disk1", "tel")%>
						<%=Sets.setText("b", "DBM_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "DBM_disk3", "tel")%>
						<%=Sets.setText("b", "DBM_disk4", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR DEW</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DEW_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DEW_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="DEW_value">C_val:</label> <input type="tel"
							name="DEW_value" id="DEW_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="DEW_value_2">M_val:</label> <input type="tel"
							name="DEW_value_2" id="DEW_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "DEW_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "DEW_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "DEW_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "DEW_disk1", "tel")%>
						<%=Sets.setText("b", "DEW_disk2", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR MAIL VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "MAIL_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "MAIL_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="MAIL_value">C_val:</label> <input type="tel"
							name="MAIL_value" id="MAIL_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="MAIL_value_2">M_val:</label> <input type="tel"
							name="MAIL_value_2" id="MAIL_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MAIL_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MAIL_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "MAIL_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "MAIL_disk1", "tel")%>
						<%=Sets.setText("b", "MAIL_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "MAIL_disk3", "tel")%>
						<%=Sets.setText("b", "MAIL_disk4", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR APP VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "APP_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "APP_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="APP_value">C_val:</label> <input type="tel"
							name="APP_value" id="APP_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="APP_value_2">M_val:</label> <input type="tel"
							name="APP_value_2" id="APP_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "APP_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "APP_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "APP_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "APP_disk1", "tel")%>
						<%=Sets.setText("b", "APP_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "APP_disk3", "tel")%>
						<%=Sets.setText("b", "APP_disk4", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR FAX</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "FAX_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "FAX_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="FAX_value">C_val:</label> <input type="tel"
							name="FAX_value" id="FAX_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="FAX_value_2">M_val:</label> <input type="tel"
							name="FAX_value_2" id="FAX_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "FAX_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "FAX_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "FAX_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "FAX_disk1", "tel")%>
						<%=Sets.setText("b", "FAX_disk2", "tel")%>
					</div>

				</div>
				<br />

				<h3>TFSKR ADN</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "ADN_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "ADN_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="ADN_value">C_val:</label> <input type="tel"
							name="ADN_value" id="ADN_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="ADN_value_2">M_val:</label> <input type="tel"
							name="ADN_value_2" id="ADN_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADN_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADN_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "ADN_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "ADN_disk1", "tel")%>
						<%=Sets.setText("b", "ADN_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "ADN_disk3", "tel")%>
						<%=Sets.setText("b", "ADN_disk4", "tel")%>
					</div>
				</div>
				<br />
			</div>
			<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->



			<!-- page2 -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- page2 -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- page2 -------------------------------------------------------------------------------------------------------------------------------------------------->
			<div id="page2_2">
				<h3>TFSKR VRS</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "VRS_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "VRS_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="VRS_value">C_val:</label> <input type="tel"
							name="VRS_value" id="VRS_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="VRS_value_2">M_val:</label> <input type="tel"
							name="VRS_value_2" id="VRS_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "VRS_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "VRS_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "VRS_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "VRS_disk1", "tel")%>
						<%=Sets.setText("b", "VRS_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "VRS_disk3", "tel")%>
						<%=Sets.setText("b", "VRS_disk4", "tel")%>
					</div>
				</div>
				<br />


				<h3>TFSKR FILE</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "FILE_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "FILE_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="FILE_value">C_val:</label> <input type="tel"
							name="FILE_value" id="FILE_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="FILE_value_2">M_val:</label> <input type="tel"
							name="FILE_value_2" id="FILE_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "FILE_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "FILE_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "FILE_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "FILE_disk1", "tel")%>
						<%=Sets.setText("b", "FILE_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "FILE_disk3", "tel")%>
						<%=Sets.setText("b", "FILE_disk4", "tel")%>
					</div>
				</div>
				<br />


				<h3>TFSKR DEVN</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DEVN_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DEVN_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="DEVN_value">C_val:</label> <input type="tel"
							name="DEVN_value" id="DEVN_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="DEVN_value_2">M_val:</label> <input type="tel"
							name="DEVN_value_2" id="DEVN_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DEVN_vaccine", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DEVN_update", "Y", "N", true)%>
					<%=Sets.setBlock("c", "DEVN_DB", "Y", "N", true)%>
					<%=Sets.setBlock("d", "DEVN_status", "Good", "Bad", true)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "DEVN_disk1", "tel")%>
						<%=Sets.setText("b", "DEVN_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "DEVN_disk3", "tel")%>
						<%=Sets.setText("b", "DEVN_disk4", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR MSVM1 VT-Host</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "MSVM1_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "MSVM1_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="MSVM1_value">C_val:</label> <input type="tel"
							name="MSVM1_value" id="MSVM1_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="MSVM1_value_2">M_val:</label> <input type="tel"
							name="MSVM1_value_2" id="MSVM1_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MSVM1_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MSVM1_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "MSVM1_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">

					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM1_disk1", "tel")%>
						<%=Sets.setText("b", "MSVM1_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM1_disk3", "tel")%>
						<%=Sets.setText("b", "MSVM1_disk4", "tel")%>
					</div>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM1_disk5", "tel")%>
						<%=Sets.setText("b", "MSVM1_disk6", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM1_disk7", "tel")%>
						<%=Sets.setText("b", "MSVM1_disk8", "tel")%>
					</div>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM1_disk9", "tel")%>
						<%=Sets.setText("b", "MSVM1_disk10", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR MSVM2 VT-Host</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "MSVM2_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "MSVM2_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="MSVM2_value">C_val:</label> <input type="tel"
							name="MSVM2_value" id="MSVM2_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="MSVM2_value_2">M_val:</label> <input type="tel"
							name="MSVM2_value_2" id="MSVM2_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MSVM2_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MSVM2_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "MSVM2_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM2_disk1", "tel")%>
						<%=Sets.setText("b", "MSVM2_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM2_disk3", "tel")%>
						<%=Sets.setText("b", "MSVM2_disk4", "tel")%>
					</div>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "MSVM2_disk5", "tel")%>
						<%=Sets.setText("b", "MSVM2_disk6", "tel")%>
					</div>

				</div>
				<br />

				<h3>TFS Lync VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "LYNC_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "LYNC_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="LYNC_value">C_val:</label> <input type="tel"
							name="LYNC_value" id="LYNC_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="LYNC_value_2">M_val:</label> <input type="tel"
							name="LYNC_value_2" id="LYNC_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "LYNC_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "LYNC_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "LYNC_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "LYNC_disk1", "tel")%>
						<%=Sets.setText("b", "LYNC_disk2", "tel")%>
					</div>

					<div class="ui-grid-a">
						<%=Sets.setText("a", "LYNC_disk3", "tel")%>
						<%=Sets.setText("b", "LYNC_disk4", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR ADV1 VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "ADV1_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "ADV1_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="ADV1_value">C_val:</label> <input type="tel"
							name="ADV1_value" id="ADV1_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="ADV1_value_2">M_val:</label> <input type="tel"
							name="ADV1_value_2" id="ADV1_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADV1_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADV1_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "ADV1_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "ADV1_disk1", "tel")%>
						<%=Sets.setText("b", "ADV1_disk2", "tel")%>
					</div>
				</div>
				<br />

				<h3>TFSKR ADV2 VT-Guest</h3>
				<hr />
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "ADV2_CPU", "Y", "N", true)%>
					<%=Sets.setBlock("b", "ADV2_memory", "Y", "N", true)%>
					<div class="ui-block-c">
						<label for="ADV2_value">C_val:</label> <input type="tel"
							name="ADV2_value" id="ADV2_value" data-clear-btn="true"
							data-mini="true">
					</div>
					<div class="ui-block-d">
						<label for="ADV2_value_2">M_val:</label> <input type="tel"
							name="ADV2_value_2" id="ADV2_value_2" data-mini="true"
							data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADV2_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADV2_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "ADV2_status", "Good", "Bad", false)%>
				</div>
				<div class="diskUsage">
					<h4>Disk Usage check</h4>
					<div class="ui-grid-a">
						<%=Sets.setText("a", "ADV2_disk1", "tel")%>
						<%=Sets.setText("b", "ADV2_disk2", "tel")%>
					</div>
				</div>
				<br />
			</div>
			<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- /page -------------------------------------------------------------------------------------------------------------------------------------------------->

			<div class="ui-field-contain">
				<label for="info">If Any:</label>
				<textarea name="ifany" id="ifany"></textarea>
			</div>
			<%@ include file="/../include/bottomTools.jsp"%>
			<%@ include file="/../include/bottomGoUp.jsp"%>
		</div>

		<%@ include file="/../include/footer.jsp"%>
	</div>

</body>


</html>