<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page2Ajax.js"></script>
<script>
	$(function() {
		getWithAjax();
		$('#nav1').trigger('click');
	})
</script>
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

			<!-- page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<!-- page -------------------------------------------------------------------------------------------------------------------------------------------------->
			<div id="page2_1">
				<h3>TFSKR WEB VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "WEB_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "WEB_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="WEB_value">Value:</label> <input type="tel"
							name="WEB_value" id="WEB_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "WEB_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "WEB_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "WEB_status", "Good", "Bad", false)%>
				</div>
				<br />


				<h3>TFSKR DBM VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "DBM_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "DBM_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="DBM_value">Value:</label> <input type="tel"
							name="DBM_value" id="DBM_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DBM_vaccine", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DBM_update", "Y", "N", true)%>
					<%=Sets.setBlock("c", "DBM_DB", "Y", "N", true)%>
					<%=Sets.setBlock("d", "DBM_status", "Good", "Bad", true)%>
				</div>
				<br />

				<h3>TFSKR DEW</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "DEW_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "DEW_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="DEW_value">Value:</label> <input type="tel"
							name="DEW_value" id="DEW_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "DEW_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "DEW_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "DEW_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR MAIL VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MAIL_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MAIL_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="MAIL_value">Value:</label> <input type="tel"
							name="MAIL_value" id="MAIL_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MAIL_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MAIL_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "MAIL_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR APP VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "APP_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "APP_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="APP_value">Value:</label> <input type="tel"
							name="APP_value" id="APP_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "APP_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "APP_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "APP_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR FAX</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "FAX_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "FAX_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="FAX_value">Value:</label> <input type="tel"
							name="FAX_value" id="FAX_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "FAX_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "FAX_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "FAX_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR ADN</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADN_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADN_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="ADN_value">Value:</label> <input type="tel"
							name="ADN_value" id="ADN_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADN_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADN_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "ADN_status", "Good", "Bad", false)%>
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
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "VRS_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "VRS_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="VRS_value">Value:</label> <input type="tel"
							name="VRS_value" id="VRS_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "VRS_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "VRS_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "VRS_status", "Good", "Bad", false)%>
				</div>
				<br />


				<h3>TFSKR FILE</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "FILE_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "FILE_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="FILE_value">Value:</label> <input type="tel"
							name="FILE_value" id="FILE_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "FILE_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "FILE_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "FILE_status", "Good", "Bad", false)%>
				</div>
				<br />


				<h3>TFSKR DEVN</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "DEVN_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "DEVN_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="DEVN_value">Value:</label> <input type="tel"
							name="DEVN_value" id="DEVN_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-c">
					<%=Sets.setBlock("a", "DEVN_vaccine", "Y", "N", true)%>
					<%=Sets.setBlock("b", "DEVN_update", "Y", "N", true)%>
					<%=Sets.setBlock("c", "DEVN_DB", "Y", "N", true)%>
					<%=Sets.setBlock("d", "DEVN_status", "Good", "Bad", true)%>
				</div>
				<br />

				<h3>TFSKR MSVM1 VT-Host</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MSVM1_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MSVM1_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="MSVM1_value">Value:</label> <input type="tel"
							name="MSVM1_value" id="MSVM1_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MSVM1_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MSVM1_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "MSVM1_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR MSVM2 VT-Host</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MSVM2_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MSVM2_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="MSVM2_value">Value:</label> <input type="tel"
							name="MSVM2_value" id="MSVM2_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "MSVM2_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "MSVM2_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "MSVM2_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFS Lync VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "LYNC_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "LYNC_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="LYNC_value">Value:</label> <input type="tel"
							name="LYNC_value" id="LYNC_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "LYNC_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "LYNC_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "LYNC_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR ADV1 VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADV1_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADV1_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="ADV1_value">Value:</label> <input type="tel"
							name="ADV1_value" id="ADV1_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADV1_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADV1_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "ADV1_status", "Good", "Bad", false)%>
				</div>
				<br />

				<h3>TFSKR ADV2 VT-Guest</h3>
				<hr />
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADV2_CPU", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADV2_memory", "Y", "N", false)%>
					<div class="ui-block-c">
						<label for="ADV2_value">Value:</label> <input type="tel"
							name="ADV2_value" id="ADV2_value" data-clear-btn="true">
					</div>
				</div>
				<div class="ui-grid-b">
					<%=Sets.setBlock("a", "ADV2_vaccine", "Y", "N", false)%>
					<%=Sets.setBlock("b", "ADV2_update", "Y", "N", false)%>
					<%=Sets.setBlock("c", "ADV2_status", "Good", "Bad", false)%>
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