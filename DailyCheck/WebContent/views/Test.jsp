<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, Test.*, pages.*, java.util.* "%>

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<style>
	table{
		border-collapse: collapse;
		width: 800px;
	}
	table td{
		border: 1px solid black;
	}
	table tr:nth-child(2n){
		background-color:#aaaaaa;
	}
	table tr:nth-child(2n-1){
		background-color:#bbbbbb;
	}
	table tr:hover{
		background-color:white;	
	}	
	table tr:active{
		background-color:black;	
	}
	#blank{
		overflow:scroll;
	}
</style>

<script>
$(function(){
	$("table tr").click(function(){
		$("#blank").append($(this));	 
	});
	
	
});

	
</script>
</head>



<body>

<%
	List<Backup> temp = Test.testMe(); //java.util.*	
%>

<h1>Hello world!</h1>

<table>
<%
	int i=0;
	for(Backup article : temp){		
%>

		<tr>
			<td><%= ++i %>번째 테스트</td>
			<td>check time : <%= article.getId() %> / check time : <%= article.getCheckTime() %> / check time : <%= article.getChecker() %></td>
		</tr>	
	
		
<%
	
	
	}
%>

 
</table>	
<div id="blank" style="width:800px; height: 500px; position:fixed; top: 10px; right: 10px; border: 2px solid black;">
	
</div>
</body>
</html>