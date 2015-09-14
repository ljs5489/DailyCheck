package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class BatchjobDAO {
	private static Batchjob makebatchjob(ResultSet resultSet) throws SQLException {
		Batchjob batchjob = new Batchjob();
		batchjob.setId(resultSet.getString("id").trim());
		batchjob.setCheckTime(resultSet.getString("checkTime"));
		
		
		batchjob.setChecker(resultSet.getString("checker").trim());
		batchjob.setEbilling(resultSet.getString("ebilling"));
		
		System.out.println("check3: "+resultSet.getString("ebilling"));
		
		batchjob.setFin_SMS(resultSet.getString("fin_SMS"));
		batchjob.setFunding_SMS(resultSet.getString("funding_SMS"));
		batchjob.setDel_M(resultSet.getString("del_M"));
		batchjob.setLeave_Mng(resultSet.getString("leave_Mng"));
		batchjob.setFax_SMS(resultSet.getString("fax_SMS"));
		batchjob.setIfany(resultSet.getString("ifany"));

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

			System.out.println(sql);

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
			String fin_SMS,
			String funding_SMS,
			String del_M,
			String leave_Mng,
			String fax_SMS,
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
					+ "fin_SMS, "
					+ "funding_SMS, "
					+ "del_M, "
					+ "leave_Mng, "
					+ "fax_SMS, "
					+ "ifany)"
					+ "VALUES (" 
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?)";
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);

			statement.setString(4, ebilling);
			statement.setString(5,fin_SMS);
			statement.setString(6,funding_SMS);
			statement.setString(7,del_M);
			statement.setString(8,leave_Mng);
			statement.setString(9,fax_SMS);
			statement.setString(10,ifany);

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
			String ebilling,
			String fin_SMS,
			String funding_SMS,
			String del_M,
			String leave_Mng,
			String fax_SMS,
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
					+"[fin_SMS]=?,"
					+"[funding_SMS]=?,"
					+"[del_M]=?,"
					+"[leave_Mng]=?,"
					+"[fax_SMS]=?,"
					+"[ifany]=? "
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);
			statement.setString(1, checktime);
			statement.setString(2, checker);

			statement.setString(3, ebilling);
			statement.setString(4,fin_SMS);
			statement.setString(5,funding_SMS);
			statement.setString(6,del_M);
			statement.setString(7,leave_Mng);
			statement.setString(8,fax_SMS);
			statement.setString(9,ifany);
			statement.setString(10,id);

			
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
