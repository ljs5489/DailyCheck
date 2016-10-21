<%@ page import="makeBinary.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>



<%

	String p_date = request.getParameter("p_date");//
	String p_id   = request.getParameter("U_ID");//
	
	if(p_id == null || p_id.equals("")){		
		p_id = "Unknown";
	}
	
	String basic_path = "C:\\inetpub\\wwwroot\\test\\";
	// 서버에 실제 저장된 파일명
	String filename = p_id+"_"+p_date+"_CMS";

	MakeFileTool.makeFileFromDB(p_date, basic_path + filename); //파일 만든다.


	//경로
	String realPath = basic_path + filename;
	System.out.println(realPath);
	
	
	File file = new File(realPath);
	byte b[] = new byte[(int) file.length()];
	if (file.length() > 0 && file.isFile()) { //0byte 이상이고, 해당 파일이 존재하는 경우
		response.setContentType("application/x-msdownload");
		response.setHeader("Content-Disposition", "attachment;filename=" + filename + ";");

		BufferedInputStream input = new BufferedInputStream(new FileInputStream(file));
		BufferedOutputStream output = new BufferedOutputStream(response.getOutputStream());
		int read = 0;
		try {
			while ((read = input.read(b)) != -1) {
				output.write(b, 0, read);
			}
			output.close();
			input.close();
			out.clear();
			out = pageContext.pushBody();

		} catch (Exception e) {
			System.out.println("에러메세지: " + e.getMessage());
		} finally {
			if (output != null) {
				output.close();
			}
			if (input != null) {
				input.close();
			}
		}
	} 
	else{
		System.out.println(file.length());
		System.out.println(file.isFile());		
	}
%>