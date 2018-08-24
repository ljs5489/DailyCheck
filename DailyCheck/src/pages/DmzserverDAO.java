package pages;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

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
		
		dmzserver.setWEB_disk1(resultSet.getString("WEB_disk1").trim());
		dmzserver.setWEB_disk2(resultSet.getString("WEB_disk2").trim());
		dmzserver.setWEB_disk3(resultSet.getString("WEB_disk3").trim());
		dmzserver.setWEB_disk4(resultSet.getString("WEB_disk4").trim());
		
		dmzserver.setSPAM_disk1(resultSet.getString("SPAM_disk1").trim());
		dmzserver.setSPAM_disk2(resultSet.getString("SPAM_disk2").trim());
		
		dmzserver.setNWCPU_val(resultSet.getString("NWCPU_val").trim());
		dmzserver.setNWmemory_val(resultSet.getString("NWmemory_val").trim());
		dmzserver.setNSCPU_val(resultSet.getString("NSCPU_val").trim());
		dmzserver.setNSmemory_val(resultSet.getString("NSmemory_val").trim());

		
		dmzserver.setTAX2_CPU (resultSet.getString("TAX2_CPU").trim());
		dmzserver.setTAX2_memory (resultSet.getString("TAX2_memory").trim());
		dmzserver.setTAX2_value (resultSet.getString("TAX2_value").trim());
		dmzserver.setTAX2_value_2 (resultSet.getString("TAX2_value_2").trim());
		dmzserver.setTAX2_vaccine (resultSet.getString("TAX2_vaccine").trim());
		dmzserver.setTAX2_update (resultSet.getString("TAX2_update").trim());
		dmzserver.setTAX2_status (resultSet.getString("TAX2_status").trim());
		dmzserver.setTAX2_disk1 (resultSet.getString("TAX2_disk1").trim());
		dmzserver.setTAX2_disk2 (resultSet.getString("TAX2_disk2").trim());
				
		dmzserver.setIfany(resultSet.getString("ifany").trim());

		
		return dmzserver;
	}

	public static Dmzserver selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Dmzserver dmzserver = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [dmzserver] WHERE [id]='" + id + "'";

			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("DMZserver Select");	
			
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
			
			String WEB_disk1,
			String WEB_disk2,
			String WEB_disk3,
			String WEB_disk4,
			String SPAM_disk1,
			String SPAM_disk2,
			
			String NWCPU_val,
			String NWmemory_val,
			String NSCPU_val,
			String NSmemory_val,
			
			
			String TAX2_CPU    ,
			String TAX2_memory ,
			String TAX2_value  ,
			String TAX2_value_2, 
			String TAX2_vaccine, 
			String TAX2_update ,
			String TAX2_status ,
			String TAX2_disk1  ,
			String TAX2_disk2  ,
			
			
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
					
					+ ",WEB_disk1"
					+ ",WEB_disk2"
					+ ",WEB_disk3"
					+ ",WEB_disk4"
					+ ",SPAM_disk1"
					+ ",SPAM_disk2"
					
					+ ",NWCPU_val"
					+ ",NWmemory_val"
					+ ",NSCPU_val"
					+ ",NSmemory_val"

					+ ",TAX2_CPU"
					+ ",TAX2_memory"
					+ ",TAX2_value"
					+ ",TAX2_value_2" 
					+ ",TAX2_vaccine" 
					+ ",TAX2_update" 
					+ ",TAX2_status" 
					+ ",TAX2_disk1" 
					+ ",TAX2_disk2" 
										
					+ ",ifany) " 
					+ "VALUES ( "
					+ "?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?, ?, ?, " 
					+ "?, ?, ?        " 
					
					+ ")";
			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("DMZserver Insert");	
			
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
			
			statement.setString(14,WEB_disk1);
			statement.setString(15,WEB_disk2);
			statement.setString(16,WEB_disk3);
			statement.setString(17,WEB_disk4);
			
			statement.setString(18,SPAM_disk1);
			statement.setString(19,SPAM_disk2);	
			
			statement.setString(20,NWCPU_val);
			statement.setString(21,NWmemory_val);
			statement.setString(22,NSCPU_val);
			statement.setString(23,NSmemory_val);		
			
			statement.setString(24,TAX2_CPU);
			statement.setString(25,TAX2_memory);
			statement.setString(26,TAX2_value);
			statement.setString(27,TAX2_value_2);
			statement.setString(28,TAX2_vaccine);
			statement.setString(29,TAX2_update);
			statement.setString(30,TAX2_status);
			statement.setString(31,TAX2_disk1);
			statement.setString(32,TAX2_disk2);
			
			
			statement.setString(33,ifany);			
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
			
			String WEB_disk1,
			String WEB_disk2,
			String WEB_disk3,
			String WEB_disk4,
			String SPAM_disk1,
			String SPAM_disk2,
			
			String NWCPU_val,
			String NWmemory_val,
			String NSCPU_val,
			String NSmemory_val,
			
			
			
			String TAX2_CPU    ,
			String TAX2_memory ,
			String TAX2_value  ,
			String TAX2_value_2, 
			String TAX2_vaccine, 
			String TAX2_update ,
			String TAX2_status ,
			String TAX2_disk1  ,
			String TAX2_disk2  ,
						
			
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
					
					+"[WEB_disk1]=?,"
					+"[WEB_disk2]=?,"
					+"[WEB_disk3]=?,"
					+"[WEB_disk4]=?,"
					
					+"[SPAM_disk1]=?,"
					+"[SPAM_disk2]=?,"
					
					+"[NWCPU_val]=?,"
					+"[NWmemory_val]=?,"
					+"[NSCPU_val]=?,"
					+"[NSmemory_val]=?,"

					
				+"[TAX2_CPU]=?,"
				+"[TAX2_memory]=?," 
				+"[TAX2_value]=?," 
				+"[TAX2_value_2]=?," 
				+"[TAX2_vaccine]=?," 
				+"[TAX2_update]=?," 
				+"[TAX2_status]=?," 
				+"[TAX2_disk1]=?," 
				+"[TAX2_disk2]=?," 
					
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
			
			statement.setString(13,WEB_disk1);
			statement.setString(14,WEB_disk2);
			statement.setString(15,WEB_disk3);
			statement.setString(16,WEB_disk4);
			
			statement.setString(17,SPAM_disk1);
			statement.setString(18,SPAM_disk2);	
			
			statement.setString(19,NWCPU_val);
			statement.setString(20,NWmemory_val);
			statement.setString(21,NSCPU_val);
			statement.setString(22,NSmemory_val);				
			
			statement.setString(23,TAX2_CPU);
			statement.setString(24,TAX2_memory);
			statement.setString(25,TAX2_value);
			statement.setString(26,TAX2_value_2);
			statement.setString(27,TAX2_vaccine);
			statement.setString(28,TAX2_update);
			statement.setString(29,TAX2_status);
			statement.setString(30,TAX2_disk1);
			statement.setString(31,TAX2_disk2);
			
			statement.setString(32,ifany);				
			statement.setString(33, id);
			
			
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("DMZserver Update");
			
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
