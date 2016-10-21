<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<% 

	String KY_NO    =request.getParameter("KY_NO");
	String SIL_COUNT=request.getParameter("SIL_COUNT");
	String CMS_NO   =request.getParameter("CMS_NO");
	String SEQ_NUM  =request.getParameter("SEQ_NUM");
	String FILE_ROW =request.getParameter("FILE_ROW");
	
	System.out.println(KY_NO);
	System.out.println(SIL_COUNT);
	System.out.println(CMS_NO);
	System.out.println(SEQ_NUM);
	System.out.println(FILE_ROW);
	
%>


<title>TOYOTA FINANCIAL SERVICES KOREA</title>

<style>
html{	
	position:absolute;
	overflow:hidden;	
	width: 940px;
	height:255px;
}
body{
	position:absolute;
	overflow:hidden;	
	width: 940px;
	height:255px;
}
.values{
	display: none;
}
</style>
</head>
<body>
	<!-- enctype="multipart/form-data" 파일이나 대용량 데이터 보낼때 데이터 전송 방식 -->
	<form name="fileForm" method="post" enctype="multipart/form-data"
		action="fileUpload.jsp">
		<!-- 작성자 : <input type="text" name="name"><br> -->
		<!-- 제목 : <input type="text" name="subject"><br> -->
		upload the file... 
		<input type="file" name="filename"><hr/>
		<input type="submit" value="Upload">
		<span>    </span>	
		<button onclick="window.close()"> 닫기 </button>
		
		<input class="values" name="KY_NO"     value="<%=KY_NO%>">
		<input class="values" name="SIL_COUNT" value="<%=SIL_COUNT%>">
		<input class="values" name="CMS_NO"    value="<%=CMS_NO%>">
		<input class="values" name="SEQ_NUM"   value="<%=SEQ_NUM%>">
		<input class="values" name="FILE_ROW"  value="<%=FILE_ROW%>">
	</form>
	
	
	
</body>
</html>