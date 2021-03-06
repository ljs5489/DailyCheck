﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	
	System.out.println(theDate);
}
catch(Exception e){
	theDate=Sets.getToday();
	theDate=Sets.changeFormatYYYYMMDD(theDate);
	//SystemWriterLog.writeLog("!"+theDate);
	
	System.out.println("ERROR!");
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
			<p style="margin:0px; width:200%;font-size:11px; text-align:right;">[ Y : Normal, N : Not Normal, N/A : Not Applicable ]</p>
	
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
				<tr>
					<td rowspan="2"><b>Connect Status</b></td>
					<%=PrintSets.getTd(0, new String[] { 
						PrintSets.onToGood(precheck.getArs()), 
						PrintSets.onToGood(precheck.getMail()), 
						PrintSets.onToGood(precheck.getFax()),  
						PrintSets.onToGood(precheck.getVrs()), 
						PrintSets.onToGood(precheck.getMessanger()),
						PrintSets.onToGood(precheck.getLeaseloan())})%>
				</tr>
	
							
				<tr>
					<td colspan="2"><b>RTMS Status</b></td>					
					<td><%= PrintSets.onToGood(precheck.getRTMS()) %></td>
					<td colspan="3" ></td>
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
							//PrintSets.onToN(precheck.getWMaircon())+" / "+PrintSets.setC(precheck.getWMtemperature()),
							PrintSets.onToY(precheck.getWMaircon())+" / "+PrintSets.setC(precheck.getWMtemperature()), 
							
							"<b>Water Pump</b>", 
							//PrintSets.onToN(precheck.getWMpump()) })
							PrintSets.onToY(precheck.getWMpump()) })
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
		<!-- <p style="margin:0px; font-size:8px;">※ N(Normal)/A(Abnormal), Y(Normal)/N(Not Normal)</p>  -->
		<%= PrintSets.getFooter() %>

		<br/>
		
		<%= PrintSets.getWrap() %>
		<%= PrintSets.getHeader("Servers", "Min Park",
				PrintSets.timeFormat(server.getChecktime()), 
				PrintSets.whoName(server.getChecker())) %>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "9%", "16%", "9%", "10%", "10%", "10%", "10%", "10%" })%>
			</colgroup>
			<!-- <thead>  -->
				<tr class="tempThead"><%=PrintSets.getTh(new String[] { "Server Name", "VT", "Disk Usage", "DB", "CPU", "Memory", "Vaccine","Update","Status" })%></tr>
			<!-- </thead>  -->
			<tbody>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRWEBN</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getWEB_H_disk1(),server.getWEB_H_disk2()})+"</td>", "-", PrintSets.onToY(server.getWEB_H_CPU())+" "+server.getWEB_H_value(), PrintSets.onToY(server.getWEB_H_memory())+" / "+PrintSets.whenOverLimit(server.getWEB_H_value_2(),65), PrintSets.onToY(server.getWEB_H_vaccine()),PrintSets.onToY(server.getWEB_H_update()),PrintSets.onToGood(server.getWEB_H_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRWEB</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getWEB_disk1(),server.getWEB_disk2(),server.getWEB_disk3(),server.getWEB_disk4()})+"</td>", "-", PrintSets.onToY(server.getWEB_CPU())+" "+server.getWEB_value(), PrintSets.onToY(server.getWEB_memory())+" / "+PrintSets.whenOverLimit(server.getWEB_value_2(),65), PrintSets.onToY(server.getWEB_vaccine()),PrintSets.onToY(server.getWEB_update()),PrintSets.onToGood(server.getWEB_status()) })%></tr>
				
				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDBMN</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getDBM_H_disk1(),server.getDBM_H_disk2()})+"</td>", "-", PrintSets.onToY(server.getDBM_H_CPU())+" "+server.getDBM_H_value(), PrintSets.onToY(server.getDBM_H_memory())+" / "+PrintSets.whenOverLimit(server.getDBM_H_value_2(),65), PrintSets.onToY(server.getDBM_H_vaccine()),PrintSets.onToY(server.getDBM_H_update()),PrintSets.onToGood(server.getDBM_H_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDBM</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(3, new String[] {server.getDBM_disk1(),server.getDBM_disk2(),server.getDBM_disk3(),server.getDBM_disk4(),server.getDBM_disk5(),server.getDBM_disk6()})+"</td>", PrintSets.onToY(server.getDBM_DB()), PrintSets.onToY(server.getDBM_CPU())+" "+server.getDBM_value(), PrintSets.onToY(server.getDBM_memory())+" / "+PrintSets.whenOverLimit(server.getDBM_value_2(),65), PrintSets.onToY(server.getDBM_vaccine()),PrintSets.onToY(server.getDBM_update()),PrintSets.onToGood(server.getDBM_status()) })%></tr>

				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDEW</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getDEW_disk1(),server.getDEW_disk2()})+"</td>", "-", PrintSets.onToY(server.getDEW_CPU())+" "+server.getDEW_value(), PrintSets.onToY(server.getDEW_memory())+" / "+PrintSets.whenOverLimit(server.getDEW_value_2(),65), PrintSets.onToY(server.getDEW_vaccine()),PrintSets.onToY(server.getDEW_update()),PrintSets.onToGood(server.getDEW_status()) })%></tr>
				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMAILAPP</b>", "Host", "<td style='padding:0px;'>"
											+PrintSets.setTable(6, new String[] {//server.getMAIL_H_disk1(),server.getMAIL_H_disk2()
													 "15.5","49.3"
													,"1.7","109.3"
													,"4.7","110.3"
													,"100.9","100.9"
													,"0","1500"
													,"800","2900"
													})
											+"</td>", "-", PrintSets.onToY(server.getMAIL_H_CPU())+" "+server.getWEB_value(), PrintSets.onToY(server.getMAIL_H_memory())+" / "+PrintSets.whenOverLimit(server.getMAIL_H_value_2(),65), PrintSets.onToY(server.getMAIL_H_vaccine()),PrintSets.onToY(server.getMAIL_H_update()),PrintSets.onToGood(server.getMAIL_H_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMAIL</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getMAIL_disk1(),server.getMAIL_disk2(),server.getMAIL_disk3(),server.getMAIL_disk4()})+"</td>", "-", PrintSets.onToY(server.getMAIL_CPU())+" "+server.getMAIL_value(), PrintSets.onToY(server.getMAIL_memory())+" / "+PrintSets.whenOverLimit(server.getMAIL_value_2(),65), PrintSets.onToY(server.getMAIL_vaccine()),PrintSets.onToY(server.getMAIL_update()),PrintSets.onToGood(server.getMAIL_status()) })%></tr>
				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRMAILAPP1</b>", "Host", "<td style='padding:0px;'>"
											+PrintSets.setTable(6, new String[] {//server.getAPP_H_disk1(),server.getAPP_H_disk2()
													 "15.5","49.3"
														,"1.7","109.3"
														,"4.7","110.3"
														,"100.9","100.9"
														,"0","1500"
														,"800","2900"
													})
											+"</td>", "-", PrintSets.onToY(server.getAPP_H_CPU())+" "+server.getAPP_H_value(), PrintSets.onToY(server.getAPP_H_memory())+" / "+PrintSets.whenOverLimit(server.getAPP_H_value_2(),65), PrintSets.onToY(server.getAPP_H_vaccine()),PrintSets.onToY(server.getAPP_H_update()),PrintSets.onToGood(server.getAPP_H_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRAPP</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getAPP_disk1(),server.getAPP_disk2(),server.getAPP_disk3(),server.getAPP_disk4()})+"</td>", "-", PrintSets.onToY(server.getAPP_CPU())+" "+server.getAPP_value(), PrintSets.onToY(server.getAPP_memory())+" / "+PrintSets.whenOverLimit(server.getAPP_value_2(),65), PrintSets.onToY(server.getAPP_vaccine()),PrintSets.onToY(server.getAPP_update()),PrintSets.onToGood(server.getAPP_status()) })%></tr>
				
				
								
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKR-FAX</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getFAX_disk1(),server.getFAX_disk2(),server.getFAX_disk3(),server.getFAX_disk4()})+"</td>", "-", PrintSets.onToY(server.getFAX_CPU())+" "+server.getFAX_value(), PrintSets.onToY(server.getFAX_memory())+" / "+PrintSets.whenOverLimit(server.getFAX_value_2(),65), PrintSets.onToY(server.getFAX_vaccine()),PrintSets.onToY(server.getFAX_update()),PrintSets.onToGood(server.getFAX_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRADN</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getADN_disk1(),server.getADN_disk2(),server.getADN_disk3(),server.getADN_disk4()})+"</td>", "-", PrintSets.onToY(server.getADN_CPU())+" "+server.getADN_value(), PrintSets.onToY(server.getADN_memory())+" / "+PrintSets.whenOverLimit(server.getADN_value_2(),65), PrintSets.onToY(server.getADN_vaccine()),PrintSets.onToY(server.getADN_update()),PrintSets.onToGood(server.getADN_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRVRS</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getVRS_disk1(),server.getVRS_disk2(),server.getVRS_disk3(),server.getVRS_disk4()})+"</td>", "-", PrintSets.onToY(server.getVRS_CPU())+" "+server.getVRS_value(), PrintSets.onToY(server.getVRS_memory())+" / "+PrintSets.whenOverLimit(server.getVRS_value_2(),65), PrintSets.onToY(server.getVRS_vaccine()),PrintSets.onToY(server.getVRS_update()),PrintSets.onToGood(server.getVRS_status()) })%></tr>	
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRFILE</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getFILE_disk1(),server.getFILE_disk2(),server.getFILE_disk3(),server.getFILE_disk4()})+"</td>", "-", PrintSets.onToY(server.getFILE_CPU())+" "+server.getFILE_value(), PrintSets.onToY(server.getFILE_memory())+" / "+PrintSets.whenOverLimit(server.getFILE_value_2(),65), PrintSets.onToY(server.getFILE_vaccine()),PrintSets.onToY(server.getFILE_update()),PrintSets.onToGood(server.getFILE_status()) })%></tr>				
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRDEVN</b>", "", "<td style='padding:0px;'>"+PrintSets.setTable(3, new String[] {server.getDEVN_disk1(),server.getDEVN_disk2(),server.getDEVN_disk3(),server.getDEVN_disk4(),server.getDEVN_disk5(),server.getDEVN_disk6()})+"</td>", PrintSets.onToY(server.getDEVN_DB()), PrintSets.onToY(server.getDEVN_CPU())+" "+server.getDEVN_value(), PrintSets.onToY(server.getDEVN_memory())+" / "+PrintSets.whenOverLimit(server.getDEVN_value_2(),65), PrintSets.onToY(server.getDEVN_vaccine()),PrintSets.onToY(server.getDEVN_update()),PrintSets.onToGood(server.getDEVN_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSMSVM1</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(5, new String[] {server.getMSVM1_disk1(),server.getMSVM1_disk2(),server.getMSVM1_disk3(),server.getMSVM1_disk4(),server.getMSVM1_disk5(),server.getMSVM1_disk6(),server.getMSVM1_disk7(),server.getMSVM1_disk8(),server.getMSVM1_disk9(),server.getMSVM1_disk10()})+"</td>", "-", PrintSets.onToY(server.getMSVM1_CPU())+" "+server.getMSVM1_value(), PrintSets.onToY(server.getMSVM1_memory())+" / "+PrintSets.whenOverLimit(server.getMSVM1_value_2(),65), PrintSets.onToY(server.getMSVM1_vaccine()),PrintSets.onToY(server.getMSVM1_update()),PrintSets.onToGood(server.getMSVM1_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSMSVM2</b>", "Host", "<td style='padding:0px;'>"+PrintSets.setTable(3, new String[] {server.getMSVM2_disk1(),server.getMSVM2_disk2(),server.getMSVM2_disk3(),server.getMSVM2_disk4(),server.getMSVM2_disk5(),server.getMSVM2_disk6()
						/*,server.getMSVM2_disk7(),server.getMSVM2_disk8(),server.getMSVM2_disk9(),server.getMSVM2_disk10()*/})+"</td>", "-", PrintSets.onToY(server.getMSVM2_CPU())+" "+server.getMSVM2_value(), PrintSets.onToY(server.getMSVM2_memory())+" / "+PrintSets.whenOverLimit(server.getMSVM2_value_2(),65), PrintSets.onToY(server.getMSVM2_vaccine()),PrintSets.onToY(server.getMSVM2_update()),PrintSets.onToGood(server.getMSVM2_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSLYNC</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(2, new String[] {server.getLYNC_disk1(),server.getLYNC_disk2(),server.getLYNC_disk3(),server.getLYNC_disk4()})+"</td>", "-", PrintSets.onToY(server.getLYNC_CPU())+" "+server.getLYNC_value(), PrintSets.onToY(server.getLYNC_memory())+" / "+PrintSets.whenOverLimit(server.getLYNC_value_2(),65), PrintSets.onToY(server.getLYNC_vaccine()),PrintSets.onToY(server.getLYNC_update()),PrintSets.onToGood(server.getLYNC_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRADV1</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getADV1_disk1(),server.getADV1_disk2()})+"</td>", "-", PrintSets.onToY(server.getADV1_CPU())+" "+server.getADV1_value(), PrintSets.onToY(server.getADV1_memory())+" / "+PrintSets.whenOverLimit(server.getADV1_value_2(),65), PrintSets.onToY(server.getADV1_vaccine()),PrintSets.onToY(server.getADV1_update()),PrintSets.onToGood(server.getADV1_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRADV2</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getADV2_disk1(),server.getADV2_disk2()})+"</td>", "-", PrintSets.onToY(server.getADV2_CPU())+" "+server.getADV2_value(), PrintSets.onToY(server.getADV2_memory())+" / "+PrintSets.whenOverLimit(server.getADV2_value_2(),65), PrintSets.onToY(server.getADV2_vaccine()),PrintSets.onToY(server.getADV2_update()),PrintSets.onToGood(server.getADV2_status()) })%></tr>
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRTAX1</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {server.getTAX1_disk1(),server.getTAX1_disk2()})+"</td>", "-", PrintSets.onToY(server.getTAX1_CPU())+" "+server.getTAX1_value(), PrintSets.onToY(server.getTAX1_memory())+" / "+PrintSets.whenOverLimit(server.getTAX1_value_2(),65), PrintSets.onToY(server.getTAX1_vaccine()),PrintSets.onToY(server.getTAX1_update()),PrintSets.onToGood(server.getTAX1_status()) })%></tr>
				<tr><td><b>If Any</b></td><td colspan="8"><%= server.getIfany() %></td></tr>	
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>
		

	<!-- <div class="page-break"></div> -->
	
	
	
		
		
		
		<br/>
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
				<tr><%=PrintSets.getTd(3, new String[] { "<b>TFSKRTAX2</b>", "Guest", "<td style='padding:0px;'>"+PrintSets.setTable(1, new String[] {dmzserver.getTAX2_disk1(),dmzserver.getTAX2_disk2()})+"</td>", "-", PrintSets.onToY(dmzserver.getTAX2_CPU())+" "+dmzserver.getTAX2_value(), PrintSets.onToY(dmzserver.getTAX2_memory())+" / "+PrintSets.whenOverLimit(dmzserver.getTAX2_value_2(),65), PrintSets.onToY(dmzserver.getTAX2_vaccine()),PrintSets.onToY(dmzserver.getTAX2_update()),PrintSets.onToGood(dmzserver.getTAX2_status()) })%></tr>
				<tr><td><b>If Any</b></td><td colspan="8"><%= dmzserver.getIfany() %></td></tr>
			</tbody>
		</table>
		<%= PrintSets.getFooter() %>

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
				<tr><%=PrintSets.getTd(0, new String[] { 
							  "<b>Contract Status Update</b>", PrintSets.onToY(batchjob.getC_stat_updat())         , ""
							, "<b>Daily Delinquency</b>"     , PrintSets.onToY(batchjob.getLSRMDLY_daily_backup()) , ""
							, "<b>Ebilling</b>"              , PrintSets.onToY(batchjob.getEbilling())             ,batchjob.getE_B_cnt()+" / "+PrintSets.onToY(batchjob.getE_B_rst())
							})%></tr>
				
				<tr><%=PrintSets.getTd(0, new String[] { 
					          "<b>FaxSms</b>"                , PrintSets.onToY(batchjob.getFax_SMS())              , ""
							, "<b>Funding MMS</b>"           , PrintSets.onToY(batchjob.getFunding_MMS())          , ""
							, "<b>Funding SMS</b>"           , PrintSets.onToY(batchjob.getFunding_SMS())          , ""
							})%></tr>
				
				<tr><%=PrintSets.getTd(0, new String[] { 
							  "<b>Initialize CD Rate</b>"    , PrintSets.onToY(batchjob.getInit_CD_rate())         , ""
							, "<b>LSRMDLY 백업</b>"       , PrintSets.onToY(batchjob.getLSRMDLY_daily_backup()) , ""
							, "<b>syspolicy_purge_history</b>", PrintSets.onToY(batchjob.getSyspolicy_history())   , ""
							})%></tr>

				<tr><%=PrintSets.getTd(0, new String[] { 
						      "<b>Vintage Analysis</b>", PrintSets.onToY(batchjob.getVintage_analysis())           , ""
							, "<b>YearlyVacation</b>", PrintSets.onToY(batchjob.getLeave_Mng())                    , ""
							, "<b>결산-누적캐시플로</b>", PrintSets.onToY(batchjob.getSett_accumulated_cashflow())    , ""
							})%></tr>
				
				<tr><%=PrintSets.getTd(0, new String[] { 
						      "<b>결산-누적캐시플로(수익관리)</b>", PrintSets.onToY(batchjob.getSett_accumulated_cashflow_2()) , ""
							, "<b>상거래종료</b>", PrintSets.onToY(batchjob.getC_termination())                             , ""
							, "<b>연체전이율통계잔액건수</b>", PrintSets.onToY(batchjob.getDel_rate_statictics())             , ""
							})%></tr>
							
				<tr><%=PrintSets.getTd(0, new String[] { 
						      "<b>자금상환알림</b>", PrintSets.onToY(batchjob.getFund_repayment_noti())        , ""
							, "<b>전자계산서<br/>선발행건 알림</b>", PrintSets.onToY(batchjob.getE_Bill_pubi_noti()) , ""
							, ""   , ""
							})%></tr>
											
				
				
				
				
				<tr><td><b>If Any</b></td><td colspan="8"><%= batchjob.getIfany() %></td></tr>
			</tbody>
		
		</table>
		<p style="font-size:11px; margin:0px;">*E-Billing Detail : 발송대상건/발송결과 이상유무 (Y : 이상없음)</p>
		
		<%= PrintSets.getFooter() %>
		
		
		<div class="page-break"></div>
		
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
				<!-- <tr>PrintSets.getTd(0, new String[] { "<b>Network Err</b>", "Netstat -e", "Err. No: "+networkerr.getNetwork_err(), "<b>Network Conn</b>", "Netstat -na",PrintSets.onToY(networkerr.getNetwork_conn())  })%></tr>  -->
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Internet Speed</b>", "http://speed.nia.or.kr", networkerr.getInternet_spd()+" / "+networkerr.getInternet_spd_2()+" Mbps", "<b>Traffic (IDC)</b>", "IDC Homepage", networkerr.getTraffic_IDC()+" / "+networkerr.getTraffic_IDC_2()+" Mbps" })%></tr>
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Internet Traffic</b>", "http://e-robot.skbroadband.com", networkerr.getInternet_traffic()+" / "+networkerr.getInternet_traffic_2()+" Mbps", "<b>Firm-Banking<br/>Web Cash</b>", "Balance List", PrintSets.onToY(networkerr.getFirm_banking()) })%></tr>
				
				<tr><%=PrintSets.getTd(0, new String[] { "<b>Firm-Banking<br/>Nice</b>", "Balance List", PrintSets.onToY(networkerr.getFirm_banking_nice()), "<b>Firm-Banking<br/>KCB</b>", "Balance List", PrintSets.onToY(networkerr.getFirm_banking_kcb()) })%></tr>
				
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