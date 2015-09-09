package tools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class PrecheckDAO {
	private static Precheck makeStudent(ResultSet resultSet) throws SQLException {
		Precheck precheck = new Precheck();
		precheck.setId(resultSet.getString("id").trim());
		precheck.setCheckTime(resultSet.getString("checkTime"));
		precheck.setChecker(resultSet.getString("checker").trim());
		precheck.setArs(resultSet.getString("ars"));
		precheck.setMail(resultSet.getString("mail"));
		precheck.setFax(resultSet.getString("fax"));
		precheck.setVrs(resultSet.getString("vrs"));
		precheck.setMessanger(resultSet.getString("messanger"));
		precheck.setLeaseloan(resultSet.getString("leaseloan"));
		precheck.setVisual(resultSet.getString("visual"));
		precheck.setImages(resultSet.getString("images"));
		precheck.setFont(resultSet.getString("font"));
		precheck.setLinks(resultSet.getString("links"));
		precheck.setBbs(resultSet.getString("bbs"));
		precheck.setIndexsize(resultSet.getString("indexsize"));

		precheck.setWMtime(resultSet.getString("WMtime"));
		precheck.setWMstate(resultSet.getString("WMstate"));
		precheck.setWMpump(resultSet.getString("WMpump"));
		precheck.setWMaircon(resultSet.getString("WMaircon"));
		precheck.setWMtemperature(resultSet.getString("WMtemperature"));

		precheck.setWEtime(resultSet.getString("WEtime"));
		precheck.setWEstate(resultSet.getString("WEstate"));
		precheck.setWEpump(resultSet.getString("WEpump"));
		precheck.setWEaircon(resultSet.getString("WEaircon"));
		precheck.setWEtemperature(resultSet.getString("WEtemperature"));

		precheck.setEMtime(resultSet.getString("EMtime"));
		precheck.setEMstate(resultSet.getString("EMstate"));
		precheck.setEMpump(resultSet.getString("EMpump"));
		precheck.setEMaircon(resultSet.getString("EMaircon"));
		precheck.setEMtemperature(resultSet.getString("EMtemperature"));

		precheck.setEEtime(resultSet.getString("EEtime"));
		precheck.setEEstate(resultSet.getString("EEstate"));
		precheck.setEEpump(resultSet.getString("EEpump"));
		precheck.setEEaircon(resultSet.getString("EEaircon"));
		precheck.setEEtemperature(resultSet.getString("EEtemperature"));

		precheck.setIfany(resultSet.getString("ifany"));
		return precheck;
	}

	public static Precheck selectById(String id) throws Exception {
		id = GetDate.getDate();

		Precheck precheck = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [precheck] WHERE [id]='" + id + "'";

			System.out.println(sql);

			statement = connection.prepareStatement(sql);
			// statement.setString(1, id);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				precheck = makeStudent(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return precheck;
	}

	public static void insertInfo(String id, String checktime, String checker, String ars, String mail, String fax,
			String vrs, String messanger, String leaseloan, String visual, String images, String font, String links,
			String bbs, String indexsize, String WMtime, String WMstate, String WMpump, String WMaircon,
			String WMtemperature, String WEtime, String WEstate, String WEpump, String WEaircon, String WEtemperature,
			String EMtime, String EMstate, String EMpump, String EMaircon, String EMtemperature, String EEtime,
			String EEstate, String EEpump, String EEaircon, String EEtemperature, String ifany) throws Exception {
		Precheck precheck = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO precheck(id,checkTime,checker, ars ,mail" + ",fax ,vrs,messanger ,leaseloan ,visual "
					+ ",images ,font ,links ,bbs ,indexsize ,WMtime "
					+ ",WMstate	,WMpump ,WMaircon ,WMtemperature ,WEtime "
					+ ",WEstate	,WEpump ,WEaircon ,WEtemperature ,EMtime "
					+ ",EMstate	,EMpump ,EMaircon ,EMtemperature ,EEtime "
					+ ",EEstate	,EEpump ,EEaircon ,EEtemperature ,ifany) " + "VALUES (" + "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?)";
			System.out.println(sql);
			statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			statement.setString(2, checktime);
			statement.setString(3, checker);

			statement.setString(4, ars);
			statement.setString(5, mail);

			statement.setString(6, fax);
			statement.setString(7, vrs);
			statement.setString(8, messanger);
			statement.setString(9, leaseloan);

			statement.setString(10, visual);
			statement.setString(11, images);
			statement.setString(12, font);
			statement.setString(13, links);
			statement.setString(14, bbs);
			statement.setString(15, indexsize);

			statement.setString(16, WMtime);
			statement.setString(17, WMstate);
			statement.setString(18, WMpump);
			statement.setString(19, WMaircon);
			statement.setString(20, WMtemperature);

			statement.setString(21, WEtime);
			statement.setString(22, WEstate);
			statement.setString(23, WEpump);
			statement.setString(24, WEaircon);
			statement.setString(25, WEtemperature);

			statement.setString(26, EMtime);
			statement.setString(27, EMstate);
			statement.setString(28, EMpump);
			statement.setString(29, EMaircon);
			statement.setString(30, EMtemperature);

			statement.setString(31, EEtime);
			statement.setString(32, EEstate);
			statement.setString(33, EEpump);
			statement.setString(34, EEaircon);
			statement.setString(35, EEtemperature);

			statement.setString(36, ifany);
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

	public static void updateInfo(String id, String checktime, String checker, String ars, String mail, String fax,
			String vrs, String messanger, String leaseloan, String visual, String images, String font, String links,
			String bbs, String indexsize, String WMtime, String WMstate, String WMpump, String WMaircon,
			String WMtemperature, String WEtime, String WEstate, String WEpump, String WEaircon, String WEtemperature,
			String EMtime, String EMstate, String EMpump, String EMaircon, String EMtemperature, String EEtime,
			String EEstate, String EEpump, String EEaircon, String EEtemperature, String ifany) throws Exception {
		Precheck precheck = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			//sql += "UPDATE [precheck] set [checkTime]=?, [ars]=?, [checker]=? where [id]=?";
			
			
			sql += "UPDATE precheck SET " + "checkTime='"+checktime+"', checker='"+checker+"', ars='"+ars+"', mail='"+mail+"',"
					+ "fax='"+fax+"', vrs='"+vrs+"', messanger='"+messanger+"', leaseloan='"+leaseloan+"', visual='"+visual+"',"
					+ "images='"+images+"', font='"+font+"', links='"+links+"', bbs='"+bbs+"', indexsize='"+indexsize+"',"
					+ "WMtime='"+WMtime+"', WMstate='"+WMstate+"', WMpump='"+WMpump+"', WMaircon='"+WMaircon+"', WMtemperature='"+WMtemperature+"',"
					+ "WEtime='"+WEtime+"', WEstate='"+WEstate+"', WEpump='"+WEpump+"', WEaircon='"+WEaircon+"', WEtemperature='"+WEtemperature+"',"
					+ "EMtime='"+EMtime+"', EMstate='"+EMstate+"', EMpump='"+EMpump+"', EMaircon='"+EMaircon+"', EMtemperature='"+EMtemperature+"',"
					+ "EEtime='"+EEtime+"', EEstate='"+EEstate+"', EEpump='"+EEpump+"', EEaircon='"+EEaircon+"', EEtemperature='"+EEtemperature+"'," 
					+ "ifany='"+ifany+"' where id='"+id+"'";
			
			statement = connection.prepareStatement(sql);
			/*
			statement.setString(1, checktime);			
			statement.setString(2, ars);
			statement.setString(3, checker);
			statement.setString(4, id);
			*/
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
	/*
	 * 
	 * public static void updateInfo(String sid, String studentName, String
	 * department, int year, String telephone) throws Exception { Connection
	 * connection = null; PreparedStatement statement = null; try { connection =
	 * DB.getConnection(); String sql =
	 * "UPDATE [Student] SET [studentName] = ?, [department] = ?, [year] = ?, [telephone] = ? WHERE [sid] = ?"
	 * ; statement = connection.prepareStatement(sql); statement.setString(1,
	 * studentName); statement.setString(2, department); statement.setInt(3,
	 * year); statement.setString(4, telephone); statement.setString(5, sid);
	 * statement.executeUpdate(); } finally { if (statement != null)
	 * statement.close(); if (connection != null) connection.close(); } }
	 */
}
