package pages;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.*;

public class ServerDAO {
	private static Server makeserver(ResultSet resultSet) throws SQLException {
		Server server = new Server();
		server.setId(resultSet.getString("id").trim());
		server.setChecktime(resultSet.getString("checkTime"));		
		server.setChecker(resultSet.getString("checker").trim());
				
		server.setWEB_CPU(resultSet.getString("WEB_CPU").trim());
		server.setWEB_memory(resultSet.getString("WEB_memory").trim());
		server.setWEB_value(resultSet.getString("WEB_value").trim());
		server.setWEB_vaccine(resultSet.getString("WEB_vaccine").trim());
		server.setWEB_update(resultSet.getString("WEB_update").trim());
		server.setWEB_status(resultSet.getString("WEB_status").trim());
		server.setDBM_CPU(resultSet.getString("DBM_CPU").trim());
		server.setDBM_memory(resultSet.getString("DBM_memory").trim());
		server.setDBM_value(resultSet.getString("DBM_value").trim());
		server.setDBM_vaccine(resultSet.getString("DBM_vaccine").trim());
		server.setDBM_update(resultSet.getString("DBM_update").trim());
		server.setDBM_DB(resultSet.getString("DBM_DB").trim());
		server.setDBM_status(resultSet.getString("DBM_status").trim());
		server.setDEW_CPU(resultSet.getString("DEW_CPU").trim());
		server.setDEW_memory(resultSet.getString("DEW_memory").trim());
		server.setDEW_value(resultSet.getString("DEW_value").trim());
		server.setDEW_vaccine(resultSet.getString("DEW_vaccine").trim());
		server.setDEW_update(resultSet.getString("DEW_update").trim());
		server.setDEW_status(resultSet.getString("DEW_status").trim());
		server.setMAIL_CPU(resultSet.getString("MAIL_CPU").trim());
		server.setMAIL_memory(resultSet.getString("MAIL_memory").trim());
		server.setMAIL_value(resultSet.getString("MAIL_value").trim());
		server.setMAIL_vaccine(resultSet.getString("MAIL_vaccine").trim());
		server.setMAIL_update(resultSet.getString("MAIL_update").trim());
		server.setMAIL_status(resultSet.getString("MAIL_status").trim());
		server.setAPP_CPU(resultSet.getString("APP_CPU").trim());
		server.setAPP_memory(resultSet.getString("APP_memory").trim());
		server.setAPP_value(resultSet.getString("APP_value").trim());
		server.setAPP_vaccine(resultSet.getString("APP_vaccine").trim());
		server.setAPP_update(resultSet.getString("APP_update").trim());
		server.setAPP_status(resultSet.getString("APP_status").trim());
		server.setFAX_CPU(resultSet.getString("FAX_CPU").trim());
		server.setFAX_memory(resultSet.getString("FAX_memory").trim());
		server.setFAX_value(resultSet.getString("FAX_value").trim());
		server.setFAX_vaccine(resultSet.getString("FAX_vaccine").trim());
		server.setFAX_update(resultSet.getString("FAX_update").trim());
		server.setFAX_status(resultSet.getString("FAX_status").trim());
		server.setADN_CPU(resultSet.getString("ADN_CPU").trim());
		server.setADN_memory(resultSet.getString("ADN_memory").trim());
		server.setADN_value(resultSet.getString("ADN_value").trim());
		server.setADN_vaccine(resultSet.getString("ADN_vaccine").trim());
		server.setADN_update(resultSet.getString("ADN_update").trim());
		server.setADN_status(resultSet.getString("ADN_status").trim());
		server.setVRS_CPU(resultSet.getString("VRS_CPU").trim());
		server.setVRS_memory(resultSet.getString("VRS_memory").trim());
		server.setVRS_value(resultSet.getString("VRS_value").trim());
		server.setVRS_vaccine(resultSet.getString("VRS_vaccine").trim());
		server.setVRS_update(resultSet.getString("VRS_update").trim());
		server.setVRS_status(resultSet.getString("VRS_status").trim());
		server.setFILE_CPU(resultSet.getString("FILE_CPU").trim());
		server.setFILE_memory(resultSet.getString("FILE_memory").trim());
		server.setFILE_value(resultSet.getString("FILE_value").trim());
		server.setFILE_vaccine(resultSet.getString("FILE_vaccine").trim());
		server.setFILE_update(resultSet.getString("FILE_update").trim());
		server.setFILE_status(resultSet.getString("FILE_status").trim());
		server.setDEVN_CPU(resultSet.getString("DEVN_CPU").trim());
		server.setDEVN_memory(resultSet.getString("DEVN_memory").trim());
		server.setDEVN_value(resultSet.getString("DEVN_value").trim());
		server.setDEVN_vaccine(resultSet.getString("DEVN_vaccine").trim());
		server.setDEVN_update(resultSet.getString("DEVN_update").trim());
		server.setDEVN_DB(resultSet.getString("DEVN_DB").trim());
		server.setDEVN_status(resultSet.getString("DEVN_status").trim());
		server.setMSVM1_CPU(resultSet.getString("MSVM1_CPU").trim());
		server.setMSVM1_memory(resultSet.getString("MSVM1_memory").trim());
		server.setMSVM1_value(resultSet.getString("MSVM1_value").trim());
		server.setMSVM1_vaccine(resultSet.getString("MSVM1_vaccine").trim());
		server.setMSVM1_update(resultSet.getString("MSVM1_update").trim());
		server.setMSVM1_status(resultSet.getString("MSVM1_status").trim());
		server.setMSVM2_CPU(resultSet.getString("MSVM2_CPU").trim());
		server.setMSVM2_memory(resultSet.getString("MSVM2_memory").trim());
		server.setMSVM2_value(resultSet.getString("MSVM2_value").trim());
		server.setMSVM2_vaccine(resultSet.getString("MSVM2_vaccine").trim());
		server.setMSVM2_update(resultSet.getString("MSVM2_update").trim());
		server.setMSVM2_status(resultSet.getString("MSVM2_status").trim());
		server.setLYNC_CPU(resultSet.getString("LYNC_CPU").trim());
		server.setLYNC_memory(resultSet.getString("LYNC_memory").trim());
		server.setLYNC_value(resultSet.getString("LYNC_value").trim());
		server.setLYNC_vaccine(resultSet.getString("LYNC_vaccine").trim());
		server.setLYNC_update(resultSet.getString("LYNC_update").trim());
		server.setLYNC_status(resultSet.getString("LYNC_status").trim());
		server.setADV1_CPU(resultSet.getString("ADV1_CPU").trim());
		server.setADV1_memory(resultSet.getString("ADV1_memory").trim());
		server.setADV1_value(resultSet.getString("ADV1_value").trim());
		server.setADV1_vaccine(resultSet.getString("ADV1_vaccine").trim());
		server.setADV1_update(resultSet.getString("ADV1_update").trim());
		server.setADV1_status(resultSet.getString("ADV1_status").trim());
		server.setADV2_CPU(resultSet.getString("ADV2_CPU").trim());
		server.setADV2_memory(resultSet.getString("ADV2_memory").trim());
		server.setADV2_value(resultSet.getString("ADV2_value").trim());
		server.setADV2_vaccine(resultSet.getString("ADV2_vaccine").trim());
		server.setADV2_update(resultSet.getString("ADV2_update").trim());
		server.setADV2_status(resultSet.getString("ADV2_status").trim());		
		server.setWEB_value_2(resultSet.getString("WEB_value_2").trim());
		server.setDBM_value_2(resultSet.getString("DBM_value_2").trim());
		server.setDEW_value_2(resultSet.getString("DEW_value_2").trim());
		server.setMAIL_value_2(resultSet.getString("MAIL_value_2").trim());
		server.setAPP_value_2(resultSet.getString("APP_value_2").trim());
		server.setFAX_value_2(resultSet.getString("FAX_value_2").trim());
		server.setADN_value_2(resultSet.getString("ADN_value_2").trim());
		server.setVRS_value_2(resultSet.getString("VRS_value_2").trim());
		server.setFILE_value_2(resultSet.getString("FILE_value_2").trim());
		server.setDEVN_value_2(resultSet.getString("DEVN_value_2").trim());
		server.setMSVM1_value_2(resultSet.getString("MSVM1_value_2").trim());
		server.setMSVM2_value_2(resultSet.getString("MSVM2_value_2").trim());
		server.setLYNC_value_2(resultSet.getString("LYNC_value_2").trim());
		server.setADV1_value_2(resultSet.getString("ADV1_value_2").trim());
		server.setADV2_value_2(resultSet.getString("ADV2_value_2").trim());
		server.setWEB_disk1(resultSet.getString("WEB_disk1").trim());
		server.setWEB_disk2(resultSet.getString("WEB_disk2").trim());
		server.setWEB_disk3(resultSet.getString("WEB_disk3").trim());
		server.setWEB_disk4(resultSet.getString("WEB_disk4").trim());
		
		
		
		server.setDBM_disk1(resultSet.getString("DBM_disk1").trim());
		server.setDBM_disk2(resultSet.getString("DBM_disk2").trim());
		
		server.setDBM_disk3(resultSet.getString("DBM_disk3").trim());
		server.setDBM_disk4(resultSet.getString("DBM_disk4").trim());
		

		server.setDBM_disk5(resultSet.getString("DBM_disk5").trim());
		server.setDBM_disk6(resultSet.getString("DBM_disk6").trim());
		
		server.setDEW_disk1(resultSet.getString("DEW_disk1").trim());
		server.setDEW_disk2(resultSet.getString("DEW_disk2").trim());
		server.setMAIL_disk1(resultSet.getString("MAIL_disk1").trim());
		server.setMAIL_disk2(resultSet.getString("MAIL_disk2").trim());
		server.setMAIL_disk3(resultSet.getString("MAIL_disk3").trim());
		server.setMAIL_disk4(resultSet.getString("MAIL_disk4").trim());
		server.setAPP_disk1(resultSet.getString("APP_disk1").trim());
		server.setAPP_disk2(resultSet.getString("APP_disk2").trim());
		server.setAPP_disk3(resultSet.getString("APP_disk3").trim());
		server.setAPP_disk4(resultSet.getString("APP_disk4").trim());
		server.setFAX_disk1(resultSet.getString("FAX_disk1").trim());
		server.setFAX_disk2(resultSet.getString("FAX_disk2").trim());
		
		server.setFAX_disk3(resultSet.getString("FAX_disk3").trim());
		server.setFAX_disk4(resultSet.getString("FAX_disk4").trim());
		
		
		server.setADN_disk1(resultSet.getString("ADN_disk1").trim());
		server.setADN_disk2(resultSet.getString("ADN_disk2").trim());
		server.setADN_disk3(resultSet.getString("ADN_disk3").trim());
		server.setADN_disk4(resultSet.getString("ADN_disk4").trim());
		server.setVRS_disk1(resultSet.getString("VRS_disk1").trim());
		server.setVRS_disk2(resultSet.getString("VRS_disk2").trim());
		server.setVRS_disk3(resultSet.getString("VRS_disk3").trim());
		server.setVRS_disk4(resultSet.getString("VRS_disk4").trim());
		server.setFILE_disk1(resultSet.getString("FILE_disk1").trim());
		server.setFILE_disk2(resultSet.getString("FILE_disk2").trim());
		server.setFILE_disk3(resultSet.getString("FILE_disk3").trim());
		server.setFILE_disk4(resultSet.getString("FILE_disk4").trim());
		server.setDEVN_disk1(resultSet.getString("DEVN_disk1").trim());
		server.setDEVN_disk2(resultSet.getString("DEVN_disk2").trim());
		server.setDEVN_disk3(resultSet.getString("DEVN_disk3").trim());
		server.setDEVN_disk4(resultSet.getString("DEVN_disk4").trim());
		
		
		server.setDEVN_disk5(resultSet.getString("DEVN_disk5").trim());
		server.setDEVN_disk6(resultSet.getString("DEVN_disk6").trim());
		
		
		server.setMSVM1_disk1(resultSet.getString("MSVM1_disk1").trim());
		server.setMSVM1_disk2(resultSet.getString("MSVM1_disk2").trim());
		server.setMSVM1_disk3(resultSet.getString("MSVM1_disk3").trim());
		server.setMSVM1_disk4(resultSet.getString("MSVM1_disk4").trim());
		server.setMSVM1_disk5(resultSet.getString("MSVM1_disk5").trim());
		server.setMSVM1_disk6(resultSet.getString("MSVM1_disk6").trim());
		server.setMSVM1_disk7(resultSet.getString("MSVM1_disk7").trim());
		server.setMSVM1_disk8(resultSet.getString("MSVM1_disk8").trim());
		server.setMSVM1_disk9(resultSet.getString("MSVM1_disk9").trim());
		server.setMSVM1_disk10(resultSet.getString("MSVM1_disk10").trim());
		server.setMSVM2_disk1(resultSet.getString("MSVM2_disk1").trim());
		server.setMSVM2_disk2(resultSet.getString("MSVM2_disk2").trim());
		server.setMSVM2_disk3(resultSet.getString("MSVM2_disk3").trim());
		server.setMSVM2_disk4(resultSet.getString("MSVM2_disk4").trim());
		server.setMSVM2_disk5(resultSet.getString("MSVM2_disk5").trim());
		server.setMSVM2_disk6(resultSet.getString("MSVM2_disk6").trim());
		server.setMSVM2_disk7(resultSet.getString("MSVM2_disk7").trim());
		server.setMSVM2_disk8(resultSet.getString("MSVM2_disk8").trim());
		server.setMSVM2_disk9(resultSet.getString("MSVM2_disk9").trim());
		server.setMSVM2_disk10(resultSet.getString("MSVM2_disk10").trim());
		server.setLYNC_disk1(resultSet.getString("LYNC_disk1").trim());
		server.setLYNC_disk2(resultSet.getString("LYNC_disk2").trim());
		server.setLYNC_disk3(resultSet.getString("LYNC_disk3").trim());
		server.setLYNC_disk4(resultSet.getString("LYNC_disk4").trim());
		server.setADV1_disk1(resultSet.getString("ADV1_disk1").trim());
		server.setADV1_disk2(resultSet.getString("ADV1_disk2").trim());
		server.setADV2_disk1(resultSet.getString("ADV2_disk1").trim());
		server.setADV2_disk2(resultSet.getString("ADV2_disk2").trim());
		server.setTAX1_CPU(resultSet.getString("TAX1_CPU").trim());
		server.setTAX1_memory(resultSet.getString("TAX1_memory").trim());
		server.setTAX1_value (resultSet.getString("TAX1_value").trim());
		server.setTAX1_value_2 (resultSet.getString("TAX1_value_2").trim());
		server.setTAX1_vaccine (resultSet.getString("TAX1_vaccine").trim());
		server.setTAX1_update (resultSet.getString("TAX1_update").trim());
		server.setTAX1_status (resultSet.getString("TAX1_status").trim());
		server.setTAX1_disk1 (resultSet.getString("TAX1_disk1").trim());
		server.setTAX1_disk2 (resultSet.getString("TAX1_disk2").trim());
		
		server.setTAX2_CPU (resultSet.getString("TAX2_CPU").trim());
		server.setTAX2_memory (resultSet.getString("TAX2_memory").trim());
		server.setTAX2_value (resultSet.getString("TAX2_value").trim());
		server.setTAX2_value_2 (resultSet.getString("TAX2_value_2").trim());
		server.setTAX2_vaccine (resultSet.getString("TAX2_vaccine").trim());
		server.setTAX2_update (resultSet.getString("TAX2_update").trim());
		server.setTAX2_status (resultSet.getString("TAX2_status").trim());
		server.setTAX2_disk1 (resultSet.getString("TAX2_disk1").trim());
		server.setTAX2_disk2 (resultSet.getString("TAX2_disk2").trim());
		
		server.setWEB_H_CPU(resultSet.getString("WEB_H_CPU").trim());
		server.setWEB_H_memory(resultSet.getString("WEB_H_memory").trim());
		server.setWEB_H_value(resultSet.getString("WEB_H_value").trim());
		server.setWEB_H_value_2(resultSet.getString("WEB_H_value_2").trim());
		server.setWEB_H_vaccine(resultSet.getString("WEB_H_vaccine").trim());
		server.setWEB_H_update(resultSet.getString("WEB_H_update").trim());
		server.setWEB_H_status(resultSet.getString("WEB_H_status").trim());
		server.setDBM_H_CPU(resultSet.getString("DBM_H_CPU").trim());
		server.setDBM_H_memory(resultSet.getString("DBM_H_memory").trim());
		server.setDBM_H_value(resultSet.getString("DBM_H_value").trim());
		server.setDBM_H_value_2(resultSet.getString("DBM_H_value_2").trim());
		server.setDBM_H_vaccine(resultSet.getString("DBM_H_vaccine").trim());
		server.setDBM_H_update(resultSet.getString("DBM_H_update").trim());
		server.setDBM_H_status(resultSet.getString("DBM_H_status").trim());
		server.setMAIL_H_CPU(resultSet.getString("MAIL_H_CPU").trim());
		server.setMAIL_H_memory(resultSet.getString("MAIL_H_memory").trim());
		server.setMAIL_H_value(resultSet.getString("MAIL_H_value").trim());
		server.setMAIL_H_value_2(resultSet.getString("MAIL_H_value_2").trim());
		server.setMAIL_H_vaccine(resultSet.getString("MAIL_H_vaccine").trim());
		server.setMAIL_H_update(resultSet.getString("MAIL_H_update").trim());
		server.setMAIL_H_status(resultSet.getString("MAIL_H_status").trim());
		server.setAPP_H_CPU(resultSet.getString("APP_H_CPU").trim());
		server.setAPP_H_memory(resultSet.getString("APP_H_memory").trim());
		server.setAPP_H_value(resultSet.getString("APP_H_value").trim());
		server.setAPP_H_value_2(resultSet.getString("APP_H_value_2").trim());
		server.setAPP_H_vaccine(resultSet.getString("APP_H_vaccine").trim());
		server.setAPP_H_update(resultSet.getString("APP_H_update").trim());
		server.setAPP_H_status(resultSet.getString("APP_H_status").trim());


		server.setWEB_H_disk1(resultSet.getString("WEB_H_disk1").trim());
		server.setWEB_H_disk2(resultSet.getString("WEB_H_disk2").trim());
		server.setDBM_H_disk1(resultSet.getString("DBM_H_disk1").trim());
		server.setDBM_H_disk2(resultSet.getString("DBM_H_disk2").trim());
		server.setMAIL_H_disk1(resultSet.getString("MAIL_H_disk1").trim());
		server.setMAIL_H_disk2(resultSet.getString("MAIL_H_disk2").trim());
		server.setAPP_H_disk1(resultSet.getString("APP_H_disk1").trim());
		server.setAPP_H_disk2(resultSet.getString("APP_H_disk2").trim());

		server.setMAIL_H_disk3(resultSet.getString("MAIL_H_disk3").trim());
		server.setMAIL_H_disk4(resultSet.getString("MAIL_H_disk4").trim());
		server.setMAIL_H_disk5(resultSet.getString("MAIL_H_disk5").trim());
		server.setMAIL_H_disk6(resultSet.getString("MAIL_H_disk6").trim());
		server.setMAIL_H_disk7(resultSet.getString("MAIL_H_disk7").trim());
		server.setMAIL_H_disk8(resultSet.getString("MAIL_H_disk8").trim());
		server.setMAIL_H_disk9(resultSet.getString("MAIL_H_disk9").trim());
		server.setMAIL_H_disk10(resultSet.getString("MAIL_H_disk10").trim());
		server.setMAIL_H_disk11(resultSet.getString("MAIL_H_disk11").trim());
		server.setMAIL_H_disk12(resultSet.getString("MAIL_H_disk12").trim());
		server.setAPP_H_disk3(resultSet.getString("APP_H_disk3").trim());
		server.setAPP_H_disk4(resultSet.getString("APP_H_disk4").trim());
		server.setAPP_H_disk5(resultSet.getString("APP_H_disk5").trim());
		server.setAPP_H_disk6(resultSet.getString("APP_H_disk6").trim());
		server.setAPP_H_disk7(resultSet.getString("APP_H_disk7").trim());
		server.setAPP_H_disk8(resultSet.getString("APP_H_disk8").trim());
		server.setAPP_H_disk9(resultSet.getString("APP_H_disk9").trim());
		server.setAPP_H_disk10(resultSet.getString("APP_H_disk10").trim());
		server.setAPP_H_disk11(resultSet.getString("APP_H_disk11").trim());
		server.setAPP_H_disk12(resultSet.getString("APP_H_disk12").trim());


		
		server.setIfany(resultSet.getString("ifany").trim());
		/*
		System.out.println("WEB_H_CPU : "+resultSet.getString("WEB_H_CPU").trim());
		System.out.println("WEB_H_memory : "+resultSet.getString("WEB_H_memory").trim());
		System.out.println("WEB_H_value : "+resultSet.getString("WEB_H_value").trim());
		System.out.println("WEB_H_value_2 : "+resultSet.getString("WEB_H_value_2").trim());
		System.out.println("WEB_H_vaccine : "+resultSet.getString("WEB_H_vaccine").trim());
		System.out.println("WEB_H_update : "+resultSet.getString("WEB_H_update").trim());
		System.out.println("WEB_H_status : "+resultSet.getString("WEB_H_status").trim());
		*/
		
		
		
		return server;
	}

