<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>

<html>
<head>
<link rel="stylesheet" href="../css/printformat.css">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>Daily check</title>
<%
	//String[] arr2 = new String[3];
	//String[] arr3 = new String[]{"1","2"};
%>
<style>
@media print
{
      .page-break  { display:block; page-break-before:always; }

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
				<h3 style="margin:15px;">Date :</h3>
			
			</td>
			<td class="t_r">
				<br/>
				<table style="width: 200px;">
					<tr style="width:200px; height:40px; border-bottom:1px solid black;">
						<td style="width:100px;"><h2>Date : </h2></td>
						<td></td>
					</tr>
					<tr style="width:200px; height:40px; border-bottom:1px solid black;">					
						<td style="width:100px;"><h2>IT Head : </h2></td>
						<td></td>
					</tr>					
				</table>
			</td>
		</tr>
	</table>

	<div id="wrap">
		<div class="over_h">
			<div style="width: 50%;" class="f_l">
				<table cellspacing="0" cellpadding="0" class="top2"
					style="width: 100%; margin-bottom: 0px;">
					<colgroup>
						<col width="10%" />
						<col width="90%" />
					</colgroup>
				</table>
			</div>

			<div style="width: 50%;" class="f_r"></div>
		</div>

		<br /><br />

		<table width="100%" cellpadding="0" cellspacing="0" class="title">
			<colgroup>
				<col width="65%" />
				<col width="35%" />
			</colgroup>
			<tr>
				<td><h2>●Pre check ( Min Park ) : ( : )</h2></td>
				<td>__________________________________ [ Error : N ]</td>
			</tr>
			<tr></tr>
		</table>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "16%", "13%", "13%", "13%", "13%", "16%" })%>
			</colgroup>
			<thead>
				<tr>
					<%=PrintSets.getTh(new String[] { "Check Name", "ARS(8:50,9:00)", "Mail", "Fax", "VRS", "Messanger", "Lease&Loan" })%>
				</tr>
			</thead>
			<tbody>
				<tr><%=PrintSets.getTd(new String[] { "<b>Connect Status</b>", "Good", "", "", "", "", "" })%></tr>
				<tr>
					<td rowspan="2"><b>Homepage</b></td>
					<%=PrintSets.getTd(new String[] { "<b>Visual Inspection</b>", "<b>Image</b>", "<b>Font</b>", "<b>Link(5 Test)</b>",
					"<b>BBS(Notice)</b>", "<b>Index.asp(Size)</b>" })%>
				</tr>
				<tr><%=PrintSets.getTd(new String[] { "Good", "", "", "", "", "" })%></tr>
				<tr>
					<td rowspan="2"><b>IT ROOM(W)</b></td>
					<%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%>
				</tr>
				<tr><%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%></tr>
				<tr>
					<td rowspan="2"><b>IT ROOM(E)</b></td>
					<%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%>
				</tr>
				<tr><%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%></tr>
			</tbody>
		</table>
		<h5>※ N(Normal)/A(Abnormal), Y(Normal)/N(Not Normal)</h5>

		<br /> <br />
		 
		
		<table width="100%" cellpadding="0" cellspacing="0" class="title">
			<colgroup>
				<col width="65%" />
				<col width="35%" />
			</colgroup>
			<tr>
				<td><h2>●Servers ( Min Park ) : ( : )</hs2></td>
				<td>__________________________________ [ Error : N ]</td>
			</tr>
			<tr></tr>
		</table>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "9%", "16%", "9%", "10%", "10%", "10%", "10%", "10%" })%>
			</colgroup>
			<thead>
				<tr>
					<%=PrintSets.getTh(new String[] { "Server Name", "VT", "Disk Usage", "DB", "CPU", "Memory", "Vaccine","Update","Status" })%>
				</tr>
			</thead>
			<tbody>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRWEB", "Xen", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDBM", "Xen", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEW", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRMAIL", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRAPP", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKR-FAX", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRADN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRVRS", "", "/ / %", "", "", "", "","","" })%></tr>	
				<tr><%=PrintSets.getTd(new String[] { "TFSKRFILE", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
			</tbody>
		</table>


		<br /> <br /> <br /> <br /> <br />


	</div>
</body>
<div class="page-break"></div>

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
				<h3 style="margin:15px;">Date :</h3>
			
			</td>
			<td class="t_r">
				<br/>
				<table style="width: 200px;">
					<tr style="width:200px; height:40px; border-bottom:1px solid black;">
						<td style="width:100px;"><h2>Date : </h2></td>
						<td></td>
					</tr>
					<tr style="width:200px; height:40px; border-bottom:1px solid black;">					
						<td style="width:100px;"><h2>IT Head : </h2></td>
						<td></td>
					</tr>					
				</table>
			</td>
		</tr>
	</table>

	<div id="wrap">
		<div class="over_h">
			<div style="width: 50%;" class="f_l">
				<table cellspacing="0" cellpadding="0" class="top2"
					style="width: 100%; margin-bottom: 0px;">
					<colgroup>
						<col width="10%" />
						<col width="90%" />
					</colgroup>
				</table>
			</div>

			<div style="width: 50%;" class="f_r"></div>
		</div>

		<br /><br />

		<table width="100%" cellpadding="0" cellspacing="0" class="title">
			<colgroup>
				<col width="65%" />
				<col width="35%" />
			</colgroup>
			<tr>
				<td><h2>●Pre check ( Min Park ) : ( : )</h2></td>
				<td>__________________________________ [ Error : N ]</td>
			</tr>
			<tr></tr>
		</table>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "16%", "13%", "13%", "13%", "13%", "16%" })%>
			</colgroup>
			<thead>
				<tr>
					<%=PrintSets.getTh(new String[] { "Check Name", "ARS(8:50,9:00)", "Mail", "Fax", "VRS", "Messanger", "Lease&Loan" })%>
				</tr>
			</thead>
			<tbody>
				<tr><%=PrintSets.getTd(new String[] { "<b>Connect Status</b>", "Good", "", "", "", "", "" })%></tr>
				<tr>
					<td rowspan="2"><b>Homepage</b></td>
					<%=PrintSets.getTd(new String[] { "<b>Visual Inspection</b>", "<b>Image</b>", "<b>Font</b>", "<b>Link(5 Test)</b>",
					"<b>BBS(Notice)</b>", "<b>Index.asp(Size)</b>" })%>
				</tr>
				<tr><%=PrintSets.getTd(new String[] { "Good", "", "", "", "", "" })%></tr>
				<tr>
					<td rowspan="2"><b>IT ROOM(W)</b></td>
					<%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%>
				</tr>
				<tr><%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%></tr>
				<tr>
					<td rowspan="2"><b>IT ROOM(E)</b></td>
					<%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%>
				</tr>
				<tr><%=PrintSets.getTd(new String[] { "<b>State( : )</b>", "", "<b>Aircon</b>", "", "<b>Water Pump</b>", "" })%></tr>
			</tbody>
		</table>
		<h5>※ N(Normal)/A(Abnormal), Y(Normal)/N(Not Normal)</h5>

		<br /> <br />
		 
		
		<table width="100%" cellpadding="0" cellspacing="0" class="title">
			<colgroup>
				<col width="65%" />
				<col width="35%" />
			</colgroup>
			<tr>
				<td><h2>●Servers ( Min Park ) : ( : )</hs2></td>
				<td>__________________________________ [ Error : N ]</td>
			</tr>
			<tr></tr>
		</table>
		<table cellspacing="0" cellpadding="0" class="datatable">
			<colgroup>
				<%=PrintSets.getCol(new String[] { "16%", "9%", "16%", "9%", "10%", "10%", "10%", "10%", "10%" })%>
			</colgroup>
			<thead>
				<tr>
					<%=PrintSets.getTh(new String[] { "Server Name", "VT", "Disk Usage", "DB", "CPU", "Memory", "Vaccine","Update","Status" })%>
				</tr>
			</thead>
			<tbody>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRWEB", "Xen", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDBM", "Xen", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEW", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRMAIL", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRAPP", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKR-FAX", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRADN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRVRS", "", "/ / %", "", "", "", "","","" })%></tr>	
				<tr><%=PrintSets.getTd(new String[] { "TFSKRFILE", "", "/ / %", "", "", "", "","","" })%></tr>				
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
				<tr><%=PrintSets.getTd(new String[] { "TFSKRDEVN", "", "/ / %", "", "", "", "","","" })%></tr>
			</tbody>
		</table>


		<br /> <br /> <br /> <br /> <br />


	</div>
</body>


</html>
