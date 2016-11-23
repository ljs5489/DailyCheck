package makeBinary;

public class DataSetCust {
	String KY_NO;
	String SIL_COUNT;
	String CMS_NO;
	String SEQ_NUM;
	String U_ID;
	String FILE_ROW;
	
	public DataSetCust(String KY_NO,String SIL_COUNT,String CMS_NO,String SEQ_NUM,String U_ID, String FILE_ROW){
		this.KY_NO = KY_NO;
		this.SIL_COUNT = SIL_COUNT;
		this.CMS_NO = CMS_NO;
		this.SEQ_NUM = SEQ_NUM;
		this.U_ID = U_ID;
		this.FILE_ROW = FILE_ROW;
	}
	
	
	public String getKY_NO() {
		return KY_NO;
	}
	public void setKY_NO(String kY_NO) {
		KY_NO = kY_NO;
	}
	public String getSIL_COUNT() {
		return SIL_COUNT;
	}
	public void setSIL_COUNT(String sIL_COUNT) {
		SIL_COUNT = sIL_COUNT;
	}
	public String getCMS_NO() {
		return CMS_NO;
	}
	public void setCMS_NO(String cMS_NO) {
		CMS_NO = cMS_NO;
	}
	public String getSEQ_NUM() {
		return SEQ_NUM;
	}
	public void setSEQ_NUM(String sEQ_NUM) {
		SEQ_NUM = sEQ_NUM;
	}
	public String getFILE_ROW() {
		return FILE_ROW;
	}
	public void setFILE_ROW(String fILE_ROW) {
		FILE_ROW = fILE_ROW;
	}


	public String getU_ID() {
		return U_ID;
	}

	public void setU_ID(String U_ID) {
		this.U_ID = U_ID;
	}
	
	
}
