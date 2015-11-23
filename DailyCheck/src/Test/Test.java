package Test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pages.Backup;
import tools.DB;

public class Test {
	private static Backup makebackup(ResultSet resultSet) throws SQLException {
		Backup backup = new Backup();
		backup.setId(resultSet.getString("id").trim());
		backup.setCheckTime(resultSet.getString("checkTime"));
		backup.setChecker(resultSet.getString("checker").trim());
		/*
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
		*/
		return backup;
	}

	public static ArrayList<Backup> testMe() throws Exception {
		//id = GetDate.getDate();

		Backup backup = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [backup_]";

			//System.out.println(sql);

			statement = connection.prepareStatement(sql);
			// statement.setString(1, id);
		   ResultSet rs = statement.executeQuery();
		   ArrayList<Backup> list = new ArrayList<Backup>();
            while (rs.next())
                list.add(makebackup(rs));
            return list;    

		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}
}
