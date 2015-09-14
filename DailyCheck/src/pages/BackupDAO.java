package pages;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class BackupDAO {
	private static Backup makebackup(ResultSet resultSet) throws SQLException {
		Backup backup = new Backup();
		backup.setId(resultSet.getString("id").trim());
		backup.setCheckTime(resultSet.getString("checkTime"));		
		backup.setChecker(resultSet.getString("checker").trim());
				
		backup.setWeb(resultSet.getString("web"));
		backup.setDew(resultSet.getString("dew"));
		backup.setApp(resultSet.getString("app"));
		backup.setADV_1(resultSet.getString("ADV_1"));
		backup.setVRS(resultSet.getString("VRS"));
		backup.setMail(resultSet.getString("mail"));
		backup.setFAX_W(resultSet.getString("FAX_W"));
		backup.setDBsafer_M(resultSet.getString("DBsafer_M"));
		backup.setfile_(resultSet.getString("file_"));
		backup.setVRS_DB(resultSet.getString("VRS_DB"));
		backup.setDBM(resultSet.getString("DBM"));
		backup.setIfany(resultSet.getString("ifany"));
		return backup;
	}

	public static Backup selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Backup backup = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [backup_] WHERE [id]='" + id + "'";

			System.out.println(sql);

			statement = connection.prepareStatement(sql);
			// statement.setString(1, id);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				backup = makebackup(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return backup;
	}

	public static void insertInfo(
			String id, 
			String checktime, 
			String checker, 
			
			String web,
			String dew,
			String app,
			String ADV_1,
			String VRS,
			String mail,
			String FAX_W,
			String DBsafer_M,
			String file_,
			String VRS_DB,
			String DBM,
			String ifany

) throws Exception {
		Backup backup = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO backup_("
					+ "id,"
					+ "checkTime,"
					+ "checker, "
					+ "web, "
					+ "dew, "
					+ "app, "
					+ "ADV_1, "
					+ "VRS, "
					+ "mail, "
					+ "FAX_W, "
					+ "DBsafer_M, "
					+ "file_, "
					+ "VRS_DB, "
					+ "DBM, "
					+ "ifany) "
					+ "VALUES (" 
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?)";
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);
			
			statement.setString(4, web);
			statement.setString(5,dew);
			statement.setString(6,app);
			statement.setString(7,ADV_1);
			statement.setString(8,VRS);
			statement.setString(9,mail);
			statement.setString(10,FAX_W);
			statement.setString(11,DBsafer_M);
			statement.setString(12,file_);
			statement.setString(13,VRS_DB);
			statement.setString(14,DBM);
			statement.setString(15,ifany);



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
			
			String web,
			String dew,
			String app,
			String ADV_1,
			String VRS,
			String mail,
			String FAX_W,
			String DBsafer_M,
			String file_,
			String VRS_DB,
			String DBM,
			String ifany) throws Exception {
		Backup backup = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [backup_] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					
					+"[web]=?,"
					+"[dew]=?,"
					+"[app]=?,"
					+"[ADV_1]=?,"
					+"[VRS]=?,"
					+"[mail]=?,"
					+"[FAX_W]=?,"
					+"[DBsafer_M]=?,"
					+"[file_]=?,"
					+"[VRS_DB]=?,"
					+"[DBM]=?,"
					+"[ifany]=?"					
					
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);

			statement.setString(1, checktime);
			statement.setString(2, checker);
			
			statement.setString(3, web);
			statement.setString(4,dew);
			statement.setString(5,app);
			statement.setString(6,ADV_1);
			statement.setString(7,VRS);
			statement.setString(8,mail);
			statement.setString(9,FAX_W);
			statement.setString(10,DBsafer_M);
			statement.setString(11,file_);
			statement.setString(12,VRS_DB);
			statement.setString(13,DBM);
			statement.setString(14,ifany);
			statement.setString(15, id);

			
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
