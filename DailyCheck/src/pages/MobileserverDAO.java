package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class MobileserverDAO {
	private static Mobileserver makemobileserver(ResultSet resultSet) throws SQLException {
		Mobileserver mobileserver = new Mobileserver();
		mobileserver.setId(resultSet.getString("id").trim());
		mobileserver.setChecker(resultSet.getString("checker").trim());
		mobileserver.setCheckTime(resultSet.getString("checkTime").trim());
		
		mobileserver.setMOBH1_CPU(resultSet.getString("MOBH1_CPU").trim());
		mobileserver.setMOBH1_memory(resultSet.getString("MOBH1_memory").trim());
		mobileserver.setMOBH1_m_val(resultSet.getString("MOBH1_m_val").trim());
		mobileserver.setMOBH1_vaccine(resultSet.getString("MOBH1_vaccine").trim());
		mobileserver.setMOBH1_update(resultSet.getString("MOBH1_update").trim());
		mobileserver.setMOBH1_status(resultSet.getString("MOBH1_status").trim());
		mobileserver.setMOBH1_disk1(resultSet.getString("MOBH1_disk1").trim());
		mobileserver.setMOBH1_disk2(resultSet.getString("MOBH1_disk2").trim());
		mobileserver.setMOBH1_disk3(resultSet.getString("MOBH1_disk3").trim());
		mobileserver.setMOBH1_disk4(resultSet.getString("MOBH1_disk4").trim());
		mobileserver.setDC2_CPU(resultSet.getString("DC2_CPU").trim());
		mobileserver.setDC2_memory(resultSet.getString("DC2_memory").trim());
		mobileserver.setDC2_m_val(resultSet.getString("DC2_m_val").trim());
		mobileserver.setDC2_vaccine(resultSet.getString("DC2_vaccine").trim());
		mobileserver.setDC2_update(resultSet.getString("DC2_update").trim());
		mobileserver.setDC2_status(resultSet.getString("DC2_status").trim());
		mobileserver.setDC2_disk1(resultSet.getString("DC2_disk1").trim());
		mobileserver.setDC2_disk2(resultSet.getString("DC2_disk2").trim());
		mobileserver.setWEB1_CPU(resultSet.getString("WEB1_CPU").trim());
		mobileserver.setWEB1_memory(resultSet.getString("WEB1_memory").trim());
		mobileserver.setWEB1_m_val(resultSet.getString("WEB1_m_val").trim());
		mobileserver.setWEB1_vaccine(resultSet.getString("WEB1_vaccine").trim());
		mobileserver.setWEB1_update(resultSet.getString("WEB1_update").trim());
		mobileserver.setWEB1_status(resultSet.getString("WEB1_status").trim());
		mobileserver.setWEB1_disk1(resultSet.getString("WEB1_disk1").trim());
		mobileserver.setWEB1_disk2(resultSet.getString("WEB1_disk2").trim());
		mobileserver.setDB1_CPU(resultSet.getString("DB1_CPU").trim());
		mobileserver.setDB1_memory(resultSet.getString("DB1_memory").trim());
		mobileserver.setDB1_m_val(resultSet.getString("DB1_m_val").trim());
		mobileserver.setDB1_vaccine(resultSet.getString("DB1_vaccine").trim());
		mobileserver.setDB1_update(resultSet.getString("DB1_update").trim());
		mobileserver.setDB1_DB(resultSet.getString("DB1_DB").trim());
		mobileserver.setDB1_status(resultSet.getString("DB1_status").trim());
		mobileserver.setDB1_disk1(resultSet.getString("DB1_disk1").trim());
		mobileserver.setDB1_disk2(resultSet.getString("DB1_disk2").trim());
		mobileserver.setDB1_disk3(resultSet.getString("DB1_disk3").trim());
		mobileserver.setDB1_disk4(resultSet.getString("DB1_disk4").trim());
		mobileserver.setMOBH2_CPU(resultSet.getString("MOBH2_CPU").trim());
		mobileserver.setMOBH2_memory(resultSet.getString("MOBH2_memory").trim());
		mobileserver.setMOBH2_m_val(resultSet.getString("MOBH2_m_val").trim());
		mobileserver.setMOBH2_vaccine(resultSet.getString("MOBH2_vaccine").trim());
		mobileserver.setMOBH2_update(resultSet.getString("MOBH2_update").trim());
		mobileserver.setMOBH2_status(resultSet.getString("MOBH2_status").trim());
		mobileserver.setMOBH2_disk1(resultSet.getString("MOBH2_disk1").trim());
		mobileserver.setMOBH2_disk2(resultSet.getString("MOBH2_disk2").trim());
		mobileserver.setMOBH2_disk3(resultSet.getString("MOBH2_disk3").trim());
		mobileserver.setMOBH2_disk4(resultSet.getString("MOBH2_disk4").trim());
		mobileserver.setDC1_CPU(resultSet.getString("DC1_CPU").trim());
		mobileserver.setDC1_memory(resultSet.getString("DC1_memory").trim());
		mobileserver.setDC1_m_val(resultSet.getString("DC1_m_val").trim());
		mobileserver.setDC1_vaccine(resultSet.getString("DC1_vaccine").trim());
		mobileserver.setDC1_update(resultSet.getString("DC1_update").trim());
		mobileserver.setDC1_status(resultSet.getString("DC1_status").trim());
		mobileserver.setDC1_disk1(resultSet.getString("DC1_disk1").trim());
		mobileserver.setDC1_disk2(resultSet.getString("DC1_disk2").trim());
		mobileserver.setWEB2_CPU(resultSet.getString("WEB2_CPU").trim());
		mobileserver.setWEB2_memory(resultSet.getString("WEB2_memory").trim());
		mobileserver.setWEB2_m_val(resultSet.getString("WEB2_m_val").trim());
		mobileserver.setWEB2_vaccine(resultSet.getString("WEB2_vaccine").trim());
		mobileserver.setWEB2_update(resultSet.getString("WEB2_update").trim());
		mobileserver.setWEB2_status(resultSet.getString("WEB2_status").trim());
		mobileserver.setWEB2_disk1(resultSet.getString("WEB2_disk1").trim());
		mobileserver.setWEB2_disk2(resultSet.getString("WEB2_disk2").trim());
		mobileserver.setDB2_CPU(resultSet.getString("DB2_CPU").trim());
		mobileserver.setDB2_memory(resultSet.getString("DB2_memory").trim());
		mobileserver.setDB2_m_val(resultSet.getString("DB2_m_val").trim());
		mobileserver.setDB2_vaccine(resultSet.getString("DB2_vaccine").trim());
		mobileserver.setDB2_update(resultSet.getString("DB2_update").trim());
		mobileserver.setDB2_DB(resultSet.getString("DB2_DB").trim());
		mobileserver.setDB2_status(resultSet.getString("DB2_status").trim());
		mobileserver.setDB2_disk1(resultSet.getString("DB2_disk1").trim());
		mobileserver.setDB2_disk2(resultSet.getString("DB2_disk2").trim());
		
		mobileserver.setMOBH1_disk1_2(resultSet.getString("MOBH1_disk1_2").trim());
		mobileserver.setMOBH1_disk2_2(resultSet.getString("MOBH1_disk2_2").trim());
		mobileserver.setMOBH1_disk3_2(resultSet.getString("MOBH1_disk3_2").trim());
		mobileserver.setMOBH1_disk4_2(resultSet.getString("MOBH1_disk4_2").trim());
		mobileserver.setDB1_disk1_2(resultSet.getString("DB1_disk1_2").trim());
		mobileserver.setDB1_disk2_2(resultSet.getString("DB1_disk2_2").trim());
		mobileserver.setDB1_disk3_2(resultSet.getString("DB1_disk3_2").trim());
		mobileserver.setDB1_disk4_2(resultSet.getString("DB1_disk4_2").trim());
		mobileserver.setMOBH2_disk1_2(resultSet.getString("MOBH2_disk1_2").trim());
		mobileserver.setMOBH2_disk2_2(resultSet.getString("MOBH2_disk2_2").trim());
		mobileserver.setMOBH2_disk3_2(resultSet.getString("MOBH2_disk3_2").trim());
		mobileserver.setMOBH2_disk4_2(resultSet.getString("MOBH2_disk4_2").trim());
		
		mobileserver.setMOBH1_c_val(resultSet.getString("MOBH1_c_val").trim());
		mobileserver.setDC2_c_val(resultSet.getString("DC2_c_val").trim());
		mobileserver.setWEB1_c_val(resultSet.getString("WEB1_c_val").trim());
		mobileserver.setDB1_c_val(resultSet.getString("DB1_c_val").trim());
		mobileserver.setMOBH2_c_val(resultSet.getString("MOBH2_c_val").trim());
		mobileserver.setDC1_c_val(resultSet.getString("DC1_c_val").trim());
		mobileserver.setWEB2_c_val(resultSet.getString("WEB2_c_val").trim());
		mobileserver.setDB2_c_val(resultSet.getString("DB2_c_val").trim());		
		
		mobileserver.setIfany(resultSet.getString("ifany").trim());
		
		return mobileserver;
	}

	public static Mobileserver selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Mobileserver mobileserver = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [mobileserver] WHERE [id]='" + id + "'";

			//System.out.println(sql);
			GetDate.makeLog("Mobileserver Select");
			
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				mobileserver = makemobileserver(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return mobileserver;
	}

	public static void insertInfo(
			String id, 
			String checktime, 
			String checker, 
			
			String MOBH1_CPU,
			String MOBH1_memory,
			String MOBH1_m_val,
			String MOBH1_vaccine,
			String MOBH1_update,
			String MOBH1_status,
			String MOBH1_disk1,
			String MOBH1_disk2,
			String MOBH1_disk3,
			String MOBH1_disk4,
			String DC2_CPU,
			String DC2_memory,
			String DC2_m_val,
			String DC2_vaccine,
			String DC2_update,
			String DC2_status,
			String DC2_disk1,
			String DC2_disk2,
			String WEB1_CPU,
			String WEB1_memory,
			String WEB1_m_val,
			String WEB1_vaccine,
			String WEB1_update,
			String WEB1_status,
			String WEB1_disk1,
			String WEB1_disk2,
			String DB1_CPU,
			String DB1_memory,
			String DB1_m_val,
			String DB1_vaccine,
			String DB1_update,
			String DB1_DB,
			String DB1_status,
			String DB1_disk1,
			String DB1_disk2,
			String DB1_disk3,
			String DB1_disk4,
			String MOBH2_CPU,
			String MOBH2_memory,
			String MOBH2_m_val,
			String MOBH2_vaccine,
			String MOBH2_update,
			String MOBH2_status,
			String MOBH2_disk1,
			String MOBH2_disk2,
			String MOBH2_disk3,
			String MOBH2_disk4,
			String DC1_CPU,
			String DC1_memory,
			String DC1_m_val,
			String DC1_vaccine,
			String DC1_update,
			String DC1_status,
			String DC1_disk1,
			String DC1_disk2,
			String WEB2_CPU,
			String WEB2_memory,
			String WEB2_m_val,
			String WEB2_vaccine,
			String WEB2_update,
			String WEB2_status,
			String WEB2_disk1,
			String WEB2_disk2,
			String DB2_CPU,
			String DB2_memory,
			String DB2_m_val,
			String DB2_vaccine,
			String DB2_update,
			String DB2_DB,
			String DB2_status,
			String DB2_disk1,
			String DB2_disk2,
			
			String MOBH1_disk1_2,
			String MOBH1_disk2_2,
			String MOBH1_disk3_2,
			String MOBH1_disk4_2,
			String DB1_disk1_2,
			String DB1_disk2_2,
			String DB1_disk3_2,
			String DB1_disk4_2,
			String MOBH2_disk1_2,
			String MOBH2_disk2_2,
			String MOBH2_disk3_2,
			String MOBH2_disk4_2,
			
			String MOBH1_c_val,
			String DC2_c_val,
			String WEB1_c_val,
			String DB1_c_val,
			String MOBH2_c_val,
			String DC1_c_val,
			String WEB2_c_val,
			String DB2_c_val,
			
			String ifany			
			) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO mobileserver("
					+ "id"
					+ ",checkTime"
					+ ",checker"
										
					+ ",MOBH1_CPU"
					+ ",MOBH1_memory"
					+ ",MOBH1_m_val"
					+ ",MOBH1_vaccine"
					+ ",MOBH1_update"
					+ ",MOBH1_status"
					+ ",MOBH1_disk1"
					+ ",MOBH1_disk2"
					+ ",MOBH1_disk3"
					+ ",MOBH1_disk4"
					+ ",DC2_CPU"
					+ ",DC2_memory"
					+ ",DC2_m_val"
					+ ",DC2_vaccine"
					+ ",DC2_update"
					+ ",DC2_status"
					+ ",DC2_disk1"
					+ ",DC2_disk2"
					+ ",WEB1_CPU"
					+ ",WEB1_memory"
					+ ",WEB1_m_val"
					+ ",WEB1_vaccine"
					+ ",WEB1_update"
					+ ",WEB1_status"
					+ ",WEB1_disk1"
					+ ",WEB1_disk2"
					+ ",DB1_CPU"
					+ ",DB1_memory"
					+ ",DB1_m_val"
					+ ",DB1_vaccine"
					+ ",DB1_update"
					+ ",DB1_DB"
					+ ",DB1_status"
					+ ",DB1_disk1"
					+ ",DB1_disk2"
					+ ",DB1_disk3"
					+ ",DB1_disk4"
					+ ",MOBH2_CPU"
					+ ",MOBH2_memory"
					+ ",MOBH2_m_val"
					+ ",MOBH2_vaccine"
					+ ",MOBH2_update"
					+ ",MOBH2_status"
					+ ",MOBH2_disk1"
					+ ",MOBH2_disk2"
					+ ",MOBH2_disk3"
					+ ",MOBH2_disk4"
					+ ",DC1_CPU"
					+ ",DC1_memory"
					+ ",DC1_m_val"
					+ ",DC1_vaccine"
					+ ",DC1_update"
					+ ",DC1_status"
					+ ",DC1_disk1"
					+ ",DC1_disk2"
					+ ",WEB2_CPU"
					+ ",WEB2_memory"
					+ ",WEB2_m_val"
					+ ",WEB2_vaccine"
					+ ",WEB2_update"
					+ ",WEB2_status"
					+ ",WEB2_disk1"
					+ ",WEB2_disk2"
					+ ",DB2_CPU"
					+ ",DB2_memory"
					+ ",DB2_m_val"
					+ ",DB2_vaccine"
					+ ",DB2_update"
					+ ",DB2_DB"
					+ ",DB2_status"
					+ ",DB2_disk1"
					+ ",DB2_disk2"
					
					+ ",MOBH1_disk1_2"
					+ ",MOBH1_disk2_2"
					+ ",MOBH1_disk3_2"
					+ ",MOBH1_disk4_2"
					+ ",DB1_disk1_2"
					+ ",DB1_disk2_2"
					+ ",DB1_disk3_2"
					+ ",DB1_disk4_2"
					+ ",MOBH2_disk1_2"
					+ ",MOBH2_disk2_2"
					+ ",MOBH2_disk3_2"
					+ ",MOBH2_disk4_2"

					+ ",MOBH1_c_val"
					+ ",DC2_c_val"
					+ ",WEB1_c_val"
					+ ",DB1_c_val"
					+ ",MOBH2_c_val"
					+ ",DC1_c_val"
					+ ",WEB2_c_val"
					+ ",DB2_c_val"				
					
					+ ",ifany"
					+ ") " 					
					+ "VALUES ( "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, ?,? ,?)";
			
			
			//System.out.println(sql);
			GetDate.makeLog("Mobileserver Insert");
			
			
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);

			statement.setString(4, MOBH1_CPU);
			statement.setString(5,MOBH1_memory);
			statement.setString(6,MOBH1_m_val);
			statement.setString(7,MOBH1_vaccine);
			statement.setString(8,MOBH1_update);
			statement.setString(9,MOBH1_status);
			statement.setString(10,MOBH1_disk1);
			statement.setString(11,MOBH1_disk2);
			statement.setString(12,MOBH1_disk3);
			statement.setString(13,MOBH1_disk4);
			statement.setString(14,DC2_CPU);
			statement.setString(15,DC2_memory);
			statement.setString(16,DC2_m_val);
			statement.setString(17,DC2_vaccine);
			statement.setString(18,DC2_update);
			statement.setString(19,DC2_status);
			statement.setString(20,DC2_disk1);
			statement.setString(21,DC2_disk2);
			statement.setString(22,WEB1_CPU);
			statement.setString(23,WEB1_memory);
			statement.setString(24,WEB1_m_val);
			statement.setString(25,WEB1_vaccine);
			statement.setString(26,WEB1_update);
			statement.setString(27,WEB1_status);
			statement.setString(28,WEB1_disk1);
			statement.setString(29,WEB1_disk2);
			statement.setString(30,DB1_CPU);
			statement.setString(31,DB1_memory);
			statement.setString(32,DB1_m_val);
			statement.setString(33,DB1_vaccine);
			statement.setString(34,DB1_update);
			statement.setString(35,DB1_DB);
			statement.setString(36,DB1_status);
			statement.setString(37,DB1_disk1);
			statement.setString(38,DB1_disk2);
			statement.setString(39,DB1_disk3);
			statement.setString(40,DB1_disk4);
			statement.setString(41,MOBH2_CPU);
			statement.setString(42,MOBH2_memory);
			statement.setString(43,MOBH2_m_val);
			statement.setString(44,MOBH2_vaccine);
			statement.setString(45,MOBH2_update);
			statement.setString(46,MOBH2_status);
			statement.setString(47,MOBH2_disk1);
			statement.setString(48,MOBH2_disk2);
			statement.setString(49,MOBH2_disk3);
			statement.setString(50,MOBH2_disk4);
			statement.setString(51,DC1_CPU);
			statement.setString(52,DC1_memory);
			statement.setString(53,DC1_m_val);
			statement.setString(54,DC1_vaccine);
			statement.setString(55,DC1_update);
			statement.setString(56,DC1_status);
			statement.setString(57,DC1_disk1);
			statement.setString(58,DC1_disk2);
			statement.setString(59,WEB2_CPU);
			statement.setString(60,WEB2_memory);
			statement.setString(61,WEB2_m_val);
			statement.setString(62,WEB2_vaccine);
			statement.setString(63,WEB2_update);
			statement.setString(64,WEB2_status);
			statement.setString(65,WEB2_disk1);
			statement.setString(66,WEB2_disk2);
			statement.setString(67,DB2_CPU);
			statement.setString(68,DB2_memory);
			statement.setString(69,DB2_m_val);
			statement.setString(70,DB2_vaccine);
			statement.setString(71,DB2_update);
			statement.setString(72,DB2_DB);
			statement.setString(73,DB2_status);
			statement.setString(74,DB2_disk1);
			statement.setString(75,DB2_disk2);
			
			statement.setString(76,MOBH1_disk1_2);
			statement.setString(77,MOBH1_disk2_2);
			statement.setString(78,MOBH1_disk3_2);
			statement.setString(79,MOBH1_disk4_2);
			statement.setString(80,DB1_disk1_2);
			statement.setString(81,DB1_disk2_2);
			statement.setString(82,DB1_disk3_2);
			statement.setString(83,DB1_disk4_2);
			statement.setString(84,MOBH2_disk1_2);
			statement.setString(85,MOBH2_disk2_2);
			statement.setString(86,MOBH2_disk3_2);
			statement.setString(87,MOBH2_disk4_2);

			statement.setString(88,MOBH1_c_val);
			statement.setString(89,DC2_c_val);
			statement.setString(90,WEB1_c_val);
			statement.setString(91,DB1_c_val);
			statement.setString(92,MOBH2_c_val);
			statement.setString(93,DC1_c_val);
			statement.setString(94,WEB2_c_val);
			statement.setString(95,DB2_c_val);		
			
			statement.setString(96,ifany);
		
			statement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
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
			
			String MOBH1_CPU,
			String MOBH1_memory,
			String MOBH1_m_val,
			String MOBH1_vaccine,
			String MOBH1_update,
			String MOBH1_status,
			String MOBH1_disk1,
			String MOBH1_disk2,
			String MOBH1_disk3,
			String MOBH1_disk4,
			String DC2_CPU,
			String DC2_memory,
			String DC2_m_val,
			String DC2_vaccine,
			String DC2_update,
			String DC2_status,
			String DC2_disk1,
			String DC2_disk2,
			String WEB1_CPU,
			String WEB1_memory,
			String WEB1_m_val,
			String WEB1_vaccine,
			String WEB1_update,
			String WEB1_status,
			String WEB1_disk1,
			String WEB1_disk2,
			String DB1_CPU,
			String DB1_memory,
			String DB1_m_val,
			String DB1_vaccine,
			String DB1_update,
			String DB1_DB,
			String DB1_status,
			String DB1_disk1,
			String DB1_disk2,
			String DB1_disk3,
			String DB1_disk4,
			String MOBH2_CPU,
			String MOBH2_memory,
			String MOBH2_m_val,
			String MOBH2_vaccine,
			String MOBH2_update,
			String MOBH2_status,
			String MOBH2_disk1,
			String MOBH2_disk2,
			String MOBH2_disk3,
			String MOBH2_disk4,
			String DC1_CPU,
			String DC1_memory,
			String DC1_m_val,
			String DC1_vaccine,
			String DC1_update,
			String DC1_status,
			String DC1_disk1,
			String DC1_disk2,
			String WEB2_CPU,
			String WEB2_memory,
			String WEB2_m_val,
			String WEB2_vaccine,
			String WEB2_update,
			String WEB2_status,
			String WEB2_disk1,
			String WEB2_disk2,
			String DB2_CPU,
			String DB2_memory,
			String DB2_m_val,
			String DB2_vaccine,
			String DB2_update,
			String DB2_DB,
			String DB2_status,
			String DB2_disk1,
			String DB2_disk2,
			
			String MOBH1_disk1_2,
			String MOBH1_disk2_2,
			String MOBH1_disk3_2,
			String MOBH1_disk4_2,
			String DB1_disk1_2,
			String DB1_disk2_2,
			String DB1_disk3_2,
			String DB1_disk4_2,
			String MOBH2_disk1_2,
			String MOBH2_disk2_2,
			String MOBH2_disk3_2,
			String MOBH2_disk4_2,

			String MOBH1_c_val,
			String DC2_c_val,
			String WEB1_c_val,
			String DB1_c_val,
			String MOBH2_c_val,
			String DC1_c_val,
			String WEB2_c_val,
			String DB2_c_val,			
			
			String ifany		
			) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [mobileserver] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					
					+"[MOBH1_CPU]=?,"
					+"[MOBH1_memory]=?,"
					+"[MOBH1_m_val]=?,"
					+"[MOBH1_vaccine]=?,"
					+"[MOBH1_update]=?,"
					+"[MOBH1_status]=?,"
					+"[MOBH1_disk1]=?,"
					+"[MOBH1_disk2]=?,"
					+"[MOBH1_disk3]=?,"
					+"[MOBH1_disk4]=?,"
					+"[DC2_CPU]=?,"
					+"[DC2_memory]=?,"
					+"[DC2_m_val]=?,"
					+"[DC2_vaccine]=?,"
					+"[DC2_update]=?,"
					+"[DC2_status]=?,"
					+"[DC2_disk1]=?,"
					+"[DC2_disk2]=?,"
					+"[WEB1_CPU]=?,"
					+"[WEB1_memory]=?,"
					+"[WEB1_m_val]=?,"
					+"[WEB1_vaccine]=?,"
					+"[WEB1_update]=?,"
					+"[WEB1_status]=?,"
					+"[WEB1_disk1]=?,"
					+"[WEB1_disk2]=?,"
					+"[DB1_CPU]=?,"
					+"[DB1_memory]=?,"
					+"[DB1_m_val]=?,"
					+"[DB1_vaccine]=?,"
					+"[DB1_update]=?,"
					+"[DB1_DB]=?,"
					+"[DB1_status]=?,"
					+"[DB1_disk1]=?,"
					+"[DB1_disk2]=?,"
					+"[DB1_disk3]=?,"
					+"[DB1_disk4]=?,"
					+"[MOBH2_CPU]=?,"
					+"[MOBH2_memory]=?,"
					+"[MOBH2_m_val]=?,"
					+"[MOBH2_vaccine]=?,"
					+"[MOBH2_update]=?,"
					+"[MOBH2_status]=?,"
					+"[MOBH2_disk1]=?,"
					+"[MOBH2_disk2]=?,"
					+"[MOBH2_disk3]=?,"
					+"[MOBH2_disk4]=?,"
					+"[DC1_CPU]=?,"
					+"[DC1_memory]=?,"
					+"[DC1_m_val]=?,"
					+"[DC1_vaccine]=?,"
					+"[DC1_update]=?,"
					+"[DC1_status]=?,"
					+"[DC1_disk1]=?,"
					+"[DC1_disk2]=?,"
					+"[WEB2_CPU]=?,"
					+"[WEB2_memory]=?,"
					+"[WEB2_m_val]=?,"
					+"[WEB2_vaccine]=?,"
					+"[WEB2_update]=?,"
					+"[WEB2_status]=?,"
					+"[WEB2_disk1]=?,"
					+"[WEB2_disk2]=?,"
					+"[DB2_CPU]=?,"
					+"[DB2_memory]=?,"
					+"[DB2_m_val]=?,"
					+"[DB2_vaccine]=?,"
					+"[DB2_update]=?,"
					+"[DB2_DB]=?,"
					+"[DB2_status]=?,"
					+"[DB2_disk1]=?,"
					+"[DB2_disk2]=?,"
					
					+"[MOBH1_disk1_2]=?,"
					+"[MOBH1_disk2_2]=?,"
					+"[MOBH1_disk3_2]=?,"
					+"[MOBH1_disk4_2]=?,"
					+"[DB1_disk1_2]=?,"
					+"[DB1_disk2_2]=?,"
					+"[DB1_disk3_2]=?,"
					+"[DB1_disk4_2]=?,"
					+"[MOBH2_disk1_2]=?,"
					+"[MOBH2_disk2_2]=?,"
					+"[MOBH2_disk3_2]=?,"
					+"[MOBH2_disk4_2]=?,"
					+"[MOBH1_c_val]=?,"
					+"[DC2_c_val]=?,"
					+"[WEB1_c_val]=?,"
					+"[DB1_c_val]=?,"
					+"[MOBH2_c_val]=?,"
					+"[DC1_c_val]=?,"
					+"[WEB2_c_val]=?,"
					+"[DB2_c_val]=?,"

					+"[ifany]=? "

					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);

			statement.setString(1,checktime);
			statement.setString(2,checker);
			statement.setString(3,MOBH1_CPU);
			statement.setString(4,MOBH1_memory);
			statement.setString(5,MOBH1_m_val);
			statement.setString(6,MOBH1_vaccine);
			statement.setString(7,MOBH1_update);
			statement.setString(8,MOBH1_status);
			statement.setString(9,MOBH1_disk1);
			statement.setString(10,MOBH1_disk2);
			statement.setString(11,MOBH1_disk3);
			statement.setString(12,MOBH1_disk4);
			statement.setString(13,DC2_CPU);
			statement.setString(14,DC2_memory);
			statement.setString(15,DC2_m_val);
			statement.setString(16,DC2_vaccine);
			statement.setString(17,DC2_update);
			statement.setString(18,DC2_status);
			statement.setString(19,DC2_disk1);
			statement.setString(20,DC2_disk2);
			statement.setString(21,WEB1_CPU);
			statement.setString(22,WEB1_memory);
			statement.setString(23,WEB1_m_val);
			statement.setString(24,WEB1_vaccine);
			statement.setString(25,WEB1_update);
			statement.setString(26,WEB1_status);
			statement.setString(27,WEB1_disk1);
			statement.setString(28,WEB1_disk2);
			statement.setString(29,DB1_CPU);
			statement.setString(30,DB1_memory);
			statement.setString(31,DB1_m_val);
			statement.setString(32,DB1_vaccine);
			statement.setString(33,DB1_update);
			statement.setString(34,DB1_DB);
			statement.setString(35,DB1_status);
			statement.setString(36,DB1_disk1);
			statement.setString(37,DB1_disk2);
			statement.setString(38,DB1_disk3);
			statement.setString(39,DB1_disk4);
			statement.setString(40,MOBH2_CPU);
			statement.setString(41,MOBH2_memory);
			statement.setString(42,MOBH2_m_val);
			statement.setString(43,MOBH2_vaccine);
			statement.setString(44,MOBH2_update);
			statement.setString(45,MOBH2_status);
			statement.setString(46,MOBH2_disk1);
			statement.setString(47,MOBH2_disk2);
			statement.setString(48,MOBH2_disk3);
			statement.setString(49,MOBH2_disk4);
			statement.setString(50,DC1_CPU);
			statement.setString(51,DC1_memory);
			statement.setString(52,DC1_m_val);
			statement.setString(53,DC1_vaccine);
			statement.setString(54,DC1_update);
			statement.setString(55,DC1_status);
			statement.setString(56,DC1_disk1);
			statement.setString(57,DC1_disk2);
			statement.setString(58,WEB2_CPU);
			statement.setString(59,WEB2_memory);
			statement.setString(60,WEB2_m_val);
			statement.setString(61,WEB2_vaccine);
			statement.setString(62,WEB2_update);
			statement.setString(63,WEB2_status);
			statement.setString(64,WEB2_disk1);
			statement.setString(65,WEB2_disk2);
			statement.setString(66,DB2_CPU);
			statement.setString(67,DB2_memory);
			statement.setString(68,DB2_m_val);
			statement.setString(69,DB2_vaccine);
			statement.setString(70,DB2_update);
			statement.setString(71,DB2_DB);
			statement.setString(72,DB2_status);
			statement.setString(73,DB2_disk1);
			statement.setString(74,DB2_disk2);
			
			statement.setString(75,MOBH1_disk1_2);
			statement.setString(76,MOBH1_disk2_2);
			statement.setString(77,MOBH1_disk3_2);
			statement.setString(78,MOBH1_disk4_2);
			statement.setString(79,DB1_disk1_2);
			statement.setString(80,DB1_disk2_2);
			statement.setString(81,DB1_disk3_2);
			statement.setString(82,DB1_disk4_2);
			statement.setString(83,MOBH2_disk1_2);
			statement.setString(84,MOBH2_disk2_2);
			statement.setString(85,MOBH2_disk3_2);
			statement.setString(86,MOBH2_disk4_2);
			
			statement.setString(87,MOBH1_c_val);
			statement.setString(88,DC2_c_val);
			statement.setString(89,WEB1_c_val);
			statement.setString(90,DB1_c_val);
			statement.setString(91,MOBH2_c_val);
			statement.setString(92,DC1_c_val);
			statement.setString(93,WEB2_c_val);
			statement.setString(94,DB2_c_val);	
			
			statement.setString(95,ifany);
			statement.setString(96,id);

			
			//System.out.println(sql);
			GetDate.makeLog("Mobileserver Update");
			
			
			statement.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}


}
