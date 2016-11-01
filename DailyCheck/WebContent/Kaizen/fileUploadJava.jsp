<%@ page import = "java.util.*" %>
<%@ page import="com.tobesoft.platform.*" %>
<%@ page import="com.tobesoft.platform.data.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="makeBinary.*" %>

<%@ page contentType="text/xml; charset=utf-8" %>

<%! 
/*********** 공통함수 *************/
// DataSet 값 가져오기, 단, "null"을 ""로
public String dsGetString(Dataset ds, int row, String id){
	String returnVal = "";
	try{
		returnVal = ds.getColumnAsString(row, id);		
	}
	catch(Exception e){ }
	finally{
		return returnVal;
	}
}
public byte[] dsGetBinary(Dataset ds, int row, String id){
	byte[] returnVal = null;
	try{
		returnVal = ds.getColumnAsByteArray(row, id);		
	}
	catch(Exception e){ }
	finally{
		return returnVal;
	}
}

%>



<%
/****** Service API 초기화 ******/
/** Input 부분 초기화 **/
VariableList in_vl = new VariableList();
DatasetList  in_dl = new DatasetList();
PlatformRequest pReq = new PlatformRequest(request, "utf-8");

/** Web Server에서 XML수신 및 Parsing **/
pReq.receiveData();

/** List 획득 및 Dataset, 변수 획득 **/
in_vl = pReq.getVariableList();
in_dl = pReq.getDatasetList();
Dataset ds = in_dl.getDataset("input");
Dataset data_cms = in_dl.getDataset("input2");

%>








<%


String FILE_PATH     = dsGetString(ds,0, "FILE_PATH");
String FILE_NAME     = dsGetString(ds,0, "FILE_NAME").toLowerCase()
							.replaceAll(".jpg","")
							.replaceAll(".jpeg","")
							.replaceAll(".gif","")
							.replaceAll(".pdf","")
							.replaceAll(".tif","");
//jpg, jpeg, gif, tif, pdf

byte[] FILE_BIN_DATA = dsGetBinary(ds,0, "FILE_BIN_DATA");

String KY_NO     = dsGetString(data_cms,0, "KY_NO");
String SIL_COUNT = dsGetString(data_cms,0, "SIL_COUNT");
String SEQ_NUM   = dsGetString(data_cms,0, "SEQ_NUM");
String CMS_NO   = dsGetString(data_cms,0, "CMS_NO");

System.out.println(KY_NO);
System.out.println(SIL_COUNT);
System.out.println(FILE_NAME);
System.out.println("=========================");
//MakeFileTool.makeFileFromDS("C:\\CMS_Evidence_File\\",test2);





MakeFileTool.makeFileFromDS(
		MB_DAO.getCMSpath()+FILE_NAME
		,FILE_BIN_DATA
		,new DataSetCust(KY_NO,SIL_COUNT,CMS_NO,SEQ_NUM,"1")
	);





/** Output 부분 초기화 **/
VariableList out_vl = new VariableList();
DatasetList  out_dl = new DatasetList();
%>








<%
/********* 변수를 VariableList에 추가 ************/
out_vl.addStr("ErrorCode", "0");
out_vl.addStr("ErrorMsg", "SUCC"+"HelloWorld!");
//out_vl.addStr("out_var", FILE_PATH);

%>

<%
/******** 결과 XML 생성 및 Web Server로 전달 ******/
out.clearBuffer();
PlatformResponse pRes = new PlatformResponse(response, PlatformRequest.XML, "utf-8");
pRes.sendData(out_vl, out_dl);
%>
