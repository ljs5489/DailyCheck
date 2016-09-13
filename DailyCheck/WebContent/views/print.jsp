<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*, java.text.SimpleDateFormat, java.util.Calendar"%>

<%

String currTime2 = (new SimpleDateFormat("HH:mm:ss")).format(Calendar.getInstance().getTime()).toString();


try{

String theDate="";
String currTime = currTime2;//Sets.getCurrentTime();

try{
	theDate = request.getParameter("date");
	theDate=Sets.changeFormatYYYYMMDD(theDate);
}
catch(Exception e){
	theDate=Sets.getToday();
	theDate=Sets.changeFormatYYYYMMDD(theDate);
	//SystemWriterLog.writeLog("!"+theDate);
}


SystemWriterLog.writeLog("=========Print Data...============");
Precheck precheck = PrecheckDAO.selectById(theDate);
Server server = ServerDAO.selectById(theDate);
Mobileserver mobileserver = MobileserverDAO.selectById(theDate);
Dmzserver dmzserver = DmzserverDAO.selectById(theDate);
Batchjob batchjob = BatchjobDAO.selectById(theDate);
Ipt ipt = IptDAO.selectById(theDate);
Networkerr networkerr = NetworkerrDAO.selectById(theDate);
Backup backup = BackupDAO.selectById(theDate);
SystemWriterLog.writeLog("=========/Print Data...============");

%>


<html>
<head>
<link rel="stylesheet" href="../css/printformat.css">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>　</title>
<style>
@media print
{
      .page-break  { display:block; page-break-before:always; }

}

.innerTable{
	width:100%; 
	height:100%; 
	margin:0; 
	padding:0;
}
.innerTable tbody tr td{
	padding:0px;
	border:0px;
	width:33%;
	font-size:0.3em;

}
.innerTable tbody tr{
	height:10px;
}

.tempThead{
	 font-size: 12px;
	 border-top:2px solid #808080;
	 font-weight: bold;

}
html body .tempThead th{
	 font-weight: bold; /* 2016-09-12 Chrome의 버그로 thead가 안먹혔음... */

}

</style>
</head>


<body>
	<table cellspacing="0" cellpadding="0" class="no_bd top1">
		<colgroup>
			<col width="*" />
			<col width="194px" />
		</colgroup>
		<tr>
			<td>
				<br/>
				<h1 style="text-align:left; font-size:30px; margin:15px;">Daily System Check List</h1>
				<br/>
				<h3 style="margin:8px;">Date : <%= theDate %></h3>
				<h3 style="margin:8px;">Finish Time : <%= currTime2 %></h3>
			</td>
			<td class="t_r">
				<br/>
				<table style="width: 200px;">
					<tr style="width:200px; height:40px; border-bottom:1px solid black;">
						<td style="width:150px;"><h2>Date : </h2></td>
						<td></td>
					</tr>
					<tr style="width:200px; height:40px; border-bottom:1px solid black;">					
						<td style="width:150px;"><h2>IT Head : </h2></td>
						<td></td>
					</tr>		
						
				</table>
			</td>
		</tr>
		
		
	</table>

		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader(
				"Precheck", 
				"Min Park", 
				PrintSets.timeFormat(precheck.getCheckTime()), 
				PrintSets.whoName(precheck.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "16%", "13%", "13%", "13%", "13%", "16%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Check Name", "ARS(8:50,9:00)", "Mail", "Fax", "VRS", "Messanger", "Lease&Loan" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(0, new String[] { 
						"<b>Connect Status</b>", 
						PrintSets.onToGood(precheck.getArs()), 
						PrintSets.onToGood(precheck.getMail()), 
						PrintSets.onToGood(precheck.getFax()),  
						PrintSets.onToGood(precheck.getVrs()), 
						PrintSets.onToGood(precheck.getMessanger()),
						PrintSets.onToGood(precheck.getLeaseloan())})%>
				</tr>
				<tr>
					<td rowspan="3"><b>Homepage</b></td>
					<%=PrintSets.getTd(0, new String[] { "<b>Visual Inspection</b>", "<b>Image</b>", "<b>Font</b>", "<b>Link(5 Test)</b>",
					"<b>BBS(Notice)</b>", "<b>Index.asp(Size)</b>" })%>
				</tr>
				<tr><%=PrintSets.getTd(0, new String[] { 
						PrintSets.onToGood(precheck.getVisual()),
						PrintSets.onToY(precheck.getImages()),
						PrintSets.onToY(precheck.getFont()),
						PrintSets.onToY(precheck.getLinks()),
						PrintSets.onToY(precheck.getBbs()), 
						precheck.getIndexsize()+"B"})%>
				</tr>
				<tr>
					<td colspan="2"><b>Internet Traffic( <%= precheck.getTra1time() %> )</b></td>					
					<td><%= precheck.getTra1val() %>MB</td>					
					<td colspan="2"><b>Internet Traffic( <%= precheck.getTra2time() %> )</b></td>						
					<td><%= precheck.getTra2val() %>MB</td>		
				</tr>
				<tr>
					<td rowspan="1"><b>IT ROOM</b></td>
					<%=PrintSets.getTd(0, new String[] { 
							"<b>State( "+PrintSets.timeFormat(precheck.getWMtime())+" )</b>", 
							PrintSets.onToGood(precheck.getWMstate()), 
							"<b>Aircon</b>", 
							PrintSets.onToN(precheck.getWMaircon())+" / "+PrintSets.setC(precheck.getWMtemperature()), 
							"<b>Water Pump</b>", 
							PrintSets.onToN(precheck.getWMpump()) })
					%>
				</tr>
<!-- 
				<tr>
					<td rowspan="1"><b>IT ROOM(E)</b></td>
					<=					
						PrintSets.getTd(0, new String[] { 
							"<b>State( "+PrintSets.timeFormat(precheck.getEMtime())+" )</b>", 
							PrintSets.onToGood(precheck.getEMstate()), 
							"<b>Aircon</b>", 
							PrintSets.onToN(precheck.getEMaircon())+" / "+PrintSets.setC(precheck.getEMtemperature()), 
							"<b>Water Pump</b>", 
							PrintSets.onToN(precheck.getEMpump()) 
						})					
					>
				</tr>
 -->
				<tr><td><b>If Any</b></td><td colspan="6"><%= precheck.getIfany() %></td></tr>	
			</tbody>
		</table>
		<p style="margin:0px; font-size:8px;">※ N(Normal)/A(Abnormal), Y(Normal)/N(Not Normal)</p>
		<%= PrintSets.getFooter() %>

		 <br/>
		
		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("Servers", "Min Park",
				PrintSets.timeFormat(server.getCheckTime()), 
				PrintSets.whoName(server.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "9%", "16%", "9%", "10%", "10%", "10%", "10%", "10%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Server Name", "VT", "Disk Usage", "DB", "CPU", "Memory", "Vaccine","Update","Status" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRWEB</b>", "Xen", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getWEB_disk1(),server.getWEB_disk2(),server.getWEB_disk3(),server.getWEB_disk4()})+"</td>", "-", PrintSets.onToY(server.getWEB_CPU())+" "+server.getWEB_value(), PrintSets.onToY(server.getWEB_memory())+" / "+PrintSets.whenOverLimit(server.getWEB_value_2(),65), PrintSets.onToY(server.getWEB_vaccine()),PrintSets.onToY(server.getWEB_update()),PrintSets.onToGood(server.getWEB_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDBM</b>", "Xen", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getDBM_disk1(),server.getDBM_disk1(),server.getDBM_disk1(),server.getDBM_disk1()})+"</td>", PrintSets.onToY(server.getDBM_DB()), PrintSets.onToY(server.getDBM_CPU())+" "+server.getDBM_value(), PrintSets.onToY(server.getDBM_memory())+" / "+PrintSets.whenOverLimit(server.getDBM_value_2(),65), PrintSets.onToY(server.getDBM_vaccine()),PrintSets.onToY(server.getDBM_update()),PrintSets.onToGood(server.getDBM_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDEW</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getDEW_disk1(),server.getDEW_disk2()})+"</td>", "-", PrintSets.onToY(server.getDEW_CPU())+" "+server.getDEW_value(), PrintSets.onToY(server.getDEW_memory())+" / "+PrintSets.whenOverLimit(server.getDEW_value_2(),65), PrintSets.onToY(server.getDEW_vaccine()),PrintSets.onToY(server.getDEW_update()),PrintSets.onToGood(server.getDEW_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMAIL</b>", "Xen", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getMAIL_disk1(),server.getMAIL_disk2(),server.getMAIL_disk3(),server.getMAIL_disk4()})+"</td>", "-", PrintSets.onToY(server.getMAIL_CPU())+" "+server.getMAIL_value(), PrintSets.onToY(server.getMAIL_memory())+" / "+PrintSets.whenOverLimit(server.getMAIL_value_2(),65), PrintSets.onToY(server.getMAIL_vaccine()),PrintSets.onToY(server.getMAIL_update()),PrintSets.onToGood(server.getMAIL_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRAPP</b>", "Xen", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getAPP_disk1(),server.getAPP_disk2(),server.getAPP_disk3(),server.getAPP_disk4()})+"</td>", "-", PrintSets.onToY(server.getAPP_CPU())+" "+server.getAPP_value(), PrintSets.onToY(server.getAPP_memory())+" / "+PrintSets.whenOverLimit(server.getAPP_value_2(),65), PrintSets.onToY(server.getAPP_vaccine()),PrintSets.onToY(server.getAPP_update()),PrintSets.onToGood(server.getAPP_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKR-FAX</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getFAX_disk1(),server.getFAX_disk2(),server.getFAX_disk3(),server.getFAX_disk4()})+"</td>", "-", PrintSets.onToY(server.getFAX_CPU())+" "+server.getFAX_value(), PrintSets.onToY(server.getFAX_memory())+" / "+PrintSets.whenOverLimit(server.getFAX_value_2(),65), PrintSets.onToY(server.getFAX_vaccine()),PrintSets.onToY(server.getFAX_update()),PrintSets.onToGood(server.getFAX_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRADN</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getADN_disk1(),server.getADN_disk2(),server.getADN_disk3(),server.getADN_disk4()})+"</td>", "-", PrintSets.onToY(server.getADN_CPU())+" "+server.getADN_value(), PrintSets.onToY(server.getADN_memory())+" / "+PrintSets.whenOverLimit(server.getADN_value_2(),65), PrintSets.onToY(server.getADN_vaccine()),PrintSets.onToY(server.getADN_update()),PrintSets.onToGood(server.getADN_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRVRS</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getVRS_disk1(),server.getVRS_disk2(),server.getVRS_disk3(),server.getVRS_disk4()})+"</td>", "-", PrintSets.onToY(server.getVRS_CPU())+" "+server.getVRS_value(), PrintSets.onToY(server.getVRS_memory())+" / "+PrintSets.whenOverLimit(server.getVRS_value_2(),65), PrintSets.onToY(server.getVRS_vaccine()),PrintSets.onToY(server.getVRS_update()),PrintSets.onToGood(server.getVRS_status()) })%></tr>	
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRFILE</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getFILE_disk1(),server.getFILE_disk2(),server.getFILE_disk3(),server.getFILE_disk4()})+"</td>", "-", PrintSets.onToY(server.getFILE_CPU())+" "+server.getFILE_value(), PrintSets.onToY(server.getFILE_memory())+" / "+PrintSets.whenOverLimit(server.getFILE_value_2(),65), PrintSets.onToY(server.getFILE_vaccine()),PrintSets.onToY(server.getFILE_update()),PrintSets.onToGood(server.getFILE_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDEVN</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getDEVN_disk1(),server.getDEVN_disk2(),server.getDEVN_disk3(),server.getDEVN_disk4()})+"</td>", PrintSets.onToY(server.getDEVN_DB()), PrintSets.onToY(server.getDEVN_CPU())+" "+server.getDEVN_value(), PrintSets.onToY(server.getDEVN_memory())+" / "+PrintSets.whenOverLimit(server.getDEVN_value_2(),65), PrintSets.onToY(server.getDEVN_vaccine()),PrintSets.onToY(server.getDEVN_update()),PrintSets.onToGood(server.getDEVN_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSMSVM1</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(5, new String[] {server.getMSVM1_disk1(),server.getMSVM1_disk2(),server.getMSVM1_disk3(),server.getMSVM1_disk4(),server.getMSVM1_disk5(),server.getMSVM1_disk6(),server.getMSVM1_disk7(),server.getMSVM1_disk8(),server.getMSVM1_disk9(),server.getMSVM1_disk10()})+"</td>", "-", PrintSets.onToY(server.getMSVM1_CPU())+" "+server.getMSVM1_value(), PrintSets.onToY(server.getMSVM1_memory())+" / "+PrintSets.whenOverLimit(server.getMSVM1_value_2(),65), PrintSets.onToY(server.getMSVM1_vaccine()),PrintSets.onToY(server.getMSVM1_update()),PrintSets.onToGood(server.getMSVM1_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSMSVM2</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(3, new String[] {server.getMSVM2_disk1(),server.getMSVM2_disk2(),server.getMSVM2_disk3(),server.getMSVM2_disk4(),server.getMSVM2_disk5(),server.getMSVM2_disk6()
						/*,server.getMSVM2_disk7(),server.getMSVM2_disk8(),server.getMSVM2_disk9(),server.getMSVM2_disk10()*/})+"</td>", "-", PrintSets.onToY(server.getMSVM2_CPU())+" "+server.getMSVM2_value(), PrintSets.onToY(server.getMSVM2_memory())+" / "+PrintSets.whenOverLimit(server.getMSVM2_value_2(),65), PrintSets.onToY(server.getMSVM2_vaccine()),PrintSets.onToY(server.getMSVM2_update()),PrintSets.onToGood(server.getMSVM2_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSLYNC</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getLYNC_disk1(),server.getLYNC_disk2(),server.getLYNC_disk3(),server.getLYNC_disk4()})+"</td>", "-", PrintSets.onToY(server.getLYNC_CPU())+" "+server.getLYNC_value(), PrintSets.onToY(server.getLYNC_memory())+" / "+PrintSets.whenOverLimit(server.getLYNC_value_2(),65), PrintSets.onToY(server.getLYNC_vaccine()),PrintSets.onToY(server.getLYNC_update()),PrintSets.onToGood(server.getLYNC_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRADV1</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getADV1_disk1(),server.getADV1_disk2()})+"</td>", "-", PrintSets.onToY(server.getADV1_CPU())+" "+server.getADV1_value(), PrintSets.onToY(server.getADV1_memory())+" / "+PrintSets.whenOverLimit(server.getADV1_value_2(),65), PrintSets.onToY(server.getADV1_vaccine()),PrintSets.onToY(server.getADV1_update()),PrintSets.onToGood(server.getADV1_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRADV2</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getADV2_disk1(),server.getADV2_disk2()})+"</td>", "-", PrintSets.onToY(server.getADV2_CPU())+" "+server.getADV2_value(), PrintSets.onToY(server.getADV2_memory())+" / "+PrintSets.whenOverLimit(server.getADV2_value_2(),65), PrintSets.onToY(server.getADV2_vaccine()),PrintSets.onToY(server.getADV2_update()),PrintSets.onToGood(server.getADV2_status()) })%></tr>
				<tr><td><b>If Any</b></td><td colspan="8"><%= server.getIfany() %></td></tr>	
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
		

