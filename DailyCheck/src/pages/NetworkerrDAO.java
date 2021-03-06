package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class NetworkerrDAO {
	private static Networkerr makenetworkerr(ResultSet resultSet) throws SQLException {
		Networkerr networkerr = new Networkerr();
		networkerr.setId(resultSet.getString("id").trim());
		networkerr.setChecker(resultSet.getString("checker").trim());
		networkerr.setCheckTime(resultSet.getString("checkTime").trim());
		
		networkerr.setNetwork_conn(resultSet.getString("network_conn").trim());
		networkerr.setFirm_banking(resultSet.getString("firm_banking").trim());
		networkerr.setVpn_21(resultSet.getString("vpn_21").trim());
		networkerr.setVpn_31(resultSet.getString("vpn_31").trim());
		networkerr.setVpn_200(resultSet.getString("vpn_200").trim());
		networkerr.setVpn_254(resultSet.getString("vpn_254").trim());
		networkerr.setNetwork_err(resultSet.getString("network_err").trim());
		networkerr.setInternet_spd(resultSet.getString("internet_spd").trim());
		networkerr.setTraffic_IDC(resultSet.getString("traffic_IDC").trim());
		networkerr.setInternet_traffic(resultSet.getString("internet_traffic").trim());
		
		networkerr.setInternet_traffic_2(resultSet.getString("internet_traffic_2").trim());
		networkerr.setInternet_spd_2(resultSet.getString("internet_spd_2").trim());
		networkerr.setTraffic_IDC_2(resultSet.getString("traffic_IDC_2").trim());
		
		networkerr.setIfany(resultSet.getString("ifany").trim());

		networkerr.setFirm_banking_nice(resultSet.getString("firm_banking_nice").trim());
		networkerr.setFirm_banking_kcb(resultSet.getString("firm_banking_kcb").trim());

		
		return networkerr;
	}

	public static Networkerr selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Networkerr networkerr = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [networkerr] WHERE [id]='" + id + "'";

			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Networkerr Select");
			
			
			
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				networkerr = makenetworkerr(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return networkerr;
	}

	public static void insertInfo(
			String id, 
			String checktime, 
			String checker, 
			String network_conn,
			String firm_banking,
			String vpn_21,
			String vpn_31,
			String vpn_200,
			String vpn_254,
			String network_err,
			String internet_spd,
			String traffic_IDC,
			String internet_traffic,
			
			String internet_traffic_2,
			String internet_spd_2,
			String traffic_IDC_2,
			
			String firm_banking_nice,
			String firm_banking_kcb,

			
			String ifany		
			) throws Exception {
		Networkerr networkerr = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
		System.out.println("firm_banking_nice IN : "+firm_banking_nice);

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO networkerr(id"
					+ ",checkTime"
					+ ",checker"
					+ ",network_conn"
					+ ",firm_banking"
					+ ",vpn_21"
					+ ",vpn_31"
					+ ",vpn_200"
					+ ",vpn_254"
					+ ",network_err"
					+ ",internet_spd"
					+ ",traffic_IDC"
					+ ",internet_traffic"
					+ ",internet_traffic_2"
					+ ",internet_spd_2"
					+ ",traffic_IDC_2"
					+ ",firm_banking_nice"
					+ ",firm_banking_kcb"
					+ ",ifany)"					 
					+ "VALUES ( "
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?," 
					+ "?, ?, ?, ?)";
			
			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Networkerr Insert " + sql);
			
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);
			statement.setString(4, network_conn);
			statement.setString(5,firm_banking);
			statement.setString(6,vpn_21);
			statement.setString(7,vpn_31);
			statement.setString(8,vpn_200);
			statement.setString(9,vpn_254);
			statement.setString(10,network_err);
			statement.setString(11,internet_spd);
			statement.setString(12,traffic_IDC);
			statement.setString(13,internet_traffic);
			
			statement.setString(14,internet_traffic_2);
			statement.setString(15,internet_spd_2);
			statement.setString(16,traffic_IDC_2);
			
			
			statement.setString(17,firm_banking_nice);
			statement.setString(18,firm_banking_kcb);

			
			statement.setString(19,ifany);

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
			String network_conn,
			String firm_banking,
			String vpn_21,
			String vpn_31,
			String vpn_200,
			String vpn_254,
			String network_err,
			String internet_spd,
			String traffic_IDC,
			String internet_traffic,
			
			String internet_traffic_2,
			String internet_spd_2,
			String traffic_IDC_2,	
			
			String firm_banking_nice,
			String firm_banking_kcb,

			
			
			String ifany	
			) throws Exception {
		Networkerr networkerr = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		
		System.out.println("firm_banking_nice up : "+firm_banking_nice);
		
		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [networkerr] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					+"[network_conn]=?,"
					+"[firm_banking]=?,"
					+"[vpn_21]=?,"
					+"[vpn_31]=?,"
					+"[vpn_200]=?,"
					+"[vpn_254]=?,"
					+"[network_err]=?,"
					+"[internet_spd]=?,"
					+"[traffic_IDC]=?,"
					+"[internet_traffic]=?,"
					+"[internet_traffic_2]=?,"
					+"[internet_spd_2]=?,"
					+"[traffic_IDC_2]=?,"	
					+"[ifany]=?, "
					+"[firm_banking_nice]=?,"
					+"[firm_banking_kcb]=? "
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);

			statement.setString(1, checktime);
			statement.setString(2, checker);
			statement.setString(3, network_conn);
			statement.setString(4,firm_banking);
			statement.setString(5,vpn_21);
			statement.setString(6,vpn_31);
			statement.setString(7,vpn_200);
			statement.setString(8,vpn_254);
			statement.setString(9,network_err);
			statement.setString(10,internet_spd);
			statement.setString(11,traffic_IDC);
			statement.setString(12,internet_traffic);

			
			statement.setString(13,internet_traffic_2);
			statement.setString(14,internet_spd_2);
			statement.setString(15,traffic_IDC_2);
			statement.setString(16,ifany);
			
			statement.setString( 17 ,firm_banking_nice);
			statement.setString( 18 ,firm_banking_kcb);

			statement.setString(19, id);
			
			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Networkerr Update : "+sql);
			
			
			
			
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
