<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Print</title>

<style>
html {
	width: 21cm;
	height: 29.7cm;
	border: 1px solid black;
}

#print {
	border: 3px solid black;
	width: 595px;

}

table{
	border-collapse: collapse;
}

td {
	border: 1px solid black;
	padding: 0px;
	margin: 0px;
}

tr {
	border: 1px solid black;
	padding: 0px;
	margin: 0px;
}

img {
	width: 100%;
	height: 100%;
}
</style>

</head>
<body>
	<table style="float:right">
		<tr>
			<td >Date</td>
			<td>It Head</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
		</tr>
	</table>
	<h2>Daily System Operation Check List</h2>
	
	<h3>Date : . .</h3>
	<h3>●Pre Check ( Min Park ) : ( : )</h3>
	<table id="print">
		<tr>
			<td style="position: relative; width: 300px; height: 80px;"><img
				src="../img/gray.jpg"
				style="width: 100%; height: 100%; border: 0; margin: 0px; padding: 0" />
				<span
				style="position: absolute; left: 33%; top: 45%; font-size: 15px;">hello?</span>
			</td>
			<td>ARS(8:50,9:00)</td>
			<td>Mail</td>
			<td>Fax</td>
			<td>VRS</td>
			<td>Messanger</td>
			<td>Lease&Loan</td>
		</tr>
		<tr>
			<td>Connect Status</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>

	</table>

</body>
</html>