<div class="page-break"></div>

		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("Mobile Servers", "Min Park",
				PrintSets.timeFormat(mobileserver.getCheckTime()), 
				PrintSets.whoName(mobileserver.getChecker())) %>		
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "9%", "16%", "9%", "10%", "10%", "10%", "10%", "10%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Mobile Server", "VT", "Disk Usage", "DB", "CPU", "Memory", "Vaccine","Update","Status" })%></tr>
			<!-- </thead> -->
			<tbody>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMOBH1</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(4, new String[] {mobileserver.getMOBH1_disk1(),mobileserver.getMOBH1_disk2(),mobileserver.getMOBH1_disk3(),mobileserver.getMOBH1_disk4(),mobileserver.getMOBH1_disk1_2(),mobileserver.getMOBH1_disk2_2(),mobileserver.getMOBH1_disk3_2(),mobileserver.getMOBH1_disk4_2()})+"</td>", "-", PrintSets.onToY(mobileserver.getMOBH1_CPU())+" "+mobileserver.getMOBH1_c_val(), PrintSets.onToY(mobileserver.getMOBH1_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getMOBH1_m_val(),65), PrintSets.onToY(mobileserver.getMOBH1_vaccine()), PrintSets.onToY(mobileserver.getMOBH1_update()), PrintSets.onToGood(mobileserver.getMOBH1_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSMOBILE-DC2</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {mobileserver.getDC2_disk1(),mobileserver.getDC2_disk2()})+"</td>", "-", PrintSets.onToY(mobileserver.getDC2_CPU())+" "+mobileserver.getDC2_c_val(), PrintSets.onToY(mobileserver.getDC2_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getDC2_m_val(),65), PrintSets.onToY(mobileserver.getDC2_vaccine()), PrintSets.onToY(mobileserver.getDC2_update()), PrintSets.onToGood(mobileserver.getDC2_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMOBWEB1</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {mobileserver.getWEB1_disk1(),mobileserver.getWEB1_disk2()})+"</td>", "-", PrintSets.onToY(mobileserver.getWEB1_CPU())+" "+mobileserver.getWEB1_c_val(), PrintSets.onToY(mobileserver.getWEB1_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getWEB1_m_val(),65), PrintSets.onToY(mobileserver.getWEB1_vaccine()), PrintSets.onToY(mobileserver.getWEB1_update()), PrintSets.onToGood(mobileserver.getWEB1_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMOBDB1</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(4, new String[] {mobileserver.getDB1_disk1(),mobileserver.getDB1_disk2(),mobileserver.getDB1_disk3(),mobileserver.getDB1_disk4(),mobileserver.getDB1_disk1_2(),mobileserver.getDB1_disk2_2(),mobileserver.getDB1_disk3_2(),mobileserver.getDB1_disk4_2()})+"</td>", PrintSets.onToY(mobileserver.getDB1_DB()), PrintSets.onToY(mobileserver.getDB1_CPU())+" "+mobileserver.getDB1_c_val(), PrintSets.onToY(mobileserver.getDB1_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getDB1_m_val(),65), PrintSets.onToY(mobileserver.getDB1_vaccine()), PrintSets.onToY(mobileserver.getDB1_update()), PrintSets.onToGood(mobileserver.getDB1_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMOBH2</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(4, new String[] {mobileserver.getMOBH2_disk1(),mobileserver.getMOBH2_disk2(),mobileserver.getMOBH2_disk3(),mobileserver.getMOBH2_disk4(),mobileserver.getMOBH2_disk1_2(),mobileserver.getMOBH2_disk2_2(),mobileserver.getMOBH2_disk3_2(),mobileserver.getMOBH2_disk4_2()})+"</td>", "-", PrintSets.onToY(mobileserver.getMOBH2_CPU())+" "+mobileserver.getMOBH2_c_val(), PrintSets.onToY(mobileserver.getMOBH2_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getMOBH2_m_val(),65), PrintSets.onToY(mobileserver.getMOBH2_vaccine()), PrintSets.onToY(mobileserver.getMOBH2_update()), PrintSets.onToGood(mobileserver.getMOBH2_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSMOBILE-DC1</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {mobileserver.getDC1_disk1(),mobileserver.getDC1_disk2()})+"</td>", "-", PrintSets.onToY(mobileserver.getDC1_CPU())+" "+mobileserver.getDC1_c_val(), PrintSets.onToY(mobileserver.getDC1_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getDC1_m_val(),65), PrintSets.onToY(mobileserver.getDC1_vaccine()), PrintSets.onToY(mobileserver.getDC1_update()), PrintSets.onToGood(mobileserver.getDC1_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMOBWEB2</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {mobileserver.getWEB2_disk1(),mobileserver.getWEB2_disk2()})+"</td>", "-", PrintSets.onToY(mobileserver.getWEB2_CPU())+" "+mobileserver.getWEB2_c_val(), PrintSets.onToY(mobileserver.getWEB2_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getWEB2_m_val(),65), PrintSets.onToY(mobileserver.getWEB2_vaccine()), PrintSets.onToY(mobileserver.getWEB2_update()), PrintSets.onToGood(mobileserver.getWEB2_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMOBDB2</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {mobileserver.getDB2_disk1(),mobileserver.getDB2_disk2()})+"</td>", PrintSets.onToY(mobileserver.getDB2_DB()), PrintSets.onToY(mobileserver.getDB2_CPU())+" "+mobileserver.getDB2_c_val(), PrintSets.onToY(mobileserver.getDB2_memory())+" / "+PrintSets.whenOverLimit(mobileserver.getDB2_m_val(),65), PrintSets.onToY(mobileserver.getDB2_vaccine()), PrintSets.onToY(mobileserver.getDB2_update()), PrintSets.onToGood(mobileserver.getDB2_status()) })%></tr>
				<tr><td><b>If Any</b></td><td colspan="8"><%= mobileserver.getIfany() %></td></tr>	
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
		
		
		<br/><br/>
		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("DMZ Zone Server", "Min Park",
				PrintSets.timeFormat(dmzserver.getCheckTime()), 
				PrintSets.whoName(dmzserver.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "9%", "16%", "9%", "10%", "10%", "10%", "10%", "10%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Mobile Server", "VT", "Disk Usage", "DB", "CPU", "Memory", "Vaccine","Update","Status" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSITNWEB</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {dmzserver.getWEB_disk1(),dmzserver.getWEB_disk2(),dmzserver.getWEB_disk3(),dmzserver.getWEB_disk4()})+"</td>", "-", PrintSets.onToY(dmzserver.getNWCPU())+" "+dmzserver.getNWCPU_val(), PrintSets.onToY(dmzserver.getNWmemory())+" / "+PrintSets.whenOverLimit(dmzserver.getNWmemory_val(),65), PrintSets.onToY(dmzserver.getNWvaccine()),PrintSets.onToY(dmzserver.getNWupdate()),PrintSets.onToGood(dmzserver.getNWstatus()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSITNSPAM</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {dmzserver.getSPAM_disk1(),dmzserver.getSPAM_disk2()})+"</td>", "-", PrintSets.onToY(dmzserver.getNSCPU())+" "+dmzserver.getNSCPU_val(), PrintSets.onToY(dmzserver.getNSmemory())+" / "+PrintSets.whenOverLimit(dmzserver.getNSmemory_val(),65), PrintSets.onToY(dmzserver.getNSvaccine()),PrintSets.onToY(dmzserver.getNSupdate()),PrintSets.onToGood(dmzserver.getNSstatus()) })%></tr>
				<tr><td><b>If Any</b></td><td colspan="8"><%= dmzserver.getIfany() %></td></tr>
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>