	public static Server selectById(String id) throws Exception {
		//id = GetDate.getDate();

		Server server = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = DB.getConnection();
			String sql = "SELECT * FROM [server_] WHERE [id]='" + id + "'";

			
			GetDate.makeLog("Server Select");
			//SystemWriterLog.writeLog(sql);

			statement = connection.prepareStatement(sql);
			// statement.setString(1, id);
			resultSet = statement.executeQuery();
			if (resultSet.next())
				server = makeserver(resultSet);
		} finally {
			if (resultSet != null)
				resultSet.close();
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
		return server;
	}

	public static void insertInfo(
			String id, 
			String checktime, 
			String checker, 
			
			String WEB_CPU,
			String WEB_memory,
			String WEB_value,
			String WEB_vaccine,
			String WEB_update,
			String WEB_status,
			String DBM_CPU,
			String DBM_memory,
			String DBM_value,
			String DBM_vaccine,
			String DBM_update,
			String DBM_DB,
			String DBM_status,
			String DEW_CPU,
			String DEW_memory,
			String DEW_value,
			String DEW_vaccine,
			String DEW_update,
			String DEW_status,
			String MAIL_CPU,
			String MAIL_memory,
			String MAIL_value,
			String MAIL_vaccine,
			String MAIL_update,
			String MAIL_status,
			String APP_CPU,
			String APP_memory,
			String APP_value,
			String APP_vaccine,
			String APP_update,
			String APP_status,
			String FAX_CPU,
			String FAX_memory,
			String FAX_value,
			String FAX_vaccine,
			String FAX_update,
			String FAX_status,
			String ADN_CPU,
			String ADN_memory,
			String ADN_value,
			String ADN_vaccine,
			String ADN_update,
			String ADN_status,
			String VRS_CPU,
			String VRS_memory,
			String VRS_value,
			String VRS_vaccine,
			String VRS_update,
			String VRS_status,
			String FILE_CPU,
			String FILE_memory,
			String FILE_value,
			String FILE_vaccine,
			String FILE_update,
			String FILE_status,
			String DEVN_CPU,
			String DEVN_memory,
			String DEVN_value,
			String DEVN_vaccine,
			String DEVN_update,
			String DEVN_DB,
			String DEVN_status,
			String MSVM1_CPU,
			String MSVM1_memory,
			String MSVM1_value,
			String MSVM1_vaccine,
			String MSVM1_update,
			String MSVM1_status,
			String MSVM2_CPU,
			String MSVM2_memory,
			String MSVM2_value,
			String MSVM2_vaccine,
			String MSVM2_update,
			String MSVM2_status,
			String LYNC_CPU,
			String LYNC_memory,
			String LYNC_value,
			String LYNC_vaccine,
			String LYNC_update,
			String LYNC_status,
			String ADV1_CPU,
			String ADV1_memory,
			String ADV1_value,
			String ADV1_vaccine,
			String ADV1_update,
			String ADV1_status,
			String ADV2_CPU,
			String ADV2_memory,
			String ADV2_value,
			String ADV2_vaccine,
			String ADV2_update,
			String ADV2_status,
			
			String WEB_value_2,
			String DBM_value_2,
			String DEW_value_2,
			String MAIL_value_2,
			String APP_value_2,
			String FAX_value_2,
			String ADN_value_2,
			String VRS_value_2,
			String FILE_value_2,
			String DEVN_value_2,
			String MSVM1_value_2,
			String MSVM2_value_2,
			String LYNC_value_2,
			String ADV1_value_2,
			String ADV2_value_2,
			String WEB_disk1,
			String WEB_disk2,
			String WEB_disk3,
			String WEB_disk4,
			String DBM_disk1,
			String DBM_disk2,
			String DBM_disk3,
			String DBM_disk4,
			
			String DBM_disk5,
			String DBM_disk6,
			
			String DEW_disk1,
			String DEW_disk2,
			String MAIL_disk1,
			String MAIL_disk2,
			String MAIL_disk3,
			String MAIL_disk4,
			String APP_disk1,
			String APP_disk2,
			String APP_disk3,
			String APP_disk4,
			String FAX_disk1,
			String FAX_disk2,

			String FAX_disk3,
			String FAX_disk4,
			
			String ADN_disk1,
			String ADN_disk2,
			String ADN_disk3,
			String ADN_disk4,
			String VRS_disk1,
			String VRS_disk2,
			String VRS_disk3,
			String VRS_disk4,
			String FILE_disk1,
			String FILE_disk2,
			String FILE_disk3,
			String FILE_disk4,
			String DEVN_disk1,
			String DEVN_disk2,
			String DEVN_disk3,
			String DEVN_disk4,
			
			String DEVN_disk5,
			String DEVN_disk6,
			
			
			String MSVM1_disk1,
			String MSVM1_disk2,
			String MSVM1_disk3,
			String MSVM1_disk4,
			String MSVM1_disk5,
			String MSVM1_disk6,
			String MSVM1_disk7,
			String MSVM1_disk8,
			String MSVM1_disk9,
			String MSVM1_disk10,
			String MSVM2_disk1,
			String MSVM2_disk2,
			String MSVM2_disk3,
			String MSVM2_disk4,
			String MSVM2_disk5,
			String MSVM2_disk6,
			String MSVM2_disk7,
			String MSVM2_disk8,
			String MSVM2_disk9,
			String MSVM2_disk10,
			String LYNC_disk1,
			String LYNC_disk2,
			String LYNC_disk3,
			String LYNC_disk4,
			String ADV1_disk1,
			String ADV1_disk2,
			String ADV2_disk1,
			String ADV2_disk2,	
			
			String TAX1_CPU,
			String TAX1_memory,
			String TAX1_value,
			String TAX1_value_2,
			String TAX1_vaccine,
			String TAX1_update,
			String TAX1_status,
			String TAX1_disk1,
			String TAX1_disk2,
			String TAX2_CPU,
			String TAX2_memory,
			String TAX2_value,
			String TAX2_value_2,
			String TAX2_vaccine,
			String TAX2_update,
			String TAX2_status,
			String TAX2_disk1,
			String TAX2_disk2,
			
			String WEB_H_CPU,
			String WEB_H_memory,
			String WEB_H_value,
			String WEB_H_value_2,
			String WEB_H_vaccine,
			String WEB_H_update,
			String WEB_H_status,
			String DBM_H_CPU,
			String DBM_H_memory,
			String DBM_H_value,
			String DBM_H_value_2,
			String DBM_H_vaccine,
			String DBM_H_update,
			String DBM_H_status,
			String MAIL_H_CPU,
			String MAIL_H_memory,
			String MAIL_H_value,
			String MAIL_H_value_2,
			String MAIL_H_vaccine,
			String MAIL_H_update,
			String MAIL_H_status,
			String APP_H_CPU,
			String APP_H_memory,
			String APP_H_value,
			String APP_H_value_2,
			String APP_H_vaccine,
			String APP_H_update,
			String APP_H_status,
			
			String WEB_H_disk1,
			String WEB_H_disk2,
			String DBM_H_disk1,
			String DBM_H_disk2,
			String MAIL_H_disk1,
			String MAIL_H_disk2,
			String APP_H_disk1,
			String APP_H_disk2,

			String MAIL_H_disk3,
			String MAIL_H_disk4,
			String MAIL_H_disk5,
			String MAIL_H_disk6,
			String MAIL_H_disk7,
			String MAIL_H_disk8,
			String MAIL_H_disk9,
			String MAIL_H_disk10,
			String MAIL_H_disk11,
			String MAIL_H_disk12,
			String APP_H_disk3,
			String APP_H_disk4,
			String APP_H_disk5,
			String APP_H_disk6,
			String APP_H_disk7,
			String APP_H_disk8,
			String APP_H_disk9,
			String APP_H_disk10,
			String APP_H_disk11,
			String APP_H_disk12,

			String ifany
			
			) throws Exception {
		Server server = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "INSERT INTO server_("
					+"  id             ,checktime     ,checker       ,WEB_CPU       ,WEB_memory     "
					+" ,WEB_value      ,WEB_vaccine   ,WEB_update    ,WEB_status    ,DBM_CPU        "
					+" ,DBM_memory     ,DBM_value     ,DBM_vaccine   ,DBM_update    ,DBM_DB         "
					+" ,DBM_status     ,DEW_CPU       ,DEW_memory    ,DEW_value     ,DEW_vaccine    "
					+" ,DEW_update     ,DEW_status    ,MAIL_CPU      ,MAIL_memory   ,MAIL_value		"			 
					+" ,MAIL_vaccine   ,MAIL_update   ,MAIL_status   ,APP_CPU       ,APP_memory     "
					+" ,APP_value      ,APP_vaccine   ,APP_update    ,APP_status    ,FAX_CPU        "
					+" ,FAX_memory     ,FAX_value     ,FAX_vaccine   ,FAX_update    ,FAX_status     "
					+" ,ADN_CPU        ,ADN_memory    ,ADN_value     ,ADN_vaccine   ,ADN_update     "
					+" ,ADN_status     ,VRS_CPU       ,VRS_memory    ,VRS_value     ,VRS_vaccine    "
					
					+" ,VRS_update     ,VRS_status    ,FILE_CPU      ,FILE_memory   ,FILE_value     "
					+" ,FILE_vaccine   ,FILE_update   ,FILE_status   ,DEVN_CPU      ,DEVN_memory    "
					+" ,DEVN_value     ,DEVN_vaccine  ,DEVN_update   ,DEVN_DB       ,DEVN_status    "
					+" ,MSVM1_CPU      ,MSVM1_memory  ,MSVM1_value   ,MSVM1_vaccine ,MSVM1_update   "
					+" ,MSVM1_status   ,MSVM2_CPU     ,MSVM2_memory  ,MSVM2_value   ,MSVM2_vaccine	"				 
					+" ,MSVM2_update   ,MSVM2_status  ,LYNC_CPU      ,LYNC_memory   ,LYNC_value     "
					+" ,LYNC_vaccine   ,LYNC_update   ,LYNC_status   ,ADV1_CPU      ,ADV1_memory    "
					+" ,ADV1_value     ,ADV1_vaccine  ,ADV1_update   ,ADV1_status   ,ADV2_CPU       "
					+" ,ADV2_memory    ,ADV2_value    ,ADV2_vaccine  ,ADV2_update   ,ADV2_status    "
					+" ,WEB_value_2    ,DBM_value_2   ,DEW_value_2   ,MAIL_value_2  ,APP_value_2    "
					
					+" ,FAX_value_2    ,ADN_value_2   ,VRS_value_2   ,FILE_value_2  ,DEVN_value_2   "
					+" ,MSVM1_value_2  ,MSVM2_value_2 ,LYNC_value_2  ,ADV1_value_2  ,ADV2_value_2   "
					+" ,WEB_disk1      ,WEB_disk2     ,WEB_disk3     ,WEB_disk4     ,DBM_disk1      "
					+" ,DBM_disk2      ,DBM_disk3     ,DBM_disk4     ,DBM_disk5     ,DBM_disk6      "
					+" ,DEW_disk1      ,DEW_disk2     ,MAIL_disk1    ,MAIL_disk2    ,MAIL_disk3     "
					+" ,MAIL_disk4     ,APP_disk1     ,APP_disk2     ,APP_disk3     ,APP_disk4      "
					+" ,FAX_disk1      ,FAX_disk2     ,FAX_disk3     ,FAX_disk4     ,ADN_disk1      "
					+" ,ADN_disk2      ,ADN_disk3     ,ADN_disk4     ,VRS_disk1     ,VRS_disk2      "
					+" ,VRS_disk3      ,VRS_disk4     ,FILE_disk1    ,FILE_disk2    ,FILE_disk3     "
					+" ,FILE_disk4     ,DEVN_disk1    ,DEVN_disk2    ,DEVN_disk3    ,DEVN_disk4     "
					
					+" ,DEVN_disk5     ,DEVN_disk6    ,MSVM1_disk1   ,MSVM1_disk2   ,MSVM1_disk3    "
					+" ,MSVM1_disk4    ,MSVM1_disk5   ,MSVM1_disk6   ,MSVM1_disk7   ,MSVM1_disk8    "
					+" ,MSVM1_disk9    ,MSVM1_disk10  ,MSVM2_disk1   ,MSVM2_disk2   ,MSVM2_disk3    "
					+" ,MSVM2_disk4    ,MSVM2_disk5   ,MSVM2_disk6   ,MSVM2_disk7   ,MSVM2_disk8    "
					+" ,MSVM2_disk9    ,MSVM2_disk10  ,LYNC_disk1    ,LYNC_disk2    ,LYNC_disk3     "
					+" ,LYNC_disk4     ,ADV1_disk1    ,ADV1_disk2    ,ADV2_disk1    ,ADV2_disk2     "
					+" ,TAX1_CPU       ,TAX1_memory   ,TAX1_value    ,TAX1_value_2  ,TAX1_vaccine   "
					+" ,TAX1_update    ,TAX1_status   ,TAX1_disk1    ,TAX1_disk2    ,TAX2_CPU       "
					+" ,TAX2_memory    ,TAX2_value    ,TAX2_value_2  ,TAX2_vaccine  ,TAX2_update    "
					+" ,TAX2_status    ,TAX2_disk1    ,TAX2_disk2                            "
					
					
					+ ",WEB_H_CPU"
					+ ",WEB_H_memory"
					+ ",WEB_H_value"
					+ ",WEB_H_value_2"
					+ ",WEB_H_vaccine"
					+ ",WEB_H_update"
					+ ",WEB_H_status"
					+ ",DBM_H_CPU"
					+ ",DBM_H_memory"
					+ ",DBM_H_value"
					+ ",DBM_H_value_2"
					+ ",DBM_H_vaccine"
					+ ",DBM_H_update"
					+ ",DBM_H_status"
					+ ",MAIL_H_CPU"
					+ ",MAIL_H_memory"
					+ ",MAIL_H_value"
					+ ",MAIL_H_value_2"
					+ ",MAIL_H_vaccine"
					+ ",MAIL_H_update"
					+ ",MAIL_H_status"
					+ ",APP_H_CPU"
					+ ",APP_H_memory"
					+ ",APP_H_value"
					+ ",APP_H_value_2"
					+ ",APP_H_vaccine"
					+ ",APP_H_update"
					+ ",APP_H_status"
					
					+ ",WEB_H_disk1"
					+ ",WEB_H_disk2"
					+ ",DBM_H_disk1"
					+ ",DBM_H_disk2"
					+ ",MAIL_H_disk1"
					+ ",MAIL_H_disk2"
					+ ",APP_H_disk1"
					+ ",APP_H_disk2"

					
+ ",MAIL_H_disk3"
+ ",MAIL_H_disk4"
+ ",MAIL_H_disk5"
+ ",MAIL_H_disk6"
+ ",MAIL_H_disk7"
+ ",MAIL_H_disk8"
+ ",MAIL_H_disk9"
+ ",MAIL_H_disk10"
+ ",MAIL_H_disk11"
+ ",MAIL_H_disk12"
+ ",APP_H_disk3"
+ ",APP_H_disk4"
+ ",APP_H_disk5"
+ ",APP_H_disk6"
+ ",APP_H_disk7"
+ ",APP_H_disk8"
+ ",APP_H_disk9"
+ ",APP_H_disk10"
+ ",APP_H_disk11"
+ ",APP_H_disk12"

					
					+ ",ifany"

					
					
					
					+ " ) VALUES (" 
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"	
					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"					
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?, ?, ?, ?, ?, ?, ?,"
					
					+ "?, ?, ?, ?, ?    "
					
					+ ")";
			
			//SystemWriterLog.writeLog(sql);			
			GetDate.makeLog("Server Insert");
			
			statement = connection.prepareStatement(sql);
			
		
			GetDate.makeLog("Server Insert1");
			String[] arr = {
					  id             ,checktime     ,checker       ,WEB_CPU       ,WEB_memory
					 ,WEB_value      ,WEB_vaccine   ,WEB_update    ,WEB_status    ,DBM_CPU
					 ,DBM_memory     ,DBM_value     ,DBM_vaccine   ,DBM_update    ,DBM_DB
					 ,DBM_status     ,DEW_CPU       ,DEW_memory    ,DEW_value     ,DEW_vaccine
					 ,DEW_update     ,DEW_status    ,MAIL_CPU      ,MAIL_memory   ,MAIL_value					 
					 ,MAIL_vaccine   ,MAIL_update   ,MAIL_status   ,APP_CPU       ,APP_memory
					 ,APP_value      ,APP_vaccine   ,APP_update    ,APP_status    ,FAX_CPU
					 ,FAX_memory     ,FAX_value     ,FAX_vaccine   ,FAX_update    ,FAX_status
					 ,ADN_CPU        ,ADN_memory    ,ADN_value     ,ADN_vaccine   ,ADN_update
					 ,ADN_status     ,VRS_CPU       ,VRS_memory    ,VRS_value     ,VRS_vaccine
					 
					 ,VRS_update     ,VRS_status    ,FILE_CPU      ,FILE_memory   ,FILE_value
					 ,FILE_vaccine   ,FILE_update   ,FILE_status   ,DEVN_CPU      ,DEVN_memory
					 ,DEVN_value     ,DEVN_vaccine  ,DEVN_update   ,DEVN_DB       ,DEVN_status
					 ,MSVM1_CPU      ,MSVM1_memory  ,MSVM1_value   ,MSVM1_vaccine ,MSVM1_update
					 ,MSVM1_status   ,MSVM2_CPU     ,MSVM2_memory  ,MSVM2_value   ,MSVM2_vaccine					 
					 ,MSVM2_update   ,MSVM2_status  ,LYNC_CPU      ,LYNC_memory   ,LYNC_value
					 ,LYNC_vaccine   ,LYNC_update   ,LYNC_status   ,ADV1_CPU      ,ADV1_memory
					 ,ADV1_value     ,ADV1_vaccine  ,ADV1_update   ,ADV1_status   ,ADV2_CPU
					 ,ADV2_memory    ,ADV2_value    ,ADV2_vaccine  ,ADV2_update   ,ADV2_status
					 ,WEB_value_2    ,DBM_value_2   ,DEW_value_2   ,MAIL_value_2  ,APP_value_2
					 
					 ,FAX_value_2    ,ADN_value_2   ,VRS_value_2   ,FILE_value_2  ,DEVN_value_2
					 ,MSVM1_value_2  ,MSVM2_value_2 ,LYNC_value_2  ,ADV1_value_2  ,ADV2_value_2
					 ,WEB_disk1      ,WEB_disk2     ,WEB_disk3     ,WEB_disk4     ,DBM_disk1
					 ,DBM_disk2      ,DBM_disk3     ,DBM_disk4     ,DBM_disk5     ,DBM_disk6
					 ,DEW_disk1      ,DEW_disk2     ,MAIL_disk1    ,MAIL_disk2    ,MAIL_disk3
					 ,MAIL_disk4     ,APP_disk1     ,APP_disk2     ,APP_disk3     ,APP_disk4
					 ,FAX_disk1      ,FAX_disk2     ,FAX_disk3     ,FAX_disk4     ,ADN_disk1
					 ,ADN_disk2      ,ADN_disk3     ,ADN_disk4     ,VRS_disk1     ,VRS_disk2
					 ,VRS_disk3      ,VRS_disk4     ,FILE_disk1    ,FILE_disk2    ,FILE_disk3
					 ,FILE_disk4     ,DEVN_disk1    ,DEVN_disk2    ,DEVN_disk3    ,DEVN_disk4
					 
					 ,DEVN_disk5     ,DEVN_disk6    ,MSVM1_disk1   ,MSVM1_disk2   ,MSVM1_disk3
					 ,MSVM1_disk4    ,MSVM1_disk5   ,MSVM1_disk6   ,MSVM1_disk7   ,MSVM1_disk8
					 ,MSVM1_disk9    ,MSVM1_disk10  ,MSVM2_disk1   ,MSVM2_disk2   ,MSVM2_disk3
					 ,MSVM2_disk4    ,MSVM2_disk5   ,MSVM2_disk6   ,MSVM2_disk7   ,MSVM2_disk8
					 ,MSVM2_disk9    ,MSVM2_disk10  ,LYNC_disk1    ,LYNC_disk2    ,LYNC_disk3
					 ,LYNC_disk4     ,ADV1_disk1    ,ADV1_disk2    ,ADV2_disk1    ,ADV2_disk2
					 ,TAX1_CPU       ,TAX1_memory   ,TAX1_value    ,TAX1_value_2  ,TAX1_vaccine
					 ,TAX1_update    ,TAX1_status   ,TAX1_disk1    ,TAX1_disk2    ,TAX2_CPU
					 ,TAX2_memory    ,TAX2_value    ,TAX2_value_2  ,TAX2_vaccine  ,TAX2_update
					 ,TAX2_status    ,TAX2_disk1    ,TAX2_disk2    
					 
					 ,WEB_H_CPU
					 ,WEB_H_memory
					 ,WEB_H_value
					 ,WEB_H_value_2
					 ,WEB_H_vaccine
					 ,WEB_H_update
					 ,WEB_H_status
					 ,DBM_H_CPU
					 ,DBM_H_memory
					 ,DBM_H_value
					 ,DBM_H_value_2
					 ,DBM_H_vaccine
					 ,DBM_H_update
					 ,DBM_H_status
					 ,MAIL_H_CPU
					 ,MAIL_H_memory
					 ,MAIL_H_value
					 ,MAIL_H_value_2
					 ,MAIL_H_vaccine
					 ,MAIL_H_update
					 ,MAIL_H_status
					 ,APP_H_CPU
					 ,APP_H_memory
					 ,APP_H_value
					 ,APP_H_value_2
					 ,APP_H_vaccine
					 ,APP_H_update
					 ,APP_H_status

					 ,WEB_H_disk1
					 ,WEB_H_disk2
					 ,DBM_H_disk1
					 ,DBM_H_disk2
					 ,MAIL_H_disk1
					 ,MAIL_H_disk2
					 ,APP_H_disk1
					 ,APP_H_disk2
					 
					 ,MAIL_H_disk3
					 ,MAIL_H_disk4
					 ,MAIL_H_disk5
					 ,MAIL_H_disk6
					 ,MAIL_H_disk7
					 ,MAIL_H_disk8
					 ,MAIL_H_disk9
					 ,MAIL_H_disk10
					 ,MAIL_H_disk11
					 ,MAIL_H_disk12
					 ,APP_H_disk3
					 ,APP_H_disk4
					 ,APP_H_disk5
					 ,APP_H_disk6
					 ,APP_H_disk7
					 ,APP_H_disk8
					 ,APP_H_disk9
					 ,APP_H_disk10
					 ,APP_H_disk11
					 ,APP_H_disk12

					 
					 ,ifany
					 
					 
					 
				};
			
			
			System.out.println("234 : "+TAX2_disk2);
			
			GetDate.makeLog("Server Insert2");
			for(int i=0;i<arr.length;i++) statement.setString(i+1, arr[i]);
			GetDate.makeLog("Server Insert3");
			System.out.println(statement);
			
			statement.executeUpdate();
			GetDate.makeLog("Server Insert4");
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
			String id,String checktime,String checker,String WEB_CPU,String WEB_memory,String WEB_value,String WEB_vaccine,String WEB_update,String WEB_status,String DBM_CPU,String DBM_memory,String DBM_value,String DBM_vaccine,String DBM_update,String DBM_DB,String DBM_status,String DEW_CPU,String DEW_memory,String DEW_value,String DEW_vaccine,String DEW_update,String DEW_status,String MAIL_CPU,String MAIL_memory,String MAIL_value,String MAIL_vaccine,String MAIL_update,String MAIL_status,String APP_CPU,String APP_memory,String APP_value,String APP_vaccine,String APP_update,String APP_status,String FAX_CPU,String FAX_memory,String FAX_value,String FAX_vaccine,String FAX_update,String FAX_status,String ADN_CPU,String ADN_memory,String ADN_value,String ADN_vaccine,String ADN_update,String ADN_status,String VRS_CPU,String VRS_memory,String VRS_value,String VRS_vaccine,String VRS_update,String VRS_status,String FILE_CPU,String FILE_memory,String FILE_value,String FILE_vaccine,String FILE_update,String FILE_status,String DEVN_CPU,String DEVN_memory,String DEVN_value,String DEVN_vaccine,String DEVN_update,String DEVN_DB,String DEVN_status,String MSVM1_CPU,String MSVM1_memory,String MSVM1_value,String MSVM1_vaccine,String MSVM1_update,String MSVM1_status,String MSVM2_CPU,String MSVM2_memory,String MSVM2_value,String MSVM2_vaccine,String MSVM2_update,String MSVM2_status,String LYNC_CPU,String LYNC_memory,String LYNC_value,String LYNC_vaccine,String LYNC_update,String LYNC_status,String ADV1_CPU,String ADV1_memory,String ADV1_value,String ADV1_vaccine,String ADV1_update,String ADV1_status,String ADV2_CPU,String ADV2_memory,String ADV2_value,String ADV2_vaccine,String ADV2_update,String ADV2_status,String WEB_value_2,String DBM_value_2,String DEW_value_2,String MAIL_value_2,String APP_value_2,String FAX_value_2,String ADN_value_2,String VRS_value_2,String FILE_value_2,String DEVN_value_2,String MSVM1_value_2,String MSVM2_value_2,String LYNC_value_2,String ADV1_value_2,String ADV2_value_2,String WEB_disk1,String WEB_disk2,String WEB_disk3,String WEB_disk4
			,String DBM_disk1,String DBM_disk2,String DBM_disk3,String DBM_disk4
			,String DBM_disk5,String DBM_disk6,String DEW_disk1,String DEW_disk2,String MAIL_disk1,String MAIL_disk2,String MAIL_disk3,String MAIL_disk4,String APP_disk1,String APP_disk2,String APP_disk3,String APP_disk4,String FAX_disk1,String FAX_disk2,String FAX_disk3,String FAX_disk4,String ADN_disk1,String ADN_disk2,String ADN_disk3,String ADN_disk4,String VRS_disk1,String VRS_disk2,String VRS_disk3,String VRS_disk4,String FILE_disk1,String FILE_disk2,String FILE_disk3,String FILE_disk4,String DEVN_disk1,String DEVN_disk2,String DEVN_disk3,String DEVN_disk4,String DEVN_disk5,String DEVN_disk6,String MSVM1_disk1,String MSVM1_disk2,String MSVM1_disk3,String MSVM1_disk4,String MSVM1_disk5,String MSVM1_disk6,String MSVM1_disk7,String MSVM1_disk8,String MSVM1_disk9,String MSVM1_disk10,String MSVM2_disk1,String MSVM2_disk2,String MSVM2_disk3,String MSVM2_disk4,String MSVM2_disk5,String MSVM2_disk6,String MSVM2_disk7,String MSVM2_disk8,String MSVM2_disk9,String MSVM2_disk10,String LYNC_disk1,String LYNC_disk2,String LYNC_disk3,String LYNC_disk4,String ADV1_disk1,String ADV1_disk2,String ADV2_disk1,String ADV2_disk2,String TAX1_CPU,String TAX1_memory,String TAX1_value,String TAX1_value_2,String TAX1_vaccine,String TAX1_update,String TAX1_status,String TAX1_disk1,String TAX1_disk2,String TAX2_CPU,String TAX2_memory,String TAX2_value,String TAX2_value_2,String TAX2_vaccine,String TAX2_update,String TAX2_status,String TAX2_disk1
			,String TAX2_disk2,
			String WEB_H_CPU,
			String WEB_H_memory,
			String WEB_H_value,
			String WEB_H_value_2,
			String WEB_H_vaccine,
			String WEB_H_update,
			String WEB_H_status,
			String DBM_H_CPU,
			String DBM_H_memory,
			String DBM_H_value,
			String DBM_H_value_2,
			String DBM_H_vaccine,
			String DBM_H_update,
			String DBM_H_status,
			String MAIL_H_CPU,
			String MAIL_H_memory,
			String MAIL_H_value,
			String MAIL_H_value_2,
			String MAIL_H_vaccine,
			String MAIL_H_update,
			String MAIL_H_status,
			String APP_H_CPU,
			String APP_H_memory,
			String APP_H_value,
			String APP_H_value_2,
			String APP_H_vaccine,
			String APP_H_update,
			String APP_H_status,
			
			String WEB_H_disk1,
			String WEB_H_disk2,
			String DBM_H_disk1,
			String DBM_H_disk2,
			String MAIL_H_disk1,
			String MAIL_H_disk2,
			String APP_H_disk1,
			String APP_H_disk2,

			String MAIL_H_disk3,
			String MAIL_H_disk4,
			String MAIL_H_disk5,
			String MAIL_H_disk6,
			String MAIL_H_disk7,
			String MAIL_H_disk8,
			String MAIL_H_disk9,
			String MAIL_H_disk10,
			String MAIL_H_disk11,
			String MAIL_H_disk12,
			String APP_H_disk3,
			String APP_H_disk4,
			String APP_H_disk5,
			String APP_H_disk6,
			String APP_H_disk7,
			String APP_H_disk8,
			String APP_H_disk9,
			String APP_H_disk10,
			String APP_H_disk11,
			String APP_H_disk12,


			String ifany
			) throws Exception {
		Server server = null;
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DB.getConnection();
			String sql = "";
			sql += "UPDATE [server_] set "
					+"[checktime]=?,[checker]=?,[WEB_CPU]=?,[WEB_memory]=?,[WEB_value]=?,[WEB_vaccine]=?,[WEB_update]=?,[WEB_status]=?,[DBM_CPU]=?,[DBM_memory]=?,[DBM_value]=?,[DBM_vaccine]=?,[DBM_update]=?,[DBM_DB]=?,[DBM_status]=?,[DEW_CPU]=?,[DEW_memory]=?,[DEW_value]=?,[DEW_vaccine]=?,[DEW_update]=?,[DEW_status]=?,[MAIL_CPU]=?,[MAIL_memory]=?,[MAIL_value]=?,[MAIL_vaccine]=?,[MAIL_update]=?,[MAIL_status]=?,[APP_CPU]=?,[APP_memory]=?,[APP_value]=?,[APP_vaccine]=?,[APP_update]=?,[APP_status]=?,[FAX_CPU]=?,[FAX_memory]=?,[FAX_value]=?,[FAX_vaccine]=?,[FAX_update]=?,[FAX_status]=?,[ADN_CPU]=?,[ADN_memory]=?,[ADN_value]=?,[ADN_vaccine]=?,[ADN_update]=?,[ADN_status]=?,[VRS_CPU]=?,[VRS_memory]=?,[VRS_value]=?,[VRS_vaccine]=?,[VRS_update]=?,[VRS_status]=?,[FILE_CPU]=?,[FILE_memory]=?,[FILE_value]=?,[FILE_vaccine]=?,[FILE_update]=?,[FILE_status]=?,[DEVN_CPU]=?,[DEVN_memory]=?,[DEVN_value]=?,[DEVN_vaccine]=?,[DEVN_update]=?,[DEVN_DB]=?,[DEVN_status]=?,[MSVM1_CPU]=?,[MSVM1_memory]=?,[MSVM1_value]=?,[MSVM1_vaccine]=?,[MSVM1_update]=?,[MSVM1_status]=?,[MSVM2_CPU]=?,[MSVM2_memory]=?,[MSVM2_value]=?,[MSVM2_vaccine]=?,[MSVM2_update]=?,[MSVM2_status]=?,[LYNC_CPU]=?,[LYNC_memory]=?,[LYNC_value]=?,[LYNC_vaccine]=?,[LYNC_update]=?,[LYNC_status]=?,[ADV1_CPU]=?,[ADV1_memory]=?,[ADV1_value]=?,[ADV1_vaccine]=?,[ADV1_update]=?,[ADV1_status]=?,[ADV2_CPU]=?,[ADV2_memory]=?,[ADV2_value]=?,[ADV2_vaccine]=?,[ADV2_update]=?,[ADV2_status]=?,[WEB_value_2]=?,[DBM_value_2]=?,[DEW_value_2]=?,[MAIL_value_2]=?,[APP_value_2]=?,[FAX_value_2]=?,[ADN_value_2]=?,[VRS_value_2]=?,[FILE_value_2]=?,[DEVN_value_2]=?,[MSVM1_value_2]=?,[MSVM2_value_2]=?,[LYNC_value_2]=?,[ADV1_value_2]=?,[ADV2_value_2]=?,[WEB_disk1]=?,[WEB_disk2]=?,[WEB_disk3]=?,[WEB_disk4]=?,[DBM_disk1]=?,[DBM_disk2]=?,[DBM_disk3]=?,[DBM_disk4]=?,[DBM_disk5]=?,[DBM_disk6]=?,[DEW_disk1]=?,[DEW_disk2]=?,[MAIL_disk1]=?,[MAIL_disk2]=?,[MAIL_disk3]=?,[MAIL_disk4]=?,[APP_disk1]=?,[APP_disk2]=?,[APP_disk3]=?,[APP_disk4]=?,[FAX_disk1]=?,[FAX_disk2]=?,[FAX_disk3]=?,[FAX_disk4]=?,[ADN_disk1]=?,[ADN_disk2]=?,[ADN_disk3]=?,[ADN_disk4]=?,[VRS_disk1]=?,[VRS_disk2]=?,[VRS_disk3]=?,[VRS_disk4]=?,[FILE_disk1]=?,[FILE_disk2]=?,[FILE_disk3]=?,[FILE_disk4]=?,[DEVN_disk1]=?,[DEVN_disk2]=?,[DEVN_disk3]=?,[DEVN_disk4]=?,[DEVN_disk5]=?,[DEVN_disk6]=?,[MSVM1_disk1]=?,[MSVM1_disk2]=?,[MSVM1_disk3]=?,[MSVM1_disk4]=?,[MSVM1_disk5]=?,[MSVM1_disk6]=?,[MSVM1_disk7]=?,[MSVM1_disk8]=?,[MSVM1_disk9]=?,[MSVM1_disk10]=?,[MSVM2_disk1]=?,[MSVM2_disk2]=?,[MSVM2_disk3]=?,[MSVM2_disk4]=?,[MSVM2_disk5]=?,[MSVM2_disk6]=?,[MSVM2_disk7]=?,[MSVM2_disk8]=?,[MSVM2_disk9]=?,[MSVM2_disk10]=?,[LYNC_disk1]=?,[LYNC_disk2]=?,[LYNC_disk3]=?,[LYNC_disk4]=?,[ADV1_disk1]=?,[ADV1_disk2]=?,[ADV2_disk1]=?,[ADV2_disk2]=?,[TAX1_CPU]=?,[TAX1_memory]=?,[TAX1_value]=?,[TAX1_value_2]=?,[TAX1_vaccine]=?,[TAX1_update]=?,[TAX1_status]=?,[TAX1_disk1]=?,[TAX1_disk2]=?,[TAX2_CPU]=?,[TAX2_memory]=?,[TAX2_value]=?,[TAX2_value_2]=?,[TAX2_vaccine]=?,[TAX2_update]=?,[TAX2_status]=?,[TAX2_disk1]=?,[TAX2_disk2]=?"
					
					+",[WEB_H_CPU]=?,"
					+"[WEB_H_memory]=?,"
					+"[WEB_H_value]=?,"
					+"[WEB_H_value_2]=?,"
					+"[WEB_H_vaccine]=?,"
					+"[WEB_H_update]=?,"
					+"[WEB_H_status]=?,"
					+"[DBM_H_CPU]=?,"
					+"[DBM_H_memory]=?,"
					+"[DBM_H_value]=?,"
					+"[DBM_H_value_2]=?,"
					+"[DBM_H_vaccine]=?,"
					+"[DBM_H_update]=?,"
					+"[DBM_H_status]=?,"
					+"[MAIL_H_CPU]=?,"
					+"[MAIL_H_memory]=?,"
					+"[MAIL_H_value]=?,"
					+"[MAIL_H_value_2]=?,"
					+"[MAIL_H_vaccine]=?,"
					+"[MAIL_H_update]=?,"
					+"[MAIL_H_status]=?,"
					+"[APP_H_CPU]=?,"
					+"[APP_H_memory]=?,"
					+"[APP_H_value]=?,"
					+"[APP_H_value_2]=?,"
					+"[APP_H_vaccine]=?,"
					+"[APP_H_update]=?,"
					+"[APP_H_status]=?,"

				+"[WEB_H_disk1]=?,"
				+"[WEB_H_disk2]=?,"
				+"[DBM_H_disk1]=?,"
				+"[DBM_H_disk2]=?,"
				+"[MAIL_H_disk1]=?,"
				+"[MAIL_H_disk2]=?,"
				+"[APP_H_disk1]=?,"
				+"[APP_H_disk2]=?,"

					
+"[MAIL_H_disk3]=?,"
+"[MAIL_H_disk4]=?,"
+"[MAIL_H_disk5]=?,"
+"[MAIL_H_disk6]=?,"
+"[MAIL_H_disk7]=?,"
+"[MAIL_H_disk8]=?,"
+"[MAIL_H_disk9]=?,"
+"[MAIL_H_disk10]=?,"
+"[MAIL_H_disk11]=?,"
+"[MAIL_H_disk12]=?,"
+"[APP_H_disk3]=?,"
+"[APP_H_disk4]=?,"
+"[APP_H_disk5]=?,"
+"[APP_H_disk6]=?,"
+"[APP_H_disk7]=?,"
+"[APP_H_disk8]=?,"
+"[APP_H_disk9]=?,"
+"[APP_H_disk10]=?,"
+"[APP_H_disk11]=?,"
+"[APP_H_disk12]=?,"

					
					
					
					+"[ifany]=? WHERE [id]=?";

			statement = connection.prepareStatement(sql);
			String[] arr = {
					checktime,checker,WEB_CPU,WEB_memory,WEB_value,WEB_vaccine,WEB_update,WEB_status,DBM_CPU,DBM_memory,DBM_value,DBM_vaccine,DBM_update,DBM_DB,DBM_status,DEW_CPU,DEW_memory,DEW_value,DEW_vaccine,DEW_update,DEW_status,MAIL_CPU,MAIL_memory,MAIL_value,MAIL_vaccine,MAIL_update,MAIL_status,APP_CPU,APP_memory,APP_value,APP_vaccine,APP_update,APP_status,FAX_CPU,FAX_memory,FAX_value,FAX_vaccine,FAX_update,FAX_status,ADN_CPU,ADN_memory,ADN_value,ADN_vaccine,ADN_update,ADN_status,VRS_CPU,VRS_memory,VRS_value,VRS_vaccine,VRS_update,VRS_status,FILE_CPU,FILE_memory,FILE_value,FILE_vaccine,FILE_update,FILE_status,DEVN_CPU,DEVN_memory,DEVN_value,DEVN_vaccine,DEVN_update,DEVN_DB,DEVN_status,MSVM1_CPU,MSVM1_memory,MSVM1_value,MSVM1_vaccine,MSVM1_update,MSVM1_status,MSVM2_CPU,MSVM2_memory,MSVM2_value,MSVM2_vaccine,MSVM2_update,MSVM2_status,LYNC_CPU,LYNC_memory,LYNC_value,LYNC_vaccine,LYNC_update,LYNC_status,ADV1_CPU,ADV1_memory,ADV1_value,ADV1_vaccine,ADV1_update,ADV1_status,ADV2_CPU,ADV2_memory,ADV2_value,ADV2_vaccine,ADV2_update,ADV2_status,WEB_value_2,DBM_value_2,DEW_value_2,MAIL_value_2,APP_value_2,FAX_value_2,ADN_value_2,VRS_value_2,FILE_value_2,DEVN_value_2,MSVM1_value_2,MSVM2_value_2,LYNC_value_2,ADV1_value_2,ADV2_value_2,WEB_disk1,WEB_disk2,WEB_disk3,WEB_disk4,DBM_disk1,DBM_disk2,DBM_disk3,DBM_disk4,DBM_disk5,DBM_disk6,DEW_disk1,DEW_disk2,MAIL_disk1,MAIL_disk2,MAIL_disk3,MAIL_disk4,APP_disk1,APP_disk2,APP_disk3,APP_disk4,FAX_disk1,FAX_disk2,FAX_disk3,FAX_disk4,ADN_disk1,ADN_disk2,ADN_disk3,ADN_disk4,VRS_disk1,VRS_disk2,VRS_disk3,VRS_disk4,FILE_disk1,FILE_disk2,FILE_disk3,FILE_disk4,DEVN_disk1,DEVN_disk2,DEVN_disk3,DEVN_disk4,DEVN_disk5,DEVN_disk6,MSVM1_disk1,MSVM1_disk2,MSVM1_disk3,MSVM1_disk4,MSVM1_disk5,MSVM1_disk6,MSVM1_disk7,MSVM1_disk8,MSVM1_disk9,MSVM1_disk10,MSVM2_disk1,MSVM2_disk2,MSVM2_disk3,MSVM2_disk4,MSVM2_disk5,MSVM2_disk6,MSVM2_disk7,MSVM2_disk8,MSVM2_disk9,MSVM2_disk10,LYNC_disk1,LYNC_disk2,LYNC_disk3,LYNC_disk4,ADV1_disk1,ADV1_disk2,ADV2_disk1,ADV2_disk2,TAX1_CPU,TAX1_memory,TAX1_value,TAX1_value_2,TAX1_vaccine,TAX1_update,TAX1_status,TAX1_disk1,TAX1_disk2,TAX2_CPU,TAX2_memory,TAX2_value,TAX2_value_2,TAX2_vaccine,TAX2_update,TAX2_status,TAX2_disk1,TAX2_disk2
					,WEB_H_CPU
					,WEB_H_memory
					,WEB_H_value
					,WEB_H_value_2
					,WEB_H_vaccine
					,WEB_H_update
					,WEB_H_status
					,DBM_H_CPU
					,DBM_H_memory
					,DBM_H_value
					,DBM_H_value_2
					,DBM_H_vaccine
					,DBM_H_update
					,DBM_H_status
					,MAIL_H_CPU
					,MAIL_H_memory
					,MAIL_H_value
					,MAIL_H_value_2
					,MAIL_H_vaccine
					,MAIL_H_update
					,MAIL_H_status
					,APP_H_CPU
					,APP_H_memory
					,APP_H_value
					,APP_H_value_2
					,APP_H_vaccine
					,APP_H_update
					,APP_H_status
					
					
					,WEB_H_disk1
					,WEB_H_disk2
					,DBM_H_disk1
					,DBM_H_disk2
					,MAIL_H_disk1
					,MAIL_H_disk2
					,APP_H_disk1
					,APP_H_disk2

					,MAIL_H_disk3
					,MAIL_H_disk4
					,MAIL_H_disk5
					,MAIL_H_disk6
					,MAIL_H_disk7
					,MAIL_H_disk8
					,MAIL_H_disk9
					,MAIL_H_disk10
					,MAIL_H_disk11
					,MAIL_H_disk12
					,APP_H_disk3
					,APP_H_disk4
					,APP_H_disk5
					,APP_H_disk6
					,APP_H_disk7
					,APP_H_disk8
					,APP_H_disk9
					,APP_H_disk10
					,APP_H_disk11
					,APP_H_disk12

					,ifany
					,id
				};
			
			for(int i=0;i<arr.length;i++) statement.setString(i+1, arr[i]);
			
			//SystemWriterLog.writeLog(sql);
			GetDate.makeLog("Server Update");
			
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
