package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class PrecheckDAO {
	private static Precheck makePrecheck(ResultSet resultSet) throws SQLException {
		Precheck precheck = new Precheck();
		precheck.setId(resultSet.getString("id").trim());
		precheck.setCheckTime(resultSet.getString("checkTime"));
		
		//SystemWriterLog.writeLog("check3: "+resultSet.getString("checkTime"));
		
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

		precheck.setTra1time(resultSet.getString("tra1time"));
		precheck.setTra1val(resultSet.getString("tra1val"));
		precheck.setTra2time(resultSet.getString("tra2time"));
		precheck.setTra2val(resultSet.getString("tra2val"));		
		
		//SystemWriterLog.writeLog(resultSet.getString("tra1time"));
		//SystemWriterLog.writeLog(resultSet.getString("tra1val"));

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
		
		precheck.setRTMS(resultSet.getString("RTMS"));

		precheck.setIfany(resultSet.getString("ifany"));
		return precheck;
	}

	public static Precheck selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Precheck precheck = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [precheck] WHERE [id]='" + id + "'";

			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Precheck Select");

			statement = connection.prepareStatement(sql);
			// statement.setString(1, id);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				precheck = makePrecheck(resultSet);
		} 
		finally {
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
			String EEstate, String EEpump, String EEaircon, String EEtemperature, String ifany, String tra1time, String tra1val, String tra2time, String tra2val , String RTMS) throws Exception {
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
					+ ",EEstate	,EEpump ,EEaircon ,EEtemperature ,ifany"
					+ ",tra1time,tra1val ,tra2time ,tra2val ,RTMS"
					+ ") " + "VALUES (" + "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, " + "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Precheck Insert");

			
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
			
			statement.setString(37, tra1time);
			statement.setString(38, tra1val);
			statement.setString(39, tra2time);
			statement.setString(40, tra2val);
			
			
			
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

	public static void updateInfo(String id, String checktime, String checker, String ars, String mail, String fax,
			String vrs, String messanger, String leaseloan, String visual, String images, String font, String links,
			String bbs, String indexsize, String WMtime, String WMstate, String WMpump, String WMaircon,
			String WMtemperature, String WEtime, String WEstate, String WEpump, String WEaircon, String WEtemperature,
			String EMtime, String EMstate, String EMpump, String EMaircon, String EMtemperature, String EEtime,
			String EEstate, String EEpump, String EEaircon, String EEtemperature, String ifany, String tra1time, String tra1val, String tra2time, String tra2val, String RTMS) throws Exception {
		Precheck precheck = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [precheck] set "
					+"[checktime]=?,"
					+"[checker]=?,"
					+"[ars]=?,"
					+"[mail]=?,"
					+"[fax]=?,"
					+"[vrs]=?,"
					+"[messanger]=?,"
					+"[leaseloan]=?,"
					+"[visual]=?,"
					+"[images]=?,"
					+"[font]=?,"
					+"[links]=?,"
					+"[bbs]=?,"
					+"[indexsize]=?,"
					+"[WMtime]=?,"
					+"[WMstate]=?,"
					+"[WMpump]=?,"
					+"[WMaircon]=?,"
					+"[WMtemperature]=?,"
					+"[WEtime]=?,"
					+"[WEstate]=?,"
					+"[WEpump]=?,"
					+"[WEaircon]=?,"
					+"[WEtemperature]=?,"
					+"[EMtime]=?,"
					+"[EMstate]=?,"
					+"[EMpump]=?,"
					+"[EMaircon]=?,"
					+"[EMtemperature]=?,"
					+"[EEtime]=?,"
					+"[EEstate]=?,"
					+"[EEpump]=?,"
					+"[EEaircon]=?,"
					+"[EEtemperature]=?,"
					+"[ifany]=?,"
					+"[tra1time]=?,"
					+"[tra1val]=?,"
					+"[tra2time]=?,"
					+"[tra2val]=?"
					
					+"[RTMS]=?"
					
					
					
					+" WHERE [id]=?";

			statement = connection.prepareStatement(sql);
			statement.setString(1, checktime);
			statement.setString(2,checker);
			statement.setString(3,ars);
			statement.setString(4,mail);
			statement.setString(5,fax);
			statement.setString(6,vrs);
			statement.setString(7,messanger);
			statement.setString(8,leaseloan);
			statement.setString(9,visual);
			statement.setString(10,images);
			statement.setString(11,font);
			statement.setString(12,links);
			statement.setString(13,bbs);
			statement.setString(14,indexsize);
			statement.setString(15,WMtime);
			statement.setString(16,WMstate);
			statement.setString(17,WMpump);
			statement.setString(18,WMaircon);
			statement.setString(19,WMtemperature);
			statement.setString(20,WEtime);
			statement.setString(21,WEstate);
			statement.setString(22,WEpump);
			statement.setString(23,WEaircon);
			statement.setString(24,WEtemperature);
			statement.setString(25,EMtime);
			statement.setString(26,EMstate);
			statement.setString(27,EMpump);
			statement.setString(28,EMaircon);
			statement.setString(29,EMtemperature);
			statement.setString(30,EEtime);
			statement.setString(31,EEstate);
			statement.setString(32,EEpump);
			statement.setString(33,EEaircon);
			statement.setString(34,EEtemperature);
			statement.setString(35,ifany);
			statement.setString(36,tra1time);
			statement.setString(37,tra1val);
			statement.setString(38,tra2time);
			statement.setString(39,tra2val);	
			statement.setString(40,RTMS);
			
			statement.setString(41,id);
			
			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Precheck Update");
			
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
/*
	public static void simpleUpdateInfo(String id, String checktime, String checker, String ars, String mail,
			String ifany) throws Exception {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE precheck SET " + "checkTime='" + checktime + "', checker='" + checker + "', ars='" + ars
					+ "', mail='" + mail + "'," + "ifany='" + ifany + "' where id='" + id + "'";

			statement = connection.prepareStatement(sql);
			SystemWriterLog.writeLog(sql);
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
*/
}