<div class="page-break"></div>

		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("Batch Job", "Min Park",
				PrintSets.timeFormat(batchjob.getCheckTime()), 
				PrintSets.whoName(batchjob.getChecker())) %>		
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "15.5%", "9%", "9%", "15%", "9%", "9%","15.5%", "9%", "9%" })%>
			</colgroup>
			<!-- <thead>  -->
			<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Job", "Result", "Detail", "Job", "Result", "Detail", "Job","Result","Detail" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Ebilling</b>", PrintSets.onToY(batchjob.getEbilling()), "", "<b>자금상환SMS</b>", PrintSets.onToY(batchjob.getFin_SMS()), "", "<b>Funding SMS</b>",PrintSets.onToY(batchjob.getFunding_SMS()),"" })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Delinquency M.</b>", PrintSets.onToY(batchjob.getDel_M()), "", "<b>Leave Mng.</b>", PrintSets.onToY(batchjob.getLeave_Mng()), "", "<b>Fax SMS</b>",PrintSets.onToY(batchjob.getFax_SMS()),"" })%></tr>
				<tr><td><b>If Any</b></td><td colspan="8"><%= batchjob.getIfany() %></td></tr>
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
		<br/>
		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("IPT", "Min Park",
				PrintSets.timeFormat(ipt.getCheckTime()), 
				PrintSets.whoName(ipt.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "26%", "12%", "12%", "26%", "12%", "12%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Part", "Result", "Detail", "Part", "Result", "Detail" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Trunk</b>", PrintSets.onToY(ipt.getTrunk()), "", "<b>Idle</b>", PrintSets.onToY(ipt.getIdle()), PrintSets.whenOverLimit(ipt.getIdle_val(),101) })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>In-Service Trunk1</b>", PrintSets.onToY(ipt.getIn_serv_tru1()), "", "<b>In-Service Trunk2</b>", PrintSets.onToY(ipt.getIn_serv_tru2()), "" })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Temperature</b>", PrintSets.onToY(ipt.getTemperature()), PrintSets.setC(ipt.getTemp_val()), "<b>Gateway</b>", PrintSets.onToY(ipt.getGateway()), ""})%></tr>
				<tr><td><b>IPT Alarm</b></td><td colspan="5"><%= ipt.getIpt_alarm() %></td></tr>
				<tr><td><b>If Any</b></td><td colspan="5"><%= ipt.getIfany() %></td></tr>
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
			<br/>
		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("Network Error", "SungpilLim",
				PrintSets.timeFormat(networkerr.getCheckTime()), 
				PrintSets.whoName(networkerr.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "13%", "26%", "11%", "13%", "28%", "11%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Part", "Test Method", "Result", "Part", "Test Method", "Result" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Network Err</b>", "Netstat -e", "Err. No: "+networkerr.getNetwork_err(), "<b>Network Conn</b>", "Netstat -na",PrintSets.onToY(networkerr.getNetwork_conn())  })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Internet Speed</b>", "http://speed.nia.or.kr", networkerr.getInternet_spd()+" / "+networkerr.getInternet_spd_2()+" Mbps", "<b>Traffic (IDC)</b>", "IDC Homepage", networkerr.getTraffic_IDC()+" / "+networkerr.getTraffic_IDC_2()+" Mbps" })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Internet Traffic</b>", "http://e-robot.skbroadband.com", networkerr.getInternet_traffic()+" / "+networkerr.getInternet_traffic_2()+" Mbps", "<b>Firm-Banking</b>", "Balance List", PrintSets.onToY(networkerr.getFirm_banking()) })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>VPN</b>", "Status - 10.1.212.254", PrintSets.onToY(networkerr.getVpn_254()), "<b>VPN</b>", "Status - 10.1.208.31", PrintSets.onToY(networkerr.getVpn_31()) })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>VPN</b>", "Status - 101.1.209.200", PrintSets.onToY(networkerr.getVpn_200()), "<b>VPN</b>", "Status - 10.1.209.21", PrintSets.onToY(networkerr.getVpn_21()) })%></tr>
				<tr><td><b>If Any</b></td><td colspan="5"><%= networkerr.getIfany() %></td></tr>
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
			<br/>
		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("Backup", "Seunghoon Han",
				PrintSets.timeFormat(backup.getCheckTime()), 
				PrintSets.whoName(backup.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "20%", "10%","10%", "10%", "20%", "10%","10%", "10%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Server", "File", "DB", "Cycle", "Server", "File", "DB", "Cycle" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>1. TFSKRWEB</b>", PrintSets.onToY(backup.getWeb()), "", "Daily", "<b>2. TFSKRDBM</b>", "", PrintSets.onToY(backup.getDBM()), "Daily" })%></tr>				
				<tr><%=PrintSets.getTd(0, new String[] { "<b>3. TFSKRDEW</b>", PrintSets.onToY(backup.getDew()), "", "Daily", "<b>4. TFSKRMAIL</b>", PrintSets.onToY(backup.getMail()), "", "Daily" })%></tr>				
				<tr><%=PrintSets.getTd(0, new String[] { "<b>5. TFSKRAPP</b>", PrintSets.onToY(backup.getApp()), "", "Daily", "<b>6. TFSKR-FAX</b>", PrintSets.onToY(backup.getFAX_W()), "", "Weekly" })%></tr>				
				<tr><%=PrintSets.getTd(0, new String[] { "<b>7. TFSKRADV1</b>", PrintSets.onToY(backup.getADV_1()), "", "Daily", "<b>8. DB Safer</b>", PrintSets.onToY(backup.getDBsafer_M()), "", "Monthly" })%></tr>				
				<tr><%=PrintSets.getTd(0, new String[] { "<b>9. TFSKRVRS</b>", PrintSets.onToY(backup.getVRS()), PrintSets.onToY(backup.getVRS_DB()), "Daily", "<b>10. TFSKRFILE</b>", PrintSets.onToY(backup.getfile_()), "", "Daily" })%></tr>
				<tr><td><b>If Any</b></td><td colspan="7"><%= backup.getIfany() %></td></tr>
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
</body>

</html>

<% 
}catch(Exception e){
	System.err.println("값을 불러오다가 에러가 났습니다."+e);
	String redirectURL = "onError.jsp";
    response.sendRedirect(redirectURL);
	
}%>