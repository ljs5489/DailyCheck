<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- 파일 업로드 처리를 위한 MultipartRequest 객체를 임포트 -->
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<!-- 파일 중복처리 객체 임포트 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="makeBinary.*"%>



<html>
<head>


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
</style>


<%

	








	String uploadPath = MB_DAO.getCMSpath();
	System.out.println(uploadPath);


	int size = 10*1024*1024;        // 업로드 파일 최대 크기 지정
	
	String name="";
	String subject="";
	String filename="";
	String err = "";

 
	try{
		 
		// 파일 업로드. 폼에서 가져온 인자값을 얻기 위해request 객체 전달,
		//업로드 경로, 파일 최대 크기, 한글처리, 파일 중복처리
		MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy()); 
			 
	
		System.out.println(uploadPath);
		System.out.println(request);
		System.out.println(size);
		
		// 폼에서 입력한 값을 가져옴
		//name = multi.getParameter("name");
		//subject = multi.getParameter("subject"); 
		

		String KY_NO    =multi.getParameter("KY_NO");
		String SIL_COUNT=multi.getParameter("SIL_COUNT");
		String CMS_NO   =multi.getParameter("CMS_NO");
		String SEQ_NUM  =multi.getParameter("SEQ_NUM");
		String FILE_NAME =multi.getParameter("FILE_NAME");
		
		System.out.println(KY_NO);
		System.out.println(SIL_COUNT);
		System.out.println(CMS_NO);
		System.out.println(SEQ_NUM);
		System.out.println(FILE_NAME);
		
		DataSetCust tmpDS = new DataSetCust(KY_NO,SIL_COUNT,CMS_NO,SEQ_NUM,FILE_NAME);
		
		
		
		// 업로드한 파일들을 Enumeration 타입으로 반환
		// Enumeration형은 데이터를 뽑아올때 유용한 인터페이스 Enumeration객체는 java.util 팩키지에 정의 되어있으므로
		// java.util.Enumeration을 import 시켜야 한다.
		  Enumeration files = multi.getFileNames(); 
	  
		// 업로드한 파일들의 이름을 얻어옴
		String file = (String)files.nextElement();
		//String file = "c:\\AE4119.tif";
		filename = multi.getFilesystemName(file); 
		//filename = FILE_NAME;
		
		
		
		System.out.println("path : "+uploadPath+"\\"+filename);

		//MakeBinaryTool.insertBinaryFileIntoDB(uploadPath+"\\"+filename,tmpDS);
		
		MakeBinaryTool.updateBinaryFileIntoDB(uploadPath+"\\"+filename,tmpDS);
		
		
		//MakeBinaryTool.updateBinaryFileIntoDB(filename,tmpDS);
		
		
	 }
	catch(MyErr e){  // 예외처리
		System.out.println("error! : "+e);
		err = e.getMyName().toString();
	 } 
	 catch(Exception e){  // 예외처리
		 System.out.println("error! : "+e);
	 }
 
 //out.println("작성자 : "+name+"<br>"); 
 //out.println("제목 : "+subject+"<br>");
%>

</head>
<body>

	<% if("".equals(err)){ %>
		<h2>File was Uploaded... !!!</h2>
		<h4>업로드 된 파일명:</h4>
		<%=filename%><br>	
	<% }else{ %>
		<h1>File Upload failed....!!!</h1>	
		<h4>에러는 다음과 같습니다. IT팀에 문의해주세요. : </h4>
		<hr/>
		<h5><%= err %></h5>
		<hr/>
	<% } %>
	
	<button onclick="window.close()">닫기</button>
	
</body>
</html>

