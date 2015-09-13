package tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DmzserverDAO {
	private static Dmzserver makedmzserver(ResultSet resultSet) throws SQLException {
		Dmzserver dmzserver = new Dmzserver();
		dmzserver.setId(resultSet.getString("id").trim());
		dmzserver.setChecker(resultSet.getString("checker").trim());
		dmzserver.setCheckTime(resultSet.getString("checkTime").trim());
		
		dmzserver.setNWCPU(resultSet.getString("NWCPU").trim());
		dmzserver.setNWmemory(resultSet.getString("NWmemory").trim());
		dmzserver.setNWvaccine(resultSet.getString("NWvaccine").trim());
		dmzserver.setNWupdate(resultSet.getString("NWupdate").trim());
		dmzserver.setNWstatus(resultSet.getString("NWstatus").trim());
		dmzserver.setNSCPU(resultSet.getString("NSCPU").trim());
		dmzserver.setNSmemory(resultSet.getString("NSmemory").trim());
		dmzserver.setNSvaccine(resultSet.getString("NSvaccine").trim());
		dmzserver.setNSupdate(resultSet.getString("NSupdate").trim());
		dmzserver.setNSstatus(resultSet.getString("NSstatus").trim());
		dmzserver.setIfany(resultSet.getString("ifany").trim());

		
		return dmzserver;
	}

	public static Dmzserver selectById(String id) throws Exception {
		id = GetDate.getDate();

		Dmzserver dmzserver = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [dmzserver] WHERE [id]='" + id + "'";

			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				dmzserver = makedmzserver(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return dmzserver;
	}

	public static void insertInfo(
			String id, 
			String checktime, 
			String checker, 
			String NWCPU,
			String NWmemory,
			String NWvaccine,
			String NWupdate,
			String NWstatus,
			String NSCPU,
			String NSmemory,
			String NSvaccine,
			String NSupdate,
			String NSstatus,
			String ifany
			) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO dmzserver("
					+ "id"
					+ ",checkTime"
					+ ",checker"
					+ ",NWCPU"
					+ ",NWmemory"
					+ ",NWvaccine"
					+ ",NWupdate"
					+ ",NWstatus"
					+ ",NSCPU"
					+ ",NSmemory"
					+ ",NSvaccine"
					+ ",NSupdate"
					+ ",NSstatus"
					+ ",ifany) " 
					+ "VALUES ( "
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ? " 
					+ ")";
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);

			statement.setString(4, NWCPU);
			statement.setString(5,NWmemory);
			statement.setString(6,NWvaccine);
			statement.setString(7,NWupdate);
			statement.setString(8,NWstatus);
			statement.setString(9,NSCPU);
			statement.setString(10,NSmemory);
			statement.setString(11,NSvaccine);
			statement.setString(12,NSupdate);
			statement.setString(13,NSstatus);
			statement.setString(14,ifany);			
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
			String NWCPU,
			String NWmemory,
			String NWvaccine,
			String NWupdate,
			String NWstatus,
			String NSCPU,
			String NSmemory,
			String NSvaccine,
			String NSupdate,
			String NSstatus,
			String ifany) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [dmzserver] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					+"[NWCPU]=?,"
					+"[NWmemory]=?,"
					+"[NWvaccine]=?,"
					+"[NWupdate]=?,"
					+"[NWstatus]=?,"
					+"[NSCPU]=?,"
					+"[NSmemory]=?,"
					+"[NSvaccine]=?,"
					+"[NSupdate]=?,"
					+"[NSstatus]=?,"
					+"[ifany]=?"
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);

			statement.setString(1, checktime);
			statement.setString(2, checker);
			statement.setString(3, NWCPU);
			statement.setString(4,NWmemory);
			statement.setString(5,NWvaccine);
			statement.setString(6,NWupdate);
			statement.setString(7,NWstatus);
			statement.setString(8,NSCPU);
			statement.setString(9,NSmemory);
			statement.setString(10,NSvaccine);
			statement.setString(11,NSupdate);
			statement.setString(12,NSstatus);
			statement.setString(13,ifany);				
			statement.setString(14, id);
			
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
