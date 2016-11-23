package makeBinary;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import comments.Comment;
import tools.DB;
import tools.SystemWriterLog;

public class MB_DAO {
	
	static int block = 0;
	static int space = 0;
	static String cms_file_path = "";
	
	
	public static void makeFileFromDataSet(String path, byte[] data,DataSetCust ds) throws Exception {
		SystemWriterLog.writeLog("path : "+path);
		SystemWriterLog.writeLog(""+data);
		OutputStream targetFile = new FileOutputStream(path);
		
		updateBinaryData(data,ds);
		
		targetFile.write(data);
		targetFile.close();
	}
	
	
	
	
	
    public static String getCMSpath() throws Exception {
    	if("".equals(cms_file_path)){
            Properties properties = new Properties();
            InputStream inputstream = MB_DAO.class.getClassLoader().getResourceAsStream("envSet.properties");
            properties.load(inputstream);
            cms_file_path = properties.getProperty("CMS_FILE_PATH");    		
    	}
    	return cms_file_path;
    }   
    
	public static int getAllRecordCount(String date) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		String sql = " SELECT cnt = COUNT(*) FROM [TFS_DB].[dbo].[LSAE5119D] WHERE REG_DATE='" + date + "'";

		try (
				Connection con = DB_makeBin.getConnection(); 
				
				PreparedStatement stmt = con.prepareStatement(sql)) {

			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next())
					return rs.getInt("cnt");
			}
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return 0;
	}
	public static void makeHeaderRecord(String date) throws Exception {		
		String strHeader = ""
		 + AN(6, "AE5119")     // 1. 업무 구분 코드 AE5119
		 +  N(2, "11") 	      // 2. 데이터 구분 코드 '11'
		 +  N(7, "0000000")    // 3. 일련 번호 "0000000"
		 +  N(8, date)         // 4. 요청 일자 "YYYYMMDD"
		 +  N(1, "2") 	      // 5. 서비스 종류
		 + AN(20,"9965913443") // 6. 이용기관코드
		 +  A(1)			      // 7. 펌재판매여부
		 + AN(10,"2208704770") // 8. 사업자번호
		 +  N(7, ""+MakeFileTool.TotCnt)  // 9. 총 요청 개수
		 +  A(962)             // 10. FILLER
		 + "";

		byte[] data = strHeader.getBytes();
		MakeFileTool.targetFile.write(data);
		
		block = 0;
		space = 0;
	}
	public static void makeDataRecord(String date) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
		String sql = Queries.select1(date);
		
		//System.out.println(sql);
		//int K =0;			
		
		
		try (Connection con = DB_makeBin.getConnection(); 
				PreparedStatement stmt = con.prepareStatement(sql)) {

			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()){
					//SystemWriterLog.writeLog(rs.toString());
					//K++;
					//if(K!=1) continue;
					makeDataRecords(rs);
					//SystemWriterLog.writeLog(K);
				}
			}
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}

	private static void makeDataRecords(ResultSet resultSet) throws Exception {
		String RECORD_TYPE    = chkVal(resultSet.getString("RECORD_TYPE"));
		String SEQ_NUM        = chkVal(resultSet.getString("SEQ_NUM"));
		String REQ_TYPE       = chkVal(resultSet.getString("REQ_TYPE"));
		String ORG_CD         = chkVal(resultSet.getString("ORG_CD"));
		String CMS_NO         = chkVal(resultSet.getString("CMS_NO"));
		String BANK_CD        = chkVal(resultSet.getString("BANK_CD"));
		String ACCT_NO        = chkVal(resultSet.getString("ACCT_NO"));
		String APPLY_DATE     = chkVal(resultSet.getString("APPLY_DATE"));
		String EVIDENCE_TYPE  = chkVal(resultSet.getString("EVIDENCE_TYPE"));
		String RESULT_YN      = chkVal(resultSet.getString("RESULT_YN"));
		String FILE_EXTENSION = chkVal(resultSet.getString("FILE_EXTENSION"));
		String FILE_SIZE      = chkVal(resultSet.getString("FILE_SIZE"));					
		byte[] binaryData     = chkVal(resultSet.getBytes("FILE_BIN_DATA"));				
		
		/*
		SystemWriterLog.writeLog(RECORD_TYPE    );
		SystemWriterLog.writeLog(SEQ_NUM        );
		SystemWriterLog.writeLog(REQ_TYPE       );
		SystemWriterLog.writeLog(ORG_CD         );
		SystemWriterLog.writeLog(CMS_NO         );
		SystemWriterLog.writeLog(BANK_CD        );
		SystemWriterLog.writeLog(ACCT_NO        );
		SystemWriterLog.writeLog(APPLY_DATE     );
		SystemWriterLog.writeLog(EVIDENCE_TYPE  );
		SystemWriterLog.writeLog(RESULT_YN      );
		SystemWriterLog.writeLog(FILE_EXTENSION );
		SystemWriterLog.writeLog(FILE_SIZE      );
		SystemWriterLog.writeLog("==================");
		*/
		
		SystemWriterLog.writeLog(binaryData.length);

		if( !(binaryData.length == 0) ){			
			// 채워줘야 하는 공백 계산
			space = (int) (1024 - ((binaryData.length + 141) % 1024));			
		}
		else {
			space = 883;
		}
	
		SystemWriterLog.writeLog("space => "+space);
		
		String strData = "" //나중에 수정.		
		+ AN(6,RECORD_TYPE)		// 1. 업무구분코드
		+  N(2,"22")			// 2. 데이터 구분 코드 "22"
		+  N(7,SEQ_NUM)  	// 3. 일련 번호
		+  N(1,REQ_TYPE)	// 4. 요청 유형 '1'(사후점검), '2' (고객열람)
		+  A(10)			// 5. FILLER		
		+ AN(20,ORG_CD) 	// 6. 이용기관코드
		+ AN(30,CMS_NO) 		// 7. 납부자번호
		+  N(3, BANK_CD) 		// 8. 금융회사코드
		+ AN(20,ACCT_NO) 			// 9. 계좌번호
		+  N(8, APPLY_DATE) 		// 10. (요청결과) 신청일
		+  N(1, EVIDENCE_TYPE)			// 11. (요청결과) 동의자료 구분
		+  A(10) 						// 12. 펌 재판매기관 외 : ' '
		+  A(10) 						// 13. 펌 재판매기관 외 : ' '
		+ AN(1, RESULT_YN)			// 14. 요청결과 여부
		+ AN(5, FILE_EXTENSION) // 15. 동의자료 확장자
		+  N(7, FILE_SIZE) 		// 16. 동의자료 길이
		+ "";
		byte[] recordData = strData.getBytes();				
		byte[] tmp = new byte[10];		
		
		// 17. 동의자료 Data
		if ( binaryData != null ){
			tmp = binaryData;
		}
				
		byte[] tmpdata = new byte[tmp.length+ recordData.length];
		System.arraycopy(recordData, 0, tmpdata, 0, recordData.length );
		System.arraycopy(tmp, 0, tmpdata, recordData.length, tmp.length);
		
		
		
		
		// ================= 18. FILLER =======================
		strData = rpad(""," ",space); 
		tmp = strData.getBytes();		
		byte[] data = new byte[tmp.length + tmpdata.length];
		System.arraycopy(tmpdata, 0, data, 0, tmpdata.length );
		System.arraycopy(tmp, 0, data, tmpdata.length, tmp.length);
		// ================= /18. FILLER =======================
		
		block += data.length;
		MakeFileTool.targetFile.write(data);
	}


	public static void makeTailerRecord(String date) throws Exception {		
		String strHeader = ""
		 + AN(6, "AE5119")                 // 1. 업무 구분 코드 AE5119
		 +  N(2, "33") 	                   // 2. 데이터 구분 코드 
		 +  N(7, "9999999")               // 3. 일련 번호
		 + AN(20,"9965913443")             // 4.이용기관코드
		 +  N(7, ""+MakeFileTool.TotCnt)  // 5.총 Data Record개수
		 +  N(10,""+Integer.toString(block/1024))                // 6.총 Data Block개수 0000001940
		 +  A(972)                        // 10. FILLER
		 + "";
		
		byte[] data = strHeader.getBytes();
		MakeFileTool.targetFile.write(data);
	}
	
	public static void insertBinaryData(byte[] binaryData, DataSetCust ds) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB_makeBin.getConnection();
			String sql = "";
			sql ="" //+= "INSERT INTO CMSATTACH(test) VALUES ( ? ) ";
			+ "INSERT INTO CMSATTACH(KY_NO,SIL_COUNT,CMS_NO,SEQ_NUM,FILE_ROW,FILE_BIN_DATA)" 
			+ "VALUES(?,?,?,?,?,?)"
			+ "";

			SystemWriterLog.writeLog("getKY_NO : " + ds.getKY_NO());
			SystemWriterLog.writeLog("getSIL_COUNT : " + ds.getSIL_COUNT());
			SystemWriterLog.writeLog("getCMS_NO : " + ds.getCMS_NO());
			SystemWriterLog.writeLog("getSEQ_NUM : " + ds.getSEQ_NUM());
			SystemWriterLog.writeLog("getFILE_ROW : " + ds.getFILE_ROW());			
			

			statement = connection.prepareStatement(sql);
			statement.setString(1,ds.getKY_NO()); 
			statement.setString(2,ds.getSIL_COUNT()); 
			statement.setString(3,ds.getCMS_NO()); 
			statement.setString(4,ds.getSEQ_NUM()); 
			statement.setString(5,ds.getFILE_ROW());
			statement.setBytes(6, binaryData); 

			statement.executeUpdate();
		} catch (Exception e) {
			throw e;
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}
	
	public static void updateBinaryData(byte[] binaryData, DataSetCust ds) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB_makeBin.getConnection();
			String sql = "";
			sql ="" //+= "INSERT INTO CMSATTACH(test) VALUES ( ? ) ";
			+ "UPDATE CMSATTACH"
			+ "   SET FILE_BIN_DATA = ?"
			+ "     , UPDAT_DATE = GETDATE() "		
			+ "     , UPDAT_IDNO = ? "
			+ " WHERE 1=1"
			+ "   AND KY_NO = ? "
			+ "   AND SIL_COUNT = ? "
			+ "   AND CMS_NO = ? "
			+ "   AND SEQ_NUM = ? "			
			+ "";

			
			
			SystemWriterLog.writeLog("getU_ID : " + ds.getU_ID());
			SystemWriterLog.writeLog("getKY_NO : " + ds.getKY_NO());
			SystemWriterLog.writeLog("getSIL_COUNT : " + ds.getSIL_COUNT());
			SystemWriterLog.writeLog("getCMS_NO : " + ds.getCMS_NO());
			SystemWriterLog.writeLog("getSEQ_NUM : " + ds.getSEQ_NUM());						
			
			//SystemWriterLog.writeLog("hello : "+sql);
			
			statement = connection.prepareStatement(sql);
			statement.setBytes(1, binaryData);
			statement.setString(2,ds.getU_ID()); 
			statement.setString(3,ds.getKY_NO()); 
			statement.setString(4,ds.getSIL_COUNT()); 
			statement.setString(5,ds.getCMS_NO()); 
			statement.setString(6,ds.getSEQ_NUM()); 			
			 

			statement.executeUpdate();
		} catch (Exception e) {
			SystemWriterLog.writeLog(e);
			throw e;
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}
	
	//============= Block 개수 계산 ================
	private static void calBlockCnt(String strData){

	}
	//============= /Block 개수 계산 ================	
	
	
	
	
	//=======================================================
	private static String A(int val){
		StringBuilder sb = new StringBuilder();		
		for(int i=0; i < val; i++) sb.append(" ");		
		return sb.toString();
	}    
	private static String AN(int position, String value){ //공백으로 채운다.
		value = value.replaceAll("\n", "");
		return rpad(value," ",position); 
	}
	private static String  N(int position, String value){ //0으로 채운다.
		value = value.replaceAll("\n", "");
		return lpad(value,"0",position); 
	}
	private static String lpad(String str, String addStr, int len) {
        StringBuilder sb = new StringBuilder();	                
        for (int i = 0; i < len - str.length(); i++)
        	sb = sb.append(addStr);        
        return  sb + str;
    }
	private static String rpad(String str, String addStr, int len) {
		 StringBuilder sb = new StringBuilder();			 
        for (int i = 0; i < len - str.length(); i++)
        	sb = sb.append(addStr);           
        return str + sb;
    }
	private static String chkVal(String val){
		if(val != null) return val;
		else return "";		
	}
	private static byte[] chkVal(byte[] val){
		if(val != null) return val;
		else return  "".getBytes();
	}
	//=======================================================
}

