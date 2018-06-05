<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<html>
<head>
<%@ include file="/../include/import.jsp"%>
<script src="../js/page5Ajax.js"></script>

</head>
<body>

	<!-- page ------------------------------------------------------------------------------------------------------------------------------------------->
	<div data-role="page" id="page5">
		<%@ include file="explain/forPage5.jsp"%>
		<%@ include file="/../include/header.jsp"%>

		<div data-role="main" class="ui-content">
			<%@ include file="../include/popup.jsp"%>
			<h2>●Batch Job</h2>
			<%@ include file="../include/whoDidCheck.jsp"%>

			<div class="ui-grid-b">
				<%=Sets.setBlock("a", "ebilling", "Y", "N", false,"ebilling")%>
				<%=Sets.setBlock("b","E_B_rst","Y","N",false,"E-Bill결과") %>	
				<div class="ui-block-c">
					<label for="E_B_cnt">E-Bill cnt</label> <input type="tel"
						name="E_B_cnt" id="E_B_cnt" data-clear-btn="true"
						data-mini="true">
				</div>
			</div>
			
			
			<div class="ui-grid-b">				
				<%= Sets.setBlock("a","C_stat_updat","Y","N",false,"ContStat Updat") %>
				<%= Sets.setBlock("b","del_M","Y","N",false,"Daily Del.") %>
				<%= Sets.setBlock("c","fax_SMS","Y","N",false,"FAX SMS") %>
			</div>
			<div class="ui-grid-b">				
				<%= Sets.setBlock("a","funding_MMS","Y","N",false,"Funding MMS") %>
				<%= Sets.setBlock("b","funding_SMS","Y","N",false,"Funding SMS") %>
				<%= Sets.setBlock("c","init_CD_rate","Y","N",false,"Init CD Rate") %>				
			</div>
			<div class="ui-grid-b">				
				<%= Sets.setBlock("a","LSRMDLY_daily_backup","Y","N",false,"LSRMDLY_일별") %>
				<%= Sets.setBlock("b","syspolicy_history","Y","N",false,"sis_purge_his") %>
				<%= Sets.setBlock("c","Vintage_analysis","Y","N",false,"Vintage") %>				
			</div>
			<div class="ui-grid-b">				
				<%= Sets.setBlock("a","leave_Mng","Y","N",false,"YearlyLease") %>
				<%= Sets.setBlock("b","sett_accumulated_cashflow","Y","N",false,"누적캐시플로") %>
				<%= Sets.setBlock("c","sett_accumulated_cashflow_2","Y","N",false,"누적캐시플로(관리)") %>				
			</div>
			<div class="ui-grid-b">				
				<%= Sets.setBlock("a","C_termination","Y","N",false,"상거래종료") %>
				<%= Sets.setBlock("b","del_rate_statictics","Y","N",false,"전이율통계잔액") %>
				<%= Sets.setBlock("c","fund_repayment_noti","Y","N",false,"자금상환알림") %>				
			</div>
				<div class="ui-grid-b">				
				<%= Sets.setBlock("a","E_Bill_pubi_noti","Y","N",false,"계산서 선발행") %>			
			</div>
	
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