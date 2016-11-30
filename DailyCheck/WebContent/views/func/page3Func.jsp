<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "", MOBH1_CPU = "", MOBH1_memory = "", MOBH1_m_val = "",
			MOBH1_vaccine = "", MOBH1_update = "", MOBH1_status = "", MOBH1_disk1 = "", MOBH1_disk2 = "",
			MOBH1_disk3 = "", MOBH1_disk4 = "", DC2_CPU = "", DC2_memory = "", DC2_m_val = "", DC2_vaccine = "",
			DC2_update = "", DC2_status = "", DC2_disk1 = "", DC2_disk2 = "", WEB1_CPU = "", WEB1_memory = "",
			WEB1_m_val = "", WEB1_vaccine = "", WEB1_update = "", WEB1_status = "", WEB1_disk1 = "",
			WEB1_disk2 = "", DB1_CPU = "", DB1_memory = "", DB1_m_val = "", DB1_vaccine = "", DB1_update = "",
			DB1_DB = "", DB1_status = "", DB1_disk1 = "", DB1_disk2 = "", DB1_disk3 = "", DB1_disk4 = "",
			MOBH2_CPU = "", MOBH2_memory = "", MOBH2_m_val = "", MOBH2_vaccine = "", MOBH2_update = "",
			MOBH2_status = "", MOBH2_disk1 = "", MOBH2_disk2 = "", MOBH2_disk3 = "", MOBH2_disk4 = "",

	MOBH1_disk1_2 = "", MOBH1_disk2_2 = "", MOBH1_disk3_2 = "", MOBH1_disk4_2 = "", DB1_disk1_2 = "",
			DB1_disk2_2 = "", DB1_disk3_2 = "", DB1_disk4_2 = "", MOBH2_disk1_2 = "", MOBH2_disk2_2 = "",
			MOBH2_disk3_2 = "", MOBH2_disk4_2 = "",

	DC1_CPU = "", DC1_memory = "", DC1_m_val = "", DC1_vaccine = "", DC1_update = "", DC1_status = "",
			DC1_disk1 = "", DC1_disk2 = "", WEB2_CPU = "", WEB2_memory = "", WEB2_m_val = "", WEB2_vaccine = "",
			WEB2_update = "", WEB2_status = "", WEB2_disk1 = "", WEB2_disk2 = "", DB2_CPU = "", DB2_memory = "",
			DB2_m_val = "", DB2_vaccine = "", DB2_update = "", DB2_DB = "", DB2_status = "", DB2_disk1 = "",
			DB2_disk2 = "",

	MOBH1_c_val = "", DC2_c_val = "", WEB1_c_val = "", DB1_c_val = "", MOBH2_c_val = "", DC1_c_val = "",
			WEB2_c_val = "", DB2_c_val = "",

	ifany = "";

	String id = request.getParameter("id").trim();
	
	
	//SystemWriterLog.writeLog("?" + id);
	
	
	Mobileserver mobileserver = MobileserverDAO.selectById(id);

	if (mobileserver != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//SystemWriterLog.writeLog("GET!");

		checktime = mobileserver.getCheckTime();
		checker = mobileserver.getChecker();

		MOBH1_CPU = mobileserver.getMOBH1_CPU();
		MOBH1_memory = mobileserver.getMOBH1_memory();
		MOBH1_m_val = mobileserver.getMOBH1_m_val();
		MOBH1_vaccine = mobileserver.getMOBH1_vaccine();
		MOBH1_update = mobileserver.getMOBH1_update();
		MOBH1_status = mobileserver.getMOBH1_status();
		MOBH1_disk1 = mobileserver.getMOBH1_disk1();
		MOBH1_disk2 = mobileserver.getMOBH1_disk2();
		MOBH1_disk3 = mobileserver.getMOBH1_disk3();
		MOBH1_disk4 = mobileserver.getMOBH1_disk4();
		DC2_CPU = mobileserver.getDC2_CPU();
		DC2_memory = mobileserver.getDC2_memory();
		DC2_m_val = mobileserver.getDC2_m_val();
		DC2_vaccine = mobileserver.getDC2_vaccine();
		DC2_update = mobileserver.getDC2_update();
		DC2_status = mobileserver.getDC2_status();
		DC2_disk1 = mobileserver.getDC2_disk1();
		DC2_disk2 = mobileserver.getDC2_disk2();
		WEB1_CPU = mobileserver.getWEB1_CPU();
		WEB1_memory = mobileserver.getWEB1_memory();
		WEB1_m_val = mobileserver.getWEB1_m_val();
		WEB1_vaccine = mobileserver.getWEB1_vaccine();
		WEB1_update = mobileserver.getWEB1_update();
		WEB1_status = mobileserver.getWEB1_status();
		WEB1_disk1 = mobileserver.getWEB1_disk1();
		WEB1_disk2 = mobileserver.getWEB1_disk2();
		DB1_CPU = mobileserver.getDB1_CPU();
		DB1_memory = mobileserver.getDB1_memory();
		DB1_m_val = mobileserver.getDB1_m_val();
		DB1_vaccine = mobileserver.getDB1_vaccine();
		DB1_update = mobileserver.getDB1_update();
		DB1_DB = mobileserver.getDB1_DB();
		DB1_status = mobileserver.getDB1_status();
		DB1_disk1 = mobileserver.getDB1_disk1();
		DB1_disk2 = mobileserver.getDB1_disk2();
		DB1_disk3 = mobileserver.getDB1_disk3();
		DB1_disk4 = mobileserver.getDB1_disk4();
		MOBH2_CPU = mobileserver.getMOBH2_CPU();
		MOBH2_memory = mobileserver.getMOBH2_memory();
		MOBH2_m_val = mobileserver.getMOBH2_m_val();
		MOBH2_vaccine = mobileserver.getMOBH2_vaccine();
		MOBH2_update = mobileserver.getMOBH2_update();
		MOBH2_status = mobileserver.getMOBH2_status();
		MOBH2_disk1 = mobileserver.getMOBH2_disk1();
		MOBH2_disk2 = mobileserver.getMOBH2_disk2();
		MOBH2_disk3 = mobileserver.getMOBH2_disk3();
		MOBH2_disk4 = mobileserver.getMOBH2_disk4();
		DC1_CPU = mobileserver.getDC1_CPU();
		DC1_memory = mobileserver.getDC1_memory();
		DC1_m_val = mobileserver.getDC1_m_val();
		DC1_vaccine = mobileserver.getDC1_vaccine();
		DC1_update = mobileserver.getDC1_update();
		DC1_status = mobileserver.getDC1_status();
		DC1_disk1 = mobileserver.getDC1_disk1();
		DC1_disk2 = mobileserver.getDC1_disk2();
		WEB2_CPU = mobileserver.getWEB2_CPU();
		WEB2_memory = mobileserver.getWEB2_memory();
		WEB2_m_val = mobileserver.getWEB2_m_val();
		WEB2_vaccine = mobileserver.getWEB2_vaccine();
		WEB2_update = mobileserver.getWEB2_update();
		WEB2_status = mobileserver.getWEB2_status();
		WEB2_disk1 = mobileserver.getWEB2_disk1();
		WEB2_disk2 = mobileserver.getWEB2_disk2();
		DB2_CPU = mobileserver.getDB2_CPU();
		DB2_memory = mobileserver.getDB2_memory();
		DB2_m_val = mobileserver.getDB2_m_val();
		DB2_vaccine = mobileserver.getDB2_vaccine();
		DB2_update = mobileserver.getDB2_update();
		DB2_DB = mobileserver.getDB2_DB();
		DB2_status = mobileserver.getDB2_status();
		DB2_disk1 = mobileserver.getDB2_disk1();
		DB2_disk2 = mobileserver.getDB2_disk2();
		ifany = mobileserver.getIfany();

		MOBH1_disk1_2 = mobileserver.getMOBH1_disk1_2();
		MOBH1_disk2_2 = mobileserver.getMOBH1_disk2_2();
		MOBH1_disk3_2 = mobileserver.getMOBH1_disk3_2();
		MOBH1_disk4_2 = mobileserver.getMOBH1_disk4_2();
		DB1_disk1_2 = mobileserver.getDB1_disk1_2();
		DB1_disk2_2 = mobileserver.getDB1_disk2_2();
		DB1_disk3_2 = mobileserver.getDB1_disk3_2();
		DB1_disk4_2 = mobileserver.getDB1_disk4_2();
		MOBH2_disk1_2 = mobileserver.getMOBH2_disk1_2();
		MOBH2_disk2_2 = mobileserver.getMOBH2_disk2_2();
		MOBH2_disk3_2 = mobileserver.getMOBH2_disk3_2();
		MOBH2_disk4_2 = mobileserver.getMOBH2_disk4_2();
		
		MOBH1_c_val = mobileserver.getMOBH1_c_val();
		DC2_c_val = mobileserver.getDC2_c_val();
		WEB1_c_val = mobileserver.getWEB1_c_val();
		DB1_c_val = mobileserver.getDB1_c_val();
		MOBH2_c_val = mobileserver.getMOBH2_c_val();
		DC1_c_val = mobileserver.getDC1_c_val();
		WEB2_c_val = mobileserver.getWEB2_c_val();
		DB2_c_val = mobileserver.getDB2_c_val();


	}
	//======================================================================================

	//PrintWriter out= response.getWriter();  
	JSONObject json = new JSONObject();
	json.put("checktime", checktime);
	//SystemWriterLog.writeLog("check: " + checktime);
	json.put("checker", checker);

	json.put("MOBH1_CPU", MOBH1_CPU);
	json.put("MOBH1_memory", MOBH1_memory);
	json.put("MOBH1_m_val", MOBH1_m_val);
	json.put("MOBH1_vaccine", MOBH1_vaccine);
	json.put("MOBH1_update", MOBH1_update);
	json.put("MOBH1_status", MOBH1_status);
	json.put("MOBH1_disk1", MOBH1_disk1);
	json.put("MOBH1_disk2", MOBH1_disk2);
	json.put("MOBH1_disk3", MOBH1_disk3);
	json.put("MOBH1_disk4", MOBH1_disk4);
	json.put("DC2_CPU", DC2_CPU);
	json.put("DC2_memory", DC2_memory);
	json.put("DC2_m_val", DC2_m_val);
	json.put("DC2_vaccine", DC2_vaccine);
	json.put("DC2_update", DC2_update);
	json.put("DC2_status", DC2_status);
	json.put("DC2_disk1", DC2_disk1);
	json.put("DC2_disk2", DC2_disk2);
	json.put("WEB1_CPU", WEB1_CPU);
	json.put("WEB1_memory", WEB1_memory);
	json.put("WEB1_m_val", WEB1_m_val);
	json.put("WEB1_vaccine", WEB1_vaccine);
	json.put("WEB1_update", WEB1_update);
	json.put("WEB1_status", WEB1_status);
	json.put("WEB1_disk1", WEB1_disk1);
	json.put("WEB1_disk2", WEB1_disk2);
	json.put("DB1_CPU", DB1_CPU);
	json.put("DB1_memory", DB1_memory);
	json.put("DB1_m_val", DB1_m_val);
	json.put("DB1_vaccine", DB1_vaccine);
	json.put("DB1_update", DB1_update);
	json.put("DB1_DB", DB1_DB);
	json.put("DB1_status", DB1_status);
	json.put("DB1_disk1", DB1_disk1);
	json.put("DB1_disk2", DB1_disk2);
	json.put("DB1_disk3", DB1_disk3);
	json.put("DB1_disk4", DB1_disk4);
	json.put("MOBH2_CPU", MOBH2_CPU);
	json.put("MOBH2_memory", MOBH2_memory);
	json.put("MOBH2_m_val", MOBH2_m_val);
	json.put("MOBH2_vaccine", MOBH2_vaccine);
	json.put("MOBH2_update", MOBH2_update);
	json.put("MOBH2_status", MOBH2_status);
	json.put("MOBH2_disk1", MOBH2_disk1);
	json.put("MOBH2_disk2", MOBH2_disk2);
	json.put("MOBH2_disk3", MOBH2_disk3);
	json.put("MOBH2_disk4", MOBH2_disk4);
	json.put("DC1_CPU", DC1_CPU);
	json.put("DC1_memory", DC1_memory);
	json.put("DC1_m_val", DC1_m_val);
	json.put("DC1_vaccine", DC1_vaccine);
	json.put("DC1_update", DC1_update);
	json.put("DC1_status", DC1_status);
	json.put("DC1_disk1", DC1_disk1);
	json.put("DC1_disk2", DC1_disk2);
	json.put("WEB2_CPU", WEB2_CPU);
	json.put("WEB2_memory", WEB2_memory);
	json.put("WEB2_m_val", WEB2_m_val);
	json.put("WEB2_vaccine", WEB2_vaccine);
	json.put("WEB2_update", WEB2_update);
	json.put("WEB2_status", WEB2_status);
	json.put("WEB2_disk1", WEB2_disk1);
	json.put("WEB2_disk2", WEB2_disk2);
	json.put("DB2_CPU", DB2_CPU);
	json.put("DB2_memory", DB2_memory);
	json.put("DB2_m_val", DB2_m_val);
	json.put("DB2_vaccine", DB2_vaccine);
	json.put("DB2_update", DB2_update);
	json.put("DB2_DB", DB2_DB);
	json.put("DB2_status", DB2_status);
	json.put("DB2_disk1", DB2_disk1);
	json.put("DB2_disk2", DB2_disk2);

	json.put("MOBH1_disk1_2", MOBH1_disk1_2);
	json.put("MOBH1_disk2_2", MOBH1_disk2_2);
	json.put("MOBH1_disk3_2", MOBH1_disk3_2);
	json.put("MOBH1_disk4_2", MOBH1_disk4_2);
	json.put("DB1_disk1_2", DB1_disk1_2);
	json.put("DB1_disk2_2", DB1_disk2_2);
	json.put("DB1_disk3_2", DB1_disk3_2);
	json.put("DB1_disk4_2", DB1_disk4_2);
	json.put("MOBH2_disk1_2", MOBH2_disk1_2);
	json.put("MOBH2_disk2_2", MOBH2_disk2_2);
	json.put("MOBH2_disk3_2", MOBH2_disk3_2);
	json.put("MOBH2_disk4_2", MOBH2_disk4_2);
	
	json.put("MOBH1_c_val", MOBH1_c_val);
	json.put("DC2_c_val", DC2_c_val);
	json.put("WEB1_c_val", WEB1_c_val);
	json.put("DB1_c_val", DB1_c_val);
	json.put("MOBH2_c_val", MOBH2_c_val);
	json.put("DC1_c_val", DC1_c_val);
	json.put("WEB2_c_val", WEB2_c_val);
	json.put("DB2_c_val", DB2_c_val);


	json.put("ifany", ifany);

	out.print(json);
	if (request.getMethod().equals("POST")) {
		//SystemWriterLog.writeLog("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");

		MOBH1_CPU = param.getString("MOBH1_CPU", "");
		MOBH1_memory = param.getString("MOBH1_memory", "");
		MOBH1_m_val = param.getString("MOBH1_m_val", "");
		MOBH1_vaccine = param.getString("MOBH1_vaccine", "");
		MOBH1_update = param.getString("MOBH1_update", "");
		MOBH1_status = param.getString("MOBH1_status", "");
		MOBH1_disk1 = param.getString("MOBH1_disk1", "");
		MOBH1_disk2 = param.getString("MOBH1_disk2", "");
		MOBH1_disk3 = param.getString("MOBH1_disk3", "");
		MOBH1_disk4 = param.getString("MOBH1_disk4", "");
		DC2_CPU = param.getString("DC2_CPU", "");
		DC2_memory = param.getString("DC2_memory", "");
		DC2_m_val = param.getString("DC2_m_val", "");
		DC2_vaccine = param.getString("DC2_vaccine", "");
		DC2_update = param.getString("DC2_update", "");
		DC2_status = param.getString("DC2_status", "");
		DC2_disk1 = param.getString("DC2_disk1", "");
		DC2_disk2 = param.getString("DC2_disk2", "");
		WEB1_CPU = param.getString("WEB1_CPU", "");
		WEB1_memory = param.getString("WEB1_memory", "");
		WEB1_m_val = param.getString("WEB1_m_val", "");
		WEB1_vaccine = param.getString("WEB1_vaccine", "");
		WEB1_update = param.getString("WEB1_update", "");
		WEB1_status = param.getString("WEB1_status", "");
		WEB1_disk1 = param.getString("WEB1_disk1", "");
		WEB1_disk2 = param.getString("WEB1_disk2", "");
		DB1_CPU = param.getString("DB1_CPU", "");
		DB1_memory = param.getString("DB1_memory", "");
		DB1_m_val = param.getString("DB1_m_val", "");
		DB1_vaccine = param.getString("DB1_vaccine", "");
		DB1_update = param.getString("DB1_update", "");
		DB1_DB = param.getString("DB1_DB", "");
		DB1_status = param.getString("DB1_status", "");
		DB1_disk1 = param.getString("DB1_disk1", "");
		DB1_disk2 = param.getString("DB1_disk2", "");
		DB1_disk3 = param.getString("DB1_disk3", "");
		DB1_disk4 = param.getString("DB1_disk4", "");
		MOBH2_CPU = param.getString("MOBH2_CPU", "");
		MOBH2_memory = param.getString("MOBH2_memory", "");
		MOBH2_m_val = param.getString("MOBH2_m_val", "");
		MOBH2_vaccine = param.getString("MOBH2_vaccine", "");
		MOBH2_update = param.getString("MOBH2_update", "");
		MOBH2_status = param.getString("MOBH2_status", "");
		MOBH2_disk1 = param.getString("MOBH2_disk1", "");
		MOBH2_disk2 = param.getString("MOBH2_disk2", "");
		MOBH2_disk3 = param.getString("MOBH2_disk3", "");
		MOBH2_disk4 = param.getString("MOBH2_disk4", "");
		DC1_CPU = param.getString("DC1_CPU", "");
		DC1_memory = param.getString("DC1_memory", "");
		DC1_m_val = param.getString("DC1_m_val", "");
		DC1_vaccine = param.getString("DC1_vaccine", "");
		DC1_update = param.getString("DC1_update", "");
		DC1_status = param.getString("DC1_status", "");
		DC1_disk1 = param.getString("DC1_disk1", "");
		DC1_disk2 = param.getString("DC1_disk2", "");
		WEB2_CPU = param.getString("WEB2_CPU", "");
		WEB2_memory = param.getString("WEB2_memory", "");
		WEB2_m_val = param.getString("WEB2_m_val", "");
		WEB2_vaccine = param.getString("WEB2_vaccine", "");
		WEB2_update = param.getString("WEB2_update", "");
		WEB2_status = param.getString("WEB2_status", "");
		WEB2_disk1 = param.getString("WEB2_disk1", "");
		WEB2_disk2 = param.getString("WEB2_disk2", "");
		DB2_CPU = param.getString("DB2_CPU", "");
		DB2_memory = param.getString("DB2_memory", "");
		DB2_m_val = param.getString("DB2_m_val", "");
		DB2_vaccine = param.getString("DB2_vaccine", "");
		DB2_update = param.getString("DB2_update", "");
		DB2_DB = param.getString("DB2_DB", "");
		DB2_status = param.getString("DB2_status", "");
		DB2_disk1 = param.getString("DB2_disk1", "");
		DB2_disk2 = param.getString("DB2_disk2", "");

		MOBH1_disk1_2 = param.getString("MOBH1_disk1_2", "");
		MOBH1_disk2_2 = param.getString("MOBH1_disk2_2", "");
		MOBH1_disk3_2 = param.getString("MOBH1_disk3_2", "");
		MOBH1_disk4_2 = param.getString("MOBH1_disk4_2", "");
		DB1_disk1_2 = param.getString("DB1_disk1_2", "");
		DB1_disk2_2 = param.getString("DB1_disk2_2", "");
		DB1_disk3_2 = param.getString("DB1_disk3_2", "");
		DB1_disk4_2 = param.getString("DB1_disk4_2", "");
		MOBH2_disk1_2 = param.getString("MOBH2_disk1_2", "");
		MOBH2_disk2_2 = param.getString("MOBH2_disk2_2", "");
		MOBH2_disk3_2 = param.getString("MOBH2_disk3_2", "");
		MOBH2_disk4_2 = param.getString("MOBH2_disk4_2", "");
		
		MOBH1_c_val = param.getString("MOBH1_c_val", "");
		DC2_c_val = param.getString("DC2_c_val", "");
		WEB1_c_val = param.getString("WEB1_c_val", "");
		DB1_c_val = param.getString("DB1_c_val", "");
		MOBH2_c_val = param.getString("MOBH2_c_val", "");
		DC1_c_val = param.getString("DC1_c_val", "");
		WEB2_c_val = param.getString("WEB2_c_val", "");
		DB2_c_val = param.getString("DB2_c_val", "");

		ifany = param.getString("ifany", "");

		if (mobileserver == null) {
			MobileserverDAO.insertInfo(id, checktime, checker,

			MOBH1_CPU, MOBH1_memory, MOBH1_m_val, MOBH1_vaccine, MOBH1_update, MOBH1_status, MOBH1_disk1,
					MOBH1_disk2, MOBH1_disk3, MOBH1_disk4, DC2_CPU, DC2_memory, DC2_m_val, DC2_vaccine,
					DC2_update, DC2_status, DC2_disk1, DC2_disk2, WEB1_CPU, WEB1_memory, WEB1_m_val,
					WEB1_vaccine, WEB1_update, WEB1_status, WEB1_disk1, WEB1_disk2, DB1_CPU, DB1_memory,
					DB1_m_val, DB1_vaccine, DB1_update, DB1_DB, DB1_status, DB1_disk1, DB1_disk2, DB1_disk3,
					DB1_disk4, MOBH2_CPU, MOBH2_memory, MOBH2_m_val, MOBH2_vaccine, MOBH2_update, MOBH2_status,
					MOBH2_disk1, MOBH2_disk2, MOBH2_disk3, MOBH2_disk4, DC1_CPU, DC1_memory, DC1_m_val,
					DC1_vaccine, DC1_update, DC1_status, DC1_disk1, DC1_disk2, WEB2_CPU, WEB2_memory,
					WEB2_m_val, WEB2_vaccine, WEB2_update, WEB2_status, WEB2_disk1, WEB2_disk2, DB2_CPU,
					DB2_memory, DB2_m_val, DB2_vaccine, DB2_update, DB2_DB, DB2_status, DB2_disk1, DB2_disk2,
					MOBH1_disk1_2, MOBH1_disk2_2, MOBH1_disk3_2, MOBH1_disk4_2, DB1_disk1_2, DB1_disk2_2,
					DB1_disk3_2, DB1_disk4_2, MOBH2_disk1_2, MOBH2_disk2_2, MOBH2_disk3_2, MOBH2_disk4_2, 
					MOBH1_c_val,
					DC2_c_val,
					WEB1_c_val,
					DB1_c_val,
					MOBH2_c_val,
					DC1_c_val,
					WEB2_c_val,
					DB2_c_val,

					ifany

			);
			//SystemWriterLog.writeLog("인서트!");
		} else {
			//update	
			MobileserverDAO.updateInfo(id, checktime, checker,

			MOBH1_CPU, MOBH1_memory, MOBH1_m_val, MOBH1_vaccine, MOBH1_update, MOBH1_status, MOBH1_disk1,
					MOBH1_disk2, MOBH1_disk3, MOBH1_disk4, DC2_CPU, DC2_memory, DC2_m_val, DC2_vaccine,
					DC2_update, DC2_status, DC2_disk1, DC2_disk2, WEB1_CPU, WEB1_memory, WEB1_m_val,
					WEB1_vaccine, WEB1_update, WEB1_status, WEB1_disk1, WEB1_disk2, DB1_CPU, DB1_memory,
					DB1_m_val, DB1_vaccine, DB1_update, DB1_DB, DB1_status, DB1_disk1, DB1_disk2, DB1_disk3,
					DB1_disk4, MOBH2_CPU, MOBH2_memory, MOBH2_m_val, MOBH2_vaccine, MOBH2_update, MOBH2_status,
					MOBH2_disk1, MOBH2_disk2, MOBH2_disk3, MOBH2_disk4, DC1_CPU, DC1_memory, DC1_m_val,
					DC1_vaccine, DC1_update, DC1_status, DC1_disk1, DC1_disk2, WEB2_CPU, WEB2_memory,
					WEB2_m_val, WEB2_vaccine, WEB2_update, WEB2_status, WEB2_disk1, WEB2_disk2, DB2_CPU,
					DB2_memory, DB2_m_val, DB2_vaccine, DB2_update, DB2_DB, DB2_status, DB2_disk1, DB2_disk2,
					MOBH1_disk1_2, MOBH1_disk2_2, MOBH1_disk3_2, MOBH1_disk4_2, DB1_disk1_2, DB1_disk2_2,
					DB1_disk3_2, DB1_disk4_2, MOBH2_disk1_2, MOBH2_disk2_2, MOBH2_disk3_2, MOBH2_disk4_2,
					MOBH1_c_val,
					DC2_c_val,
					WEB1_c_val,
					DB1_c_val,
					MOBH2_c_val,
					DC1_c_val,
					WEB2_c_val,
					DB2_c_val,
					ifany);

			//SystemWriterLog.writeLog("업데이트!");
		}
	}
%>