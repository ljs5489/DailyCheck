package makeBinary;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Queries {
	
	/*
		public static void makeDataRecord(String date) throws Exception
		  
		[dbo].[LSE_CMS_EVIDENCE_SP] '"+date+"'"; <- 로 대체했음.			
	*/
	static String select1(String date){
		return ""
			+" SELECT A.RECORD_TYPE											                                            "
			+"		, A.SEQ_NUM 												                                        "
			+"		, A.ORG_CD 												                                            "
			+"		, A.REG_DATE 												                                        "	
			+"		, A.REQ_TYPE 												                                        "
			+"		, A.CMS_NO 												                                            "
			+"		, A.BANK_CD 												                                        "
			+"      , BANK_NM = (SELECT CODE_HNAME FROM LSBSOPE WHERE CODE_FIRST = 'B38'+SUBSTRING(A.BANK_CD,1,3))      "
			+"		, A.ACCT_NO 												                                        "	
			+"		, A.APPLY_DATE 												                                        "   
			+"		, A.EVIDENCE_TYPE 											                                        "	
			+"		, RESULT_YN = 'Y'											                                        "	
			+"      , EVIDENCE_NM    = ISNULL((SELECT CODE_HNAME FROM LSBSOPE                                           "
			+"                                  WHERE CODE_FIRST = 'R8000' + A.EVIDENCE_TYPE ), '')                     "           	
			+"		, C.FILE_NAME		 	    								                                        "
			+"		, C.FILE_SIZE		    									                                        "
			+"		, FILE_EXTENSION = C.FILE_EXTENSION							                                        "
			+"      , A.FILE_BIN_DATA                                                                                   "
			+"		, A.KY_NO		 											                                        "
			+"		, A.SIL_COUNT	 											                                        "
			+"		, A.CF_HCODE	 											                                        "
			+"		, A.CF_SCODE	 											                                        "
			+"		, CUSTNAME = (	SELECT	CF_HANNAME 							                                        "
			+"						  FROM	LSBSSAP								                                        "
			+"						 WHERE	CF_HCODE = A.CF_HCODE				                                        "
			+"						   AND	CF_SCODE = A.CF_SCODE )                                                     "	
			+"		, A.ENTRY_DATE 											                                            "
			+"		, A.ENTRY_IDNO 											                                            "
			+"		, A.UPDAT_DATE 											                                            "
			+"		, A.UPDAT_IDNO 											                                            "
			+"   FROM LSAE5119D	A											                                            "  
			+"  			 LEFT OUTER JOIN LSEACMS B                                                                  "
		    +"  		       ON A.KY_NO = B.KY_NO                                                                     "
		    +"  			  AND A.SIL_COUNT = B.SIL_COUNT		                                                        "
		    +"  		      AND SUBSTRING(A.APPLY_DATE, 3, 6) = B.EB13D_REG_DATE	                                    "	
			+"               LEFT OUTER JOIN CMSATTACH C ON C.KY_NO = B.KY_NO                                           "
			+"                                          AND C.SIL_COUNT = B.SIL_COUNT                                   "
			+"				                            AND C.CMS_NO = B.CMS_NO                                         "
			+"                                          AND C.SEQ_NUM = B.SEQ_NUM                                       "								   
			+" WHERE 1=1															                                    "
			+"   AND A.REG_DATE = '"+date+"'                                                                            "			
			+" ORDER BY SEQ_NUM                                                                                         "
			//+"   AND A.CMS_NO = 'L0609S0097001' AND A.REG_DATE = '"+date+"'                                                                            "
		
			+"";
	}
}
