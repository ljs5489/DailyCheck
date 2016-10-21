package makeBinary;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import comments.Comment;
import tools.DB;

public class MB_DAO {
	
	static int block = 0;
	static int space = 0;

	public static int getAllRecordCount(String date) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		String sql = " SELECT cnt = COUNT(*) FROM [TFS_DB].[dbo].[LSAE5119D] WHERE REG_DATE='" + date + "'";

		try (Connection con = DB_makeBin.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

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
	}
	public static void makeDataRecord(String date) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
		String sql = Queries.select1(date);				
					
		try (Connection con = DB_makeBin.getConnection(); PreparedStatement stmt = con.prepareStatement(sql)) {

			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()){
					System.out.println(4);
					makeDataRecords(rs);
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
		System.out.println(RECORD_TYPE    );
		System.out.println(SEQ_NUM        );
		System.out.println(REQ_TYPE       );
		System.out.println(ORG_CD         );
		System.out.println(CMS_NO         );
		System.out.println(BANK_CD        );
		System.out.println(ACCT_NO        );
		System.out.println(APPLY_DATE     );
		System.out.println(EVIDENCE_TYPE  );
		System.out.println(RESULT_YN      );
		System.out.println(FILE_EXTENSION );
		System.out.println(FILE_SIZE      );
		System.out.println("==================");
		*/
		

		if( !(binaryData.length == 0) ){			
			// 채워줘야 하는 공백 계산
			System.out.println(binaryData.length);
			space = (int) (1024 - ((binaryData.length + 141) % 1024));			
			System.out.println(space);
		}
		else {
			space = 883;
		}
	
		
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
		 
		byte[] binData = strData.getBytes();
		MakeFileTool.targetFile.write(binData);
		//MakeFileTool.targetFile.write(binaryData);		
		
		//calBlockCnt(strData); // Block 개수 계산

		byte[] tmp = new byte[10];		
		
		if ( binaryData != null ){
			tmp = binaryData;
		}
		
		byte[] recordData = strData.getBytes();
		
		byte[] tmpdata = new byte[tmp.length+ recordData.length];
		System.arraycopy(recordData, 0, tmpdata, 0, recordData.length );
		System.arraycopy(tmp, 0, tmpdata, recordData.length, tmp.length);
		
		
		
		
		// ================= 18. FILLER =======================
		strData = rpad(strData," ",space); //나중에 수정
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
		 +  N(10,""+block)                // 6.총 Data Block개수 0000001940
		 +  A(972)                        // 10. FILLER
		 + "";

		byte[] data = strHeader.getBytes();
		MakeFileTool.targetFile.write(data);
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
