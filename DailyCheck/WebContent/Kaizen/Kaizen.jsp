<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, comments.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<% 
String resultTxt = "";
RequestParameter param = new RequestParameter(request);
String query = param.getString("query", "");
System.out.println("query : "+query);

if (request.getMethod().equals("POST")) {
	resultTxt = Test.testQuery(query);
}
%>



<script>

if(confirm("<%= resultTxt %>")){ 
	alert(1);
	<% Test.exeQuery(query); %>
}

</script>



</head>
<body>
	
	<form method="POST">
		<textarea id="query" name="query" style="width:500px; height:400px;"></textarea>
	<button type=submit>쿼리전송</button>
	</form>
</body>
</html>