package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class BatchjobDAO {
	private static Batchjob makebatchjob(ResultSet resultSet) throws SQLException {
		
		
		//GetDate.makeLog("");
		
		Batchjob batchjob = new Batchjob();
		batchjob.setId(resultSet.getString("id").trim());
		batchjob.setCheckTime(resultSet.getString("checkTime"));		
		batchjob.setChecker(resultSet.getString("checker").trim());
		batchjob.setEbilling(resultSet.getString("ebilling"));		
		//SystemWriterLog.writeLog("check3: "+resultSet.getString("ebilling"));		
		//batchjob.setFin_SMS(resultSet.getString("fin_SMS"));
		batchjob.setFunding_SMS(resultSet.getString("funding_SMS"));
		batchjob.setDel_M(resultSet.getString("del_M"));
		batchjob.setLeave_Mng(resultSet.getString("leave_Mng"));
		batchjob.setFax_SMS(resultSet.getString("fax_SMS"));
		batchjob.setIfany(resultSet.getString("ifany"));

		batchjob.setFunding_MMS (resultSet.getString("Funding_MMS").trim());
		batchjob.setE_B_rst (resultSet.getString("E_B_rst").trim());
		batchjob.setE_B_cnt (resultSet.getString("E_B_cnt").trim());
		batchjob.setC_stat_updat (resultSet.getString("C_stat_updat").trim());
		batchjob.setInit_CD_rate (resultSet.getString("Init_CD_rate").trim());
		batchjob.setLSRMDLY_daily_backup (resultSet.getString("LSRMDLY_daily_backup").trim());
		batchjob.setSyspolicy_history (resultSet.getString("Syspolicy_history").trim());
		batchjob.setVintage_analysis (resultSet.getString("Vintage_analysis").trim());
		batchjob.setSett_accumulated_cashflow (resultSet.getString("Sett_accumulated_cashflow").trim());
		batchjob.setSett_accumulated_cashflow_2 (resultSet.getString("Sett_accumulated_cashflow_2").trim());
		batchjob.setC_termination (resultSet.getString("C_termination").trim());
		batchjob.setDel_rate_statictics (resultSet.getString("Del_rate_statictics").trim());
		batchjob.setFund_repayment_noti (resultSet.getString("Fund_repayment_noti").trim());
		batchjob.setE_Bill_pubi_noti (resultSet.getString("E_Bill_pubi_noti").trim());

		
		return batchjob;
	}

	public static Batchjob selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Batchjob batchjob = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [batchjob] WHERE [id]='" + id + "'";

			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Batchjob Select");			

			statement = connection.prepareStatement(sql);
			// statement.setString(1, id);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				batchjob = makebatchjob(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return batchjob;
	}

	public static void insertInfo(
			String id, 
			String checktime, 
			String checker, 
			String ebilling,
			//String fin_SMS,
			String funding_SMS,
			String del_M,
			String leave_Mng,
			String fax_SMS,
			String Funding_MMS ,
			String E_B_rst ,
			String E_B_cnt ,
			String C_stat_updat ,
			String Init_CD_rate ,
			String LSRMDLY_daily_backup ,
			String Syspolicy_history ,
			String Vintage_analysis ,
			String Sett_accumulated_cashflow ,
			String Sett_accumulated_cashflow_2 ,
			String C_termination ,
			String Del_rate_statictics ,
			String Fund_repayment_noti ,
			String E_Bill_pubi_noti ,			
			String ifany
			
) throws Exception {
		Batchjob batchjob = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO batchjob("
					+ "id,"
					+ "checkTime,"
					+ "checker, "
					+ "ebilling, "
					//+ "fin_SMS, "
					+ "funding_SMS, "
					+ "del_M, "
					+ "leave_Mng, "
					+ "fax_SMS "
									
				+ ",Funding_MMS "
				+ ",E_B_rst "
				+ ",E_B_cnt "
				+ ",C_stat_updat "
				+ ",Init_CD_rate "
				+ ",LSRMDLY_daily_backup "
				+ ",Syspolicy_history "
				+ ",Vintage_analysis "
				+ ",Sett_accumulated_cashflow "
				+ ",Sett_accumulated_cashflow_2 "
				+ ",C_termination "
				+ ",Del_rate_statictics "
				+ ",Fund_repayment_noti "
				+ ",E_Bill_pubi_noti "

					
					+ ",ifany)"
					+ "VALUES (" 
					+ "?, ?, ?, ?, ?, "
										
										
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, "
					
					+ "?, ?, ?)";
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Batchjob Insert");	
			
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);

			statement.setString(4, ebilling);
			//statement.setString(5,fin_SMS);
			statement.setString(4,funding_SMS);
			statement.setString(5,del_M);
			statement.setString(6,leave_Mng);
			statement.setString(7,fax_SMS);
			statement.setString(8,ifany);
			statement.setString( 9 ,Funding_MMS );
			statement.setString( 10,E_B_rst );
			statement.setString( 11 ,E_B_cnt );
			statement.setString( 12 ,C_stat_updat );
			statement.setString( 13 ,Init_CD_rate );
			statement.setString( 14 ,LSRMDLY_daily_backup );
			statement.setString( 15 ,Syspolicy_history );
			statement.setString( 16 ,Vintage_analysis );
			statement.setString( 17 ,Sett_accumulated_cashflow );
			statement.setString( 18 ,Sett_accumulated_cashflow_2 );
			statement.setString( 19 ,C_termination );
			statement.setString( 20 ,Del_rate_statictics );
			statement.setString( 21,Fund_repayment_noti );
			statement.setString( 22 ,E_Bill_pubi_noti );

			
			statement.setString(23,ifany);

			statement.executeUpdate();
		} catch (Exception e) {
			SystemWriterLog.writeLog(e);
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}

	public static void updateInfo(			
			String id, 
			String checktime, 
			String checker, 
			String ebilling,
			//String fin_SMS,
			String funding_SMS,
			String del_M,
			String leave_Mng,
			String fax_SMS,
			
			String Funding_MMS ,
			String E_B_rst ,
			String E_B_cnt ,
			String C_stat_updat ,
			String Init_CD_rate ,
			String LSRMDLY_daily_backup ,
			String Syspolicy_history ,
			String Vintage_analysis ,
			String Sett_accumulated_cashflow ,
			String Sett_accumulated_cashflow_2 ,
			String C_termination ,
			String Del_rate_statictics ,
			String Fund_repayment_noti ,
			String E_Bill_pubi_noti ,

			
			
			String ifany) throws Exception {
		Batchjob batchjob = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [batchjob] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					+"[ebilling]=?,"
					//+"[fin_SMS]=?,"
					+"[funding_SMS]=?,"
					+"[del_M]=?,"
					+"[leave_Mng]=?,"
					+"[fax_SMS]=?,"
					+"[ifany]=?, "
					+"[funding_MMS]=?,"
					+"[E_B_rst]=?,"
					+"[E_B_cnt]=?,"
					+"[C_stat_updat]=?,"
					+"[Init_CD_rate]=?,"
					+"[LSRMDLY_daily_backup]=?,"
					+"[Syspolicy_history]=?,"
					+"[Vintage_analysis]=?,"
					+"[sett_accumulated_cashflow]=?,"
					+"[sett_accumulated_cashflow_2]=?,"
					+"[C_termination]=?,"
					+"[Del_rate_statictics]=?,"
					+"[Fund_repayment_noti]=?,"
					+"[E_Bill_pubi_noti]=?"

					
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);
			statement.setString(1, checktime);
			statement.setString(2, checker);

			statement.setString(3, ebilling);
			//statement.setString(4,fin_SMS);
			statement.setString(4,funding_SMS);
			statement.setString(5,del_M);
			statement.setString(6,leave_Mng);
			statement.setString(7,fax_SMS);
			statement.setString(8,ifany);
			statement.setString( 9 ,Funding_MMS );
			statement.setString( 10,E_B_rst );
			statement.setString( 11 ,E_B_cnt );
			statement.setString( 12 ,C_stat_updat );
			statement.setString( 13 ,Init_CD_rate );
			statement.setString( 14 ,LSRMDLY_daily_backup );
			statement.setString( 15 ,Syspolicy_history );
			statement.setString( 16 ,Vintage_analysis );
			statement.setString( 17 ,Sett_accumulated_cashflow );
			statement.setString( 18 ,Sett_accumulated_cashflow_2 );
			statement.setString( 19 ,C_termination );
			statement.setString( 20 ,Del_rate_statictics );
			statement.setString( 21,Fund_repayment_noti );
			statement.setString( 22 ,E_Bill_pubi_noti );

			
			statement.setString(23,id);

			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Batchjob Update");	
			
			statement.executeUpdate();
		} catch (Exception e) {
			SystemWriterLog.writeLog(e);
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}

}
