package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class IptDAO {
	private static Ipt makeIpt(ResultSet resultSet) throws SQLException {
		Ipt ipt = new Ipt();
		ipt.setId(resultSet.getString("id").trim());
		ipt.setChecker(resultSet.getString("checker").trim());
		ipt.setCheckTime(resultSet.getString("checkTime").trim());
		
		ipt.setTrunk(resultSet.getString("trunk").trim());
		ipt.setIdle(resultSet.getString("idle").trim());
		ipt.setTemperature(resultSet.getString("temperature").trim());
		ipt.setIn_serv_tru1(resultSet.getString("in_serv_tru1").trim());
		ipt.setIn_serv_tru2(resultSet.getString("in_serv_tru2").trim());
		ipt.setGateway(resultSet.getString("gateway").trim());
		ipt.setIpt_alarm(resultSet.getString("ipt_alarm").trim());
		ipt.setIfany(resultSet.getString("ifany").trim());
		
		return ipt;
	}

	public static Ipt selectById(String id) throws Exception {
		id = GetDate.getDate();

		Ipt ipt = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [ipt] WHERE [id]='" + id + "'";

			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				ipt = makeIpt(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return ipt;
	}

	public static void insertInfo(String id, String checktime, String checker, String trunk,String idle, 
			String temperature, String in_serv_tru1, String in_serv_tru2, String gateway, String ipt_alarm, 
			String ifany) throws Exception {
		Ipt ipt = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO ipt(id,checkTime,checker, trunk ,idle" 
					+ ",temperature ,in_serv_tru1,in_serv_tru2 ,gateway ,ipt_alarm "
					+ ",ifany) " 
					+ "VALUES ( ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, " 
					+ "?)";
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);
			statement.setString(4, trunk);
			statement.setString(5, idle);
			statement.setString(6, temperature);
			statement.setString(7, in_serv_tru1);
			statement.setString(8, in_serv_tru2);
			statement.setString(9, gateway);
			statement.setString(10,ipt_alarm);
			statement.setString(11,ifany);
			
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

	public static void updateInfo(String id, String checktime, String checker, String trunk,String idle, 
			String temperature, String in_serv_tru1, String in_serv_tru2, String gateway, String ipt_alarm, 
			String ifany) throws Exception {
		Ipt ipt = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [ipt] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					+"[trunk]=?,"
					+"[idle]=?,"
					+"[temperature]=?,"
					+"[in_serv_tru1]=?,"
					+"[in_serv_tru2]=?,"
					+"[gateway]=?,"
					+"[ipt_alarm]=?,"
					+"[ifany]=?"
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);

			statement.setString(1, checktime);
			statement.setString(2, checker);
			statement.setString(3, trunk);
			statement.setString(4, idle);
			statement.setString(5, temperature);
			statement.setString(6, in_serv_tru1);
			statement.setString(7, in_serv_tru2);
			statement.setString(8, gateway);
			statement.setString(9,ipt_alarm);
			statement.setString(10,ifany);
			statement.setString(11, id);
			
			System.out.println(sql);
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
