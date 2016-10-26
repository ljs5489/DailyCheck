package makeBinary;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import tools.SystemWriterLog;

public class MakeFileTool {
	static OutputStream targetFile = null;
	static int TotCnt = 0;
	
	
	
	
	
	
	
	
	
	
	public static void makeFileFromDB(String date, String path) throws Exception {
// wb_filedown.PageUrl = "http://dcsp.tfskr.co.kr:50002/DailyCheck/Kaizen/GetBinary.jsp?p_date="+date+"&U_ID="+U_ID;	
// wb_filedown.Run();	

		targetFile = new FileOutputStream(path);
		TotCnt     = MB_DAO.getAllRecordCount(date);	
		
		
		// ==============Data Record ===============

		try{
			makeHeaderRecord(date);
			makeDataRecord(date);
			makeTailerRecord(date);
		}
		catch(Exception e){			
			//System.out.println(e);
		}
		
		
		SystemWriterLog.writeLog("MakeFileTool.java | "+path+" | "+date);

		// ==============Data Record ===============
		
		
		
		
		targetFile.close();
	}
	
	
	
	
	
	
	
	
	
	private static void makeHeaderRecord(String date) throws Exception {		
		MB_DAO.makeHeaderRecord(date);
	}

	public static void makeDataRecord(String date) throws Exception {
		MB_DAO.makeDataRecord(date);
	}
	public static void makeTailerRecord(String date) throws Exception {
		MB_DAO.makeTailerRecord(date);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
