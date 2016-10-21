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
		
		
		targetFile = new FileOutputStream(path);
		TotCnt     = MB_DAO.getAllRecordCount(date);	
		
		
		// ==============Data Record ===============

		try{
			makeHeaderRecord(date);
			makeDataRecord(date);
			makeTailerRecord(date);
		}
		catch(Exception e){
			
			
		}
		//SystemWriterLog.writeLog("path : "+path+" | date : "+date);

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
