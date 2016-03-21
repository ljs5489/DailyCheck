<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "",

	WEB_CPU = "", WEB_memory = "", WEB_value = "", WEB_vaccine = "", WEB_update = "", WEB_status = "",
			DBM_CPU = "", DBM_memory = "", DBM_value = "", DBM_vaccine = "", DBM_update = "", DBM_DB = "",
			DBM_status = "", DEW_CPU = "", DEW_memory = "", DEW_value = "", DEW_vaccine = "", DEW_update = "",
			DEW_status = "", MAIL_CPU = "", MAIL_memory = "", MAIL_value = "", MAIL_vaccine = "",
			MAIL_update = "", MAIL_status = "", APP_CPU = "", APP_memory = "", APP_value = "", APP_vaccine = "",
			APP_update = "", APP_status = "", FAX_CPU = "", FAX_memory = "", FAX_value = "", FAX_vaccine = "",
			FAX_update = "", FAX_status = "", ADN_CPU = "", ADN_memory = "", ADN_value = "", ADN_vaccine = "",
			ADN_update = "", ADN_status = "", VRS_CPU = "", VRS_memory = "", VRS_value = "", VRS_vaccine = "",
			VRS_update = "", VRS_status = "", FILE_CPU = "", FILE_memory = "", FILE_value = "",
			FILE_vaccine = "", FILE_update = "", FILE_status = "", DEVN_CPU = "", DEVN_memory = "",
			DEVN_value = "", DEVN_vaccine = "", DEVN_update = "", DEVN_DB = "", DEVN_status = "",
			MSVM1_CPU = "", MSVM1_memory = "", MSVM1_value = "", MSVM1_vaccine = "", MSVM1_update = "",
			MSVM1_status = "", MSVM2_CPU = "", MSVM2_memory = "", MSVM2_value = "", MSVM2_vaccine = "",
			MSVM2_update = "", MSVM2_status = "", LYNC_CPU = "", LYNC_memory = "", LYNC_value = "",
			LYNC_vaccine = "", LYNC_update = "", LYNC_status = "", ADV1_CPU = "", ADV1_memory = "",
			ADV1_value = "", ADV1_vaccine = "", ADV1_update = "", ADV1_status = "", ADV2_CPU = "",
			ADV2_memory = "", ADV2_value = "", ADV2_vaccine = "", ADV2_update = "", ADV2_status = "",

	WEB_value_2 = "", DBM_value_2 = "", DEW_value_2 = "", MAIL_value_2 = "", APP_value_2 = "", FAX_value_2 = "",
			ADN_value_2 = "", VRS_value_2 = "", FILE_value_2 = "", DEVN_value_2 = "", MSVM1_value_2 = "",
			MSVM2_value_2 = "", LYNC_value_2 = "", ADV1_value_2 = "", ADV2_value_2 = "", WEB_disk1 = "",
			WEB_disk2 = "", WEB_disk3 = "", WEB_disk4 = "", DBM_disk1 = "", DBM_disk2 = "", DBM_disk3 = "",
			DBM_disk4 = "", DEW_disk1 = "", DEW_disk2 = "", MAIL_disk1 = "", MAIL_disk2 = "", MAIL_disk3 = "",
			MAIL_disk4 = "", APP_disk1 = "", APP_disk2 = "", APP_disk3 = "", APP_disk4 = "", FAX_disk1 = "",
			FAX_disk2 = "", ADN_disk1 = "", ADN_disk2 = "", ADN_disk3 = "", ADN_disk4 = "", VRS_disk1 = "",
			VRS_disk2 = "", VRS_disk3 = "", VRS_disk4 = "", FILE_disk1 = "", FILE_disk2 = "", FILE_disk3 = "",
			FILE_disk4 = "", DEVN_disk1 = "", DEVN_disk2 = "", DEVN_disk3 = "", DEVN_disk4 = "",
			MSVM1_disk1 = "", MSVM1_disk2 = "", MSVM1_disk3 = "", MSVM1_disk4 = "", MSVM1_disk5 = "",
			MSVM1_disk6 = "", MSVM1_disk7 = "", MSVM1_disk8 = "", MSVM1_disk9 = "", MSVM1_disk10 = "",
			MSVM2_disk1 = "", MSVM2_disk2 = "", MSVM2_disk3 = "", MSVM2_disk4 = "", MSVM2_disk5 = "",
			MSVM2_disk6 = "", MSVM2_disk7 = "", MSVM2_disk8 = "", MSVM2_disk9 = "", MSVM2_disk10 = "",
			LYNC_disk1 = "", LYNC_disk2 = "", LYNC_disk3 = "", LYNC_disk4 = "", ADV1_disk1 = "",
			ADV1_disk2 = "", ADV2_disk1 = "", ADV2_disk2 = "",

	ifany = "";

	String id = request.getParameter("id").trim();
	Server server = ServerDAO.selectById(id);
	//System.out.println("?" + id);

	if (server != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//System.out.println("GET!");

		checktime = server.getCheckTime();
		checker = server.getChecker();

		WEB_CPU = server.getWEB_CPU();
		WEB_memory = server.getWEB_memory();
		WEB_value = server.getWEB_value();
		WEB_vaccine = server.getWEB_vaccine();
		WEB_update = server.getWEB_update();
		WEB_status = server.getWEB_status();
		DBM_CPU = server.getDBM_CPU();
		DBM_memory = server.getDBM_memory();
		DBM_value = server.getDBM_value();
		DBM_vaccine = server.getDBM_vaccine();
		DBM_update = server.getDBM_update();
		DBM_DB = server.getDBM_DB();
		DBM_status = server.getDBM_status();
		DEW_CPU = server.getDEW_CPU();
		DEW_memory = server.getDEW_memory();
		DEW_value = server.getDEW_value();
		DEW_vaccine = server.getDEW_vaccine();
		DEW_update = server.getDEW_update();
		DEW_status = server.getDEW_status();
		MAIL_CPU = server.getMAIL_CPU();
		MAIL_memory = server.getMAIL_memory();
		MAIL_value = server.getMAIL_value();
		MAIL_vaccine = server.getMAIL_vaccine();
		MAIL_update = server.getMAIL_update();
		MAIL_status = server.getMAIL_status();
		APP_CPU = server.getAPP_CPU();
		APP_memory = server.getAPP_memory();
		APP_value = server.getAPP_value();
		APP_vaccine = server.getAPP_vaccine();
		APP_update = server.getAPP_update();
		APP_status = server.getAPP_status();
		FAX_CPU = server.getFAX_CPU();
		FAX_memory = server.getFAX_memory();
		FAX_value = server.getFAX_value();
		FAX_vaccine = server.getFAX_vaccine();
		FAX_update = server.getFAX_update();
		FAX_status = server.getFAX_status();
		ADN_CPU = server.getADN_CPU();
		ADN_memory = server.getADN_memory();
		ADN_value = server.getADN_value();
		ADN_vaccine = server.getADN_vaccine();
		ADN_update = server.getADN_update();
		ADN_status = server.getADN_status();
		VRS_CPU = server.getVRS_CPU();
		VRS_memory = server.getVRS_memory();
		VRS_value = server.getVRS_value();
		VRS_vaccine = server.getVRS_vaccine();
		VRS_update = server.getVRS_update();
		VRS_status = server.getVRS_status();
		FILE_CPU = server.getFILE_CPU();
		FILE_memory = server.getFILE_memory();
		FILE_value = server.getFILE_value();
		FILE_vaccine = server.getFILE_vaccine();
		FILE_update = server.getFILE_update();
		FILE_status = server.getFILE_status();
		DEVN_CPU = server.getDEVN_CPU();
		DEVN_memory = server.getDEVN_memory();
		DEVN_value = server.getDEVN_value();
		DEVN_vaccine = server.getDEVN_vaccine();
		DEVN_update = server.getDEVN_update();
		DEVN_DB = server.getDEVN_DB();
		DEVN_status = server.getDEVN_status();
		MSVM1_CPU = server.getMSVM1_CPU();
		MSVM1_memory = server.getMSVM1_memory();
		MSVM1_value = server.getMSVM1_value();
		MSVM1_vaccine = server.getMSVM1_vaccine();
		MSVM1_update = server.getMSVM1_update();
		MSVM1_status = server.getMSVM1_status();
		MSVM2_CPU = server.getMSVM2_CPU();
		MSVM2_memory = server.getMSVM2_memory();
		MSVM2_value = server.getMSVM2_value();
		MSVM2_vaccine = server.getMSVM2_vaccine();
		MSVM2_update = server.getMSVM2_update();
		MSVM2_status = server.getMSVM2_status();
		LYNC_CPU = server.getLYNC_CPU();
		LYNC_memory = server.getLYNC_memory();
		LYNC_value = server.getLYNC_value();
		LYNC_vaccine = server.getLYNC_vaccine();
		LYNC_update = server.getLYNC_update();
		LYNC_status = server.getLYNC_status();
		ADV1_CPU = server.getADV1_CPU();
		ADV1_memory = server.getADV1_memory();
		ADV1_value = server.getADV1_value();
		ADV1_vaccine = server.getADV1_vaccine();
		ADV1_update = server.getADV1_update();
		ADV1_status = server.getADV1_status();
		ADV2_CPU = server.getADV2_CPU();
		ADV2_memory = server.getADV2_memory();
		ADV2_value = server.getADV2_value();
		ADV2_vaccine = server.getADV2_vaccine();
		ADV2_update = server.getADV2_update();
		ADV2_status = server.getADV2_status();

		WEB_value_2 = server.getWEB_value_2();
		DBM_value_2 = server.getDBM_value_2();
		DEW_value_2 = server.getDEW_value_2();
		MAIL_value_2 = server.getMAIL_value_2();
		APP_value_2 = server.getAPP_value_2();
		FAX_value_2 = server.getFAX_value_2();
		ADN_value_2 = server.getADN_value_2();
		VRS_value_2 = server.getVRS_value_2();
		FILE_value_2 = server.getFILE_value_2();
		DEVN_value_2 = server.getDEVN_value_2();
		MSVM1_value_2 = server.getMSVM1_value_2();
		MSVM2_value_2 = server.getMSVM2_value_2();
		LYNC_value_2 = server.getLYNC_value_2();
		ADV1_value_2 = server.getADV1_value_2();
		ADV2_value_2 = server.getADV2_value_2();
		WEB_disk1 = server.getWEB_disk1();
		WEB_disk2 = server.getWEB_disk2();
		WEB_disk3 = server.getWEB_disk3();
		WEB_disk4 = server.getWEB_disk4();
		DBM_disk1 = server.getDBM_disk1();
		DBM_disk2 = server.getDBM_disk2();
		DBM_disk3 = server.getDBM_disk3();
		DBM_disk4 = server.getDBM_disk4();
		DEW_disk1 = server.getDEW_disk1();
		DEW_disk2 = server.getDEW_disk2();
		MAIL_disk1 = server.getMAIL_disk1();
		MAIL_disk2 = server.getMAIL_disk2();
		MAIL_disk3 = server.getMAIL_disk3();
		MAIL_disk4 = server.getMAIL_disk4();
		APP_disk1 = server.getAPP_disk1();
		APP_disk2 = server.getAPP_disk2();
		APP_disk3 = server.getAPP_disk3();
		APP_disk4 = server.getAPP_disk4();
		FAX_disk1 = server.getFAX_disk1();
		FAX_disk2 = server.getFAX_disk2();
		ADN_disk1 = server.getADN_disk1();
		ADN_disk2 = server.getADN_disk2();
		ADN_disk3 = server.getADN_disk3();
		ADN_disk4 = server.getADN_disk4();
		VRS_disk1 = server.getVRS_disk1();
		VRS_disk2 = server.getVRS_disk2();
		VRS_disk3 = server.getVRS_disk3();
		VRS_disk4 = server.getVRS_disk4();
		FILE_disk1 = server.getFILE_disk1();
		FILE_disk2 = server.getFILE_disk2();
		FILE_disk3 = server.getFILE_disk3();
		FILE_disk4 = server.getFILE_disk4();
		DEVN_disk1 = server.getDEVN_disk1();
		DEVN_disk2 = server.getDEVN_disk2();
		DEVN_disk3 = server.getDEVN_disk3();
		DEVN_disk4 = server.getDEVN_disk4();
		MSVM1_disk1 = server.getMSVM1_disk1();
		MSVM1_disk2 = server.getMSVM1_disk2();
		MSVM1_disk3 = server.getMSVM1_disk3();
		MSVM1_disk4 = server.getMSVM1_disk4();
		MSVM1_disk5 = server.getMSVM1_disk5();
		MSVM1_disk6 = server.getMSVM1_disk6();
		MSVM1_disk7 = server.getMSVM1_disk7();
		MSVM1_disk8 = server.getMSVM1_disk8();
		MSVM1_disk9 = server.getMSVM1_disk9();
		MSVM1_disk10 = server.getMSVM1_disk10();
		MSVM2_disk1 = server.getMSVM2_disk1();
		MSVM2_disk2 = server.getMSVM2_disk2();
		MSVM2_disk3 = server.getMSVM2_disk3();
		MSVM2_disk4 = server.getMSVM2_disk4();
		MSVM2_disk5 = server.getMSVM2_disk5();
		MSVM2_disk6 = server.getMSVM2_disk6();
		MSVM2_disk7 = server.getMSVM2_disk7();
		MSVM2_disk8 = server.getMSVM2_disk8();
		MSVM2_disk9 = server.getMSVM2_disk9();
		MSVM2_disk10 = server.getMSVM2_disk10();
		LYNC_disk1 = server.getLYNC_disk1();
		LYNC_disk2 = server.getLYNC_disk2();
		LYNC_disk3 = server.getLYNC_disk3();
		LYNC_disk4 = server.getLYNC_disk4();
		ADV1_disk1 = server.getADV1_disk1();
		ADV1_disk2 = server.getADV1_disk2();
		ADV2_disk1 = server.getADV2_disk1();
		ADV2_disk2 = server.getADV2_disk2();

		ifany = server.getIfany();

	}
	//======================================================================================

	//PrintWriter out= response.getWriter();  
	JSONObject json = new JSONObject();

	json.put("checktime", checktime);
	//System.out.println("check: " + checktime);
	json.put("checker", checker);

	json.put("WEB_CPU", WEB_CPU);
	json.put("WEB_memory", WEB_memory);
	json.put("WEB_value", WEB_value);
	json.put("WEB_vaccine", WEB_vaccine);
	json.put("WEB_update", WEB_update);
	json.put("WEB_status", WEB_status);
	json.put("DBM_CPU", DBM_CPU);
	json.put("DBM_memory", DBM_memory);
	json.put("DBM_value", DBM_value);
	json.put("DBM_vaccine", DBM_vaccine);
	json.put("DBM_update", DBM_update);
	json.put("DBM_DB", DBM_DB);
	json.put("DBM_status", DBM_status);
	json.put("DEW_CPU", DEW_CPU);
	json.put("DEW_memory", DEW_memory);
	json.put("DEW_value", DEW_value);
	json.put("DEW_vaccine", DEW_vaccine);
	json.put("DEW_update", DEW_update);
	json.put("DEW_status", DEW_status);
	json.put("MAIL_CPU", MAIL_CPU);
	json.put("MAIL_memory", MAIL_memory);
	json.put("MAIL_value", MAIL_value);
	json.put("MAIL_vaccine", MAIL_vaccine);
	json.put("MAIL_update", MAIL_update);
	json.put("MAIL_status", MAIL_status);
	json.put("APP_CPU", APP_CPU);
	json.put("APP_memory", APP_memory);
	json.put("APP_value", APP_value);
	json.put("APP_vaccine", APP_vaccine);
	json.put("APP_update", APP_update);
	json.put("APP_status", APP_status);
	json.put("FAX_CPU", FAX_CPU);
	json.put("FAX_memory", FAX_memory);
	json.put("FAX_value", FAX_value);
	json.put("FAX_vaccine", FAX_vaccine);
	json.put("FAX_update", FAX_update);
	json.put("FAX_status", FAX_status);
	json.put("ADN_CPU", ADN_CPU);
	json.put("ADN_memory", ADN_memory);
	json.put("ADN_value", ADN_value);
	json.put("ADN_vaccine", ADN_vaccine);
	json.put("ADN_update", ADN_update);
	json.put("ADN_status", ADN_status);
	json.put("VRS_CPU", VRS_CPU);
	json.put("VRS_memory", VRS_memory);
	json.put("VRS_value", VRS_value);
	json.put("VRS_vaccine", VRS_vaccine);
	json.put("VRS_update", VRS_update);
	json.put("VRS_status", VRS_status);
	json.put("FILE_CPU", FILE_CPU);
	json.put("FILE_memory", FILE_memory);
	json.put("FILE_value", FILE_value);
	json.put("FILE_vaccine", FILE_vaccine);
	json.put("FILE_update", FILE_update);
	json.put("FILE_status", FILE_status);
	json.put("DEVN_CPU", DEVN_CPU);
	json.put("DEVN_memory", DEVN_memory);
	json.put("DEVN_value", DEVN_value);
	json.put("DEVN_vaccine", DEVN_vaccine);
	json.put("DEVN_update", DEVN_update);
	json.put("DEVN_DB", DEVN_DB);
	json.put("DEVN_status", DEVN_status);
	json.put("MSVM1_CPU", MSVM1_CPU);
	json.put("MSVM1_memory", MSVM1_memory);
	json.put("MSVM1_value", MSVM1_value);
	json.put("MSVM1_vaccine", MSVM1_vaccine);
	json.put("MSVM1_update", MSVM1_update);
	json.put("MSVM1_status", MSVM1_status);
	json.put("MSVM2_CPU", MSVM2_CPU);
	json.put("MSVM2_memory", MSVM2_memory);
	json.put("MSVM2_value", MSVM2_value);
	json.put("MSVM2_vaccine", MSVM2_vaccine);
	json.put("MSVM2_update", MSVM2_update);
	json.put("MSVM2_status", MSVM2_status);
	json.put("LYNC_CPU", LYNC_CPU);
	json.put("LYNC_memory", LYNC_memory);
	json.put("LYNC_value", LYNC_value);
	json.put("LYNC_vaccine", LYNC_vaccine);
	json.put("LYNC_update", LYNC_update);
	json.put("LYNC_status", LYNC_status);
	json.put("ADV1_CPU", ADV1_CPU);
	json.put("ADV1_memory", ADV1_memory);
	json.put("ADV1_value", ADV1_value);
	json.put("ADV1_vaccine", ADV1_vaccine);
	json.put("ADV1_update", ADV1_update);
	json.put("ADV1_status", ADV1_status);
	json.put("ADV2_CPU", ADV2_CPU);
	json.put("ADV2_memory", ADV2_memory);
	json.put("ADV2_value", ADV2_value);
	json.put("ADV2_vaccine", ADV2_vaccine);
	json.put("ADV2_update", ADV2_update);
	json.put("ADV2_status", ADV2_status);

	json.put("WEB_value_2", WEB_value_2);
	json.put("DBM_value_2", DBM_value_2);
	json.put("DEW_value_2", DEW_value_2);
	json.put("MAIL_value_2", MAIL_value_2);
	json.put("APP_value_2", APP_value_2);
	json.put("FAX_value_2", FAX_value_2);
	json.put("ADN_value_2", ADN_value_2);
	json.put("VRS_value_2", VRS_value_2);
	json.put("FILE_value_2", FILE_value_2);
	json.put("DEVN_value_2", DEVN_value_2);
	json.put("MSVM1_value_2", MSVM1_value_2);
	json.put("MSVM2_value_2", MSVM2_value_2);
	json.put("LYNC_value_2", LYNC_value_2);
	json.put("ADV1_value_2", ADV1_value_2);
	json.put("ADV2_value_2", ADV2_value_2);
	json.put("WEB_disk1", WEB_disk1);
	json.put("WEB_disk2", WEB_disk2);
	json.put("WEB_disk3", WEB_disk3);
	json.put("WEB_disk4", WEB_disk4);
	json.put("DBM_disk1", DBM_disk1);
	json.put("DBM_disk2", DBM_disk2);
	json.put("DBM_disk3", DBM_disk3);
	json.put("DBM_disk4", DBM_disk4);
	json.put("DEW_disk1", DEW_disk1);
	json.put("DEW_disk2", DEW_disk2);
	json.put("MAIL_disk1", MAIL_disk1);
	json.put("MAIL_disk2", MAIL_disk2);
	json.put("MAIL_disk3", MAIL_disk3);
	json.put("MAIL_disk4", MAIL_disk4);
	json.put("APP_disk1", APP_disk1);
	json.put("APP_disk2", APP_disk2);
	json.put("APP_disk3", APP_disk3);
	json.put("APP_disk4", APP_disk4);
	json.put("FAX_disk1", FAX_disk1);
	json.put("FAX_disk2", FAX_disk2);
	json.put("ADN_disk1", ADN_disk1);
	json.put("ADN_disk2", ADN_disk2);
	json.put("ADN_disk3", ADN_disk3);
	json.put("ADN_disk4", ADN_disk4);
	json.put("VRS_disk1", VRS_disk1);
	json.put("VRS_disk2", VRS_disk2);
	json.put("VRS_disk3", VRS_disk3);
	json.put("VRS_disk4", VRS_disk4);
	json.put("FILE_disk1", FILE_disk1);
	json.put("FILE_disk2", FILE_disk2);
	json.put("FILE_disk3", FILE_disk3);
	json.put("FILE_disk4", FILE_disk4);
	json.put("DEVN_disk1", DEVN_disk1);
	json.put("DEVN_disk2", DEVN_disk2);
	json.put("DEVN_disk3", DEVN_disk3);
	json.put("DEVN_disk4", DEVN_disk4);
	json.put("MSVM1_disk1", MSVM1_disk1);
	json.put("MSVM1_disk2", MSVM1_disk2);
	json.put("MSVM1_disk3", MSVM1_disk3);
	json.put("MSVM1_disk4", MSVM1_disk4);
	json.put("MSVM1_disk5", MSVM1_disk5);
	json.put("MSVM1_disk6", MSVM1_disk6);
	json.put("MSVM1_disk7", MSVM1_disk7);
	json.put("MSVM1_disk8", MSVM1_disk8);
	json.put("MSVM1_disk9", MSVM1_disk9);
	json.put("MSVM1_disk10", MSVM1_disk10);
	json.put("MSVM2_disk1", MSVM2_disk1);
	json.put("MSVM2_disk2", MSVM2_disk2);
	json.put("MSVM2_disk3", MSVM2_disk3);
	json.put("MSVM2_disk4", MSVM2_disk4);
	json.put("MSVM2_disk5", MSVM2_disk5);
	json.put("MSVM2_disk6", MSVM2_disk6);
	json.put("MSVM2_disk7", MSVM2_disk7);
	json.put("MSVM2_disk8", MSVM2_disk8);
	json.put("MSVM2_disk9", MSVM2_disk9);
	json.put("MSVM2_disk10", MSVM2_disk10);
	json.put("LYNC_disk1", LYNC_disk1);
	json.put("LYNC_disk2", LYNC_disk2);
	json.put("LYNC_disk3", LYNC_disk3);
	json.put("LYNC_disk4", LYNC_disk4);
	json.put("ADV1_disk1", ADV1_disk1);
	json.put("ADV1_disk2", ADV1_disk2);
	json.put("ADV2_disk1", ADV2_disk1);
	json.put("ADV2_disk2", ADV2_disk2);

	json.put("ifany", ifany);

	out.print(json);

	if (request.getMethod().equals("POST")) {
		//System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		WEB_CPU = param.getString("WEB_CPU", "");
		WEB_memory = param.getString("WEB_memory", "");
		WEB_value = param.getString("WEB_value", "");
		WEB_vaccine = param.getString("WEB_vaccine", "");
		WEB_update = param.getString("WEB_update", "");
		WEB_status = param.getString("WEB_status", "");
		DBM_CPU = param.getString("DBM_CPU", "");
		DBM_memory = param.getString("DBM_memory", "");
		DBM_value = param.getString("DBM_value", "");
		DBM_vaccine = param.getString("DBM_vaccine", "");
		DBM_update = param.getString("DBM_update", "");
		DBM_DB = param.getString("DBM_DB", "");
		DBM_status = param.getString("DBM_status", "");
		DEW_CPU = param.getString("DEW_CPU", "");
		DEW_memory = param.getString("DEW_memory", "");
		DEW_value = param.getString("DEW_value", "");
		DEW_vaccine = param.getString("DEW_vaccine", "");
		DEW_update = param.getString("DEW_update", "");
		DEW_status = param.getString("DEW_status", "");
		MAIL_CPU = param.getString("MAIL_CPU", "");
		MAIL_memory = param.getString("MAIL_memory", "");
		MAIL_value = param.getString("MAIL_value", "");
		MAIL_vaccine = param.getString("MAIL_vaccine", "");
		MAIL_update = param.getString("MAIL_update", "");
		MAIL_status = param.getString("MAIL_status", "");
		APP_CPU = param.getString("APP_CPU", "");
		APP_memory = param.getString("APP_memory", "");
		APP_value = param.getString("APP_value", "");
		APP_vaccine = param.getString("APP_vaccine", "");
		APP_update = param.getString("APP_update", "");
		APP_status = param.getString("APP_status", "");
		FAX_CPU = param.getString("FAX_CPU", "");
		FAX_memory = param.getString("FAX_memory", "");
		FAX_value = param.getString("FAX_value", "");
		FAX_vaccine = param.getString("FAX_vaccine", "");
		FAX_update = param.getString("FAX_update", "");
		FAX_status = param.getString("FAX_status", "");
		ADN_CPU = param.getString("ADN_CPU", "");
		ADN_memory = param.getString("ADN_memory", "");
		ADN_value = param.getString("ADN_value", "");
		ADN_vaccine = param.getString("ADN_vaccine", "");
		ADN_update = param.getString("ADN_update", "");
		ADN_status = param.getString("ADN_status", "");
		VRS_CPU = param.getString("VRS_CPU", "");
		VRS_memory = param.getString("VRS_memory", "");
		VRS_value = param.getString("VRS_value", "");
		VRS_vaccine = param.getString("VRS_vaccine", "");
		VRS_update = param.getString("VRS_update", "");
		VRS_status = param.getString("VRS_status", "");
		FILE_CPU = param.getString("FILE_CPU", "");
		FILE_memory = param.getString("FILE_memory", "");
		FILE_value = param.getString("FILE_value", "");
		FILE_vaccine = param.getString("FILE_vaccine", "");
		FILE_update = param.getString("FILE_update", "");
		FILE_status = param.getString("FILE_status", "");
		DEVN_CPU = param.getString("DEVN_CPU", "");
		DEVN_memory = param.getString("DEVN_memory", "");
		DEVN_value = param.getString("DEVN_value", "");
		DEVN_vaccine = param.getString("DEVN_vaccine", "");
		DEVN_update = param.getString("DEVN_update", "");
		DEVN_DB = param.getString("DEVN_DB", "");
		DEVN_status = param.getString("DEVN_status", "");
		MSVM1_CPU = param.getString("MSVM1_CPU", "");
		MSVM1_memory = param.getString("MSVM1_memory", "");
		MSVM1_value = param.getString("MSVM1_value", "");
		MSVM1_vaccine = param.getString("MSVM1_vaccine", "");
		MSVM1_update = param.getString("MSVM1_update", "");
		MSVM1_status = param.getString("MSVM1_status", "");
		MSVM2_CPU = param.getString("MSVM2_CPU", "");
		MSVM2_memory = param.getString("MSVM2_memory", "");
		MSVM2_value = param.getString("MSVM2_value", "");
		MSVM2_vaccine = param.getString("MSVM2_vaccine", "");
		MSVM2_update = param.getString("MSVM2_update", "");
		MSVM2_status = param.getString("MSVM2_status", "");
		LYNC_CPU = param.getString("LYNC_CPU", "");
		LYNC_memory = param.getString("LYNC_memory", "");
		LYNC_value = param.getString("LYNC_value", "");
		LYNC_vaccine = param.getString("LYNC_vaccine", "");
		LYNC_update = param.getString("LYNC_update", "");
		LYNC_status = param.getString("LYNC_status", "");
		ADV1_CPU = param.getString("ADV1_CPU", "");
		ADV1_memory = param.getString("ADV1_memory", "");
		ADV1_value = param.getString("ADV1_value", "");
		ADV1_vaccine = param.getString("ADV1_vaccine", "");
		ADV1_update = param.getString("ADV1_update", "");
		ADV1_status = param.getString("ADV1_status", "");
		ADV2_CPU = param.getString("ADV2_CPU", "");
		ADV2_memory = param.getString("ADV2_memory", "");
		ADV2_value = param.getString("ADV2_value", "");
		ADV2_vaccine = param.getString("ADV2_vaccine", "");
		ADV2_update = param.getString("ADV2_update", "");
		ADV2_status = param.getString("ADV2_status", "");

		WEB_value_2 = param.getString("WEB_value_2", "");
		DBM_value_2 = param.getString("DBM_value_2", "");
		DEW_value_2 = param.getString("DEW_value_2", "");
		MAIL_value_2 = param.getString("MAIL_value_2", "");
		APP_value_2 = param.getString("APP_value_2", "");
		FAX_value_2 = param.getString("FAX_value_2", "");
		ADN_value_2 = param.getString("ADN_value_2", "");
		VRS_value_2 = param.getString("VRS_value_2", "");
		FILE_value_2 = param.getString("FILE_value_2", "");
		DEVN_value_2 = param.getString("DEVN_value_2", "");
		MSVM1_value_2 = param.getString("MSVM1_value_2", "");
		MSVM2_value_2 = param.getString("MSVM2_value_2", "");
		LYNC_value_2 = param.getString("LYNC_value_2", "");
		ADV1_value_2 = param.getString("ADV1_value_2", "");
		ADV2_value_2 = param.getString("ADV2_value_2", "");
		WEB_disk1 = param.getString("WEB_disk1", "");
		WEB_disk2 = param.getString("WEB_disk2", "");
		WEB_disk3 = param.getString("WEB_disk3", "");
		WEB_disk4 = param.getString("WEB_disk4", "");
		DBM_disk1 = param.getString("DBM_disk1", "");
		DBM_disk2 = param.getString("DBM_disk2", "");
		DBM_disk3 = param.getString("DBM_disk3", "");
		DBM_disk4 = param.getString("DBM_disk4", "");
		DEW_disk1 = param.getString("DEW_disk1", "");
		DEW_disk2 = param.getString("DEW_disk2", "");
		MAIL_disk1 = param.getString("MAIL_disk1", "");
		MAIL_disk2 = param.getString("MAIL_disk2", "");
		MAIL_disk3 = param.getString("MAIL_disk3", "");
		MAIL_disk4 = param.getString("MAIL_disk4", "");
		APP_disk1 = param.getString("APP_disk1", "");
		APP_disk2 = param.getString("APP_disk2", "");
		APP_disk3 = param.getString("APP_disk3", "");
		APP_disk4 = param.getString("APP_disk4", "");
		FAX_disk1 = param.getString("FAX_disk1", "");
		FAX_disk2 = param.getString("FAX_disk2", "");
		ADN_disk1 = param.getString("ADN_disk1", "");
		ADN_disk2 = param.getString("ADN_disk2", "");
		ADN_disk3 = param.getString("ADN_disk3", "");
		ADN_disk4 = param.getString("ADN_disk4", "");
		VRS_disk1 = param.getString("VRS_disk1", "");
		VRS_disk2 = param.getString("VRS_disk2", "");
		VRS_disk3 = param.getString("VRS_disk3", "");
		VRS_disk4 = param.getString("VRS_disk4", "");
		FILE_disk1 = param.getString("FILE_disk1", "");
		FILE_disk2 = param.getString("FILE_disk2", "");
		FILE_disk3 = param.getString("FILE_disk3", "");
		FILE_disk4 = param.getString("FILE_disk4", "");
		DEVN_disk1 = param.getString("DEVN_disk1", "");
		DEVN_disk2 = param.getString("DEVN_disk2", "");
		DEVN_disk3 = param.getString("DEVN_disk3", "");
		DEVN_disk4 = param.getString("DEVN_disk4", "");
		MSVM1_disk1 = param.getString("MSVM1_disk1", "");
		MSVM1_disk2 = param.getString("MSVM1_disk2", "");
		MSVM1_disk3 = param.getString("MSVM1_disk3", "");
		MSVM1_disk4 = param.getString("MSVM1_disk4", "");
		MSVM1_disk5 = param.getString("MSVM1_disk5", "");
		MSVM1_disk6 = param.getString("MSVM1_disk6", "");
		MSVM1_disk7 = param.getString("MSVM1_disk7", "");
		MSVM1_disk8 = param.getString("MSVM1_disk8", "");
		MSVM1_disk9 = param.getString("MSVM1_disk9", "");
		MSVM1_disk10 = param.getString("MSVM1_disk10", "");
		MSVM2_disk1 = param.getString("MSVM2_disk1", "");
		MSVM2_disk2 = param.getString("MSVM2_disk2", "");
		MSVM2_disk3 = param.getString("MSVM2_disk3", "");
		MSVM2_disk4 = param.getString("MSVM2_disk4", "");
		MSVM2_disk5 = param.getString("MSVM2_disk5", "");
		MSVM2_disk6 = param.getString("MSVM2_disk6", "");
		MSVM2_disk7 = param.getString("MSVM2_disk7", "");
		MSVM2_disk8 = param.getString("MSVM2_disk8", "");
		MSVM2_disk9 = param.getString("MSVM2_disk9", "");
		MSVM2_disk10 = param.getString("MSVM2_disk10", "");
		LYNC_disk1 = param.getString("LYNC_disk1", "");
		LYNC_disk2 = param.getString("LYNC_disk2", "");
		LYNC_disk3 = param.getString("LYNC_disk3", "");
		LYNC_disk4 = param.getString("LYNC_disk4", "");
		ADV1_disk1 = param.getString("ADV1_disk1", "");
		ADV1_disk2 = param.getString("ADV1_disk2", "");
		ADV2_disk1 = param.getString("ADV2_disk1", "");
		ADV2_disk2 = param.getString("ADV2_disk2", "");

		ifany = param.getString("ifany", "");

		if (server == null) {
			ServerDAO.insertInfo(id, checktime, checker, WEB_CPU, WEB_memory, WEB_value, WEB_vaccine,
					WEB_update, WEB_status, DBM_CPU, DBM_memory, DBM_value, DBM_vaccine, DBM_update, DBM_DB,
					DBM_status, DEW_CPU, DEW_memory, DEW_value, DEW_vaccine, DEW_update, DEW_status, MAIL_CPU,
					MAIL_memory, MAIL_value, MAIL_vaccine, MAIL_update, MAIL_status, APP_CPU, APP_memory,
					APP_value, APP_vaccine, APP_update, APP_status, FAX_CPU, FAX_memory, FAX_value, FAX_vaccine,
					FAX_update, FAX_status, ADN_CPU, ADN_memory, ADN_value, ADN_vaccine, ADN_update, ADN_status,
					VRS_CPU, VRS_memory, VRS_value, VRS_vaccine, VRS_update, VRS_status, FILE_CPU, FILE_memory,
					FILE_value, FILE_vaccine, FILE_update, FILE_status, DEVN_CPU, DEVN_memory, DEVN_value,
					DEVN_vaccine, DEVN_update, DEVN_DB, DEVN_status, MSVM1_CPU, MSVM1_memory, MSVM1_value,
					MSVM1_vaccine, MSVM1_update, MSVM1_status, MSVM2_CPU, MSVM2_memory, MSVM2_value,
					MSVM2_vaccine, MSVM2_update, MSVM2_status, LYNC_CPU, LYNC_memory, LYNC_value, LYNC_vaccine,
					LYNC_update, LYNC_status, ADV1_CPU, ADV1_memory, ADV1_value, ADV1_vaccine, ADV1_update,
					ADV1_status, ADV2_CPU, ADV2_memory, ADV2_value, ADV2_vaccine, ADV2_update, ADV2_status,

			WEB_value_2, DBM_value_2, DEW_value_2, MAIL_value_2, APP_value_2, FAX_value_2, ADN_value_2,
					VRS_value_2, FILE_value_2, DEVN_value_2, MSVM1_value_2, MSVM2_value_2, LYNC_value_2,
					ADV1_value_2, ADV2_value_2, WEB_disk1, WEB_disk2, WEB_disk3, WEB_disk4, DBM_disk1,
					DBM_disk2, DBM_disk3, DBM_disk4, DEW_disk1, DEW_disk2, MAIL_disk1, MAIL_disk2, MAIL_disk3,
					MAIL_disk4, APP_disk1, APP_disk2, APP_disk3, APP_disk4, FAX_disk1, FAX_disk2, ADN_disk1,
					ADN_disk2, ADN_disk3, ADN_disk4, VRS_disk1, VRS_disk2, VRS_disk3, VRS_disk4, FILE_disk1,
					FILE_disk2, FILE_disk3, FILE_disk4, DEVN_disk1, DEVN_disk2, DEVN_disk3, DEVN_disk4,
					MSVM1_disk1, MSVM1_disk2, MSVM1_disk3, MSVM1_disk4, MSVM1_disk5, MSVM1_disk6, MSVM1_disk7,
					MSVM1_disk8, MSVM1_disk9, MSVM1_disk10, MSVM2_disk1, MSVM2_disk2, MSVM2_disk3, MSVM2_disk4,
					MSVM2_disk5, MSVM2_disk6, MSVM2_disk7, MSVM2_disk8, MSVM2_disk9, MSVM2_disk10, LYNC_disk1,
					LYNC_disk2, LYNC_disk3, LYNC_disk4, ADV1_disk1, ADV1_disk2, ADV2_disk1, ADV2_disk2,

			ifany);
			//System.out.println("인서트!");
		} else {
			//update	
			ServerDAO.updateInfo(id, checktime, checker, WEB_CPU, WEB_memory, WEB_value, WEB_vaccine,
					WEB_update, WEB_status, DBM_CPU, DBM_memory, DBM_value, DBM_vaccine, DBM_update, DBM_DB,
					DBM_status, DEW_CPU, DEW_memory, DEW_value, DEW_vaccine, DEW_update, DEW_status, MAIL_CPU,
					MAIL_memory, MAIL_value, MAIL_vaccine, MAIL_update, MAIL_status, APP_CPU, APP_memory,
					APP_value, APP_vaccine, APP_update, APP_status, FAX_CPU, FAX_memory, FAX_value, FAX_vaccine,
					FAX_update, FAX_status, ADN_CPU, ADN_memory, ADN_value, ADN_vaccine, ADN_update, ADN_status,
					VRS_CPU, VRS_memory, VRS_value, VRS_vaccine, VRS_update, VRS_status, FILE_CPU, FILE_memory,
					FILE_value, FILE_vaccine, FILE_update, FILE_status, DEVN_CPU, DEVN_memory, DEVN_value,
					DEVN_vaccine, DEVN_update, DEVN_DB, DEVN_status, MSVM1_CPU, MSVM1_memory, MSVM1_value,
					MSVM1_vaccine, MSVM1_update, MSVM1_status, MSVM2_CPU, MSVM2_memory, MSVM2_value,
					MSVM2_vaccine, MSVM2_update, MSVM2_status, LYNC_CPU, LYNC_memory, LYNC_value, LYNC_vaccine,
					LYNC_update, LYNC_status, ADV1_CPU, ADV1_memory, ADV1_value, ADV1_vaccine, ADV1_update,
					ADV1_status, ADV2_CPU, ADV2_memory, ADV2_value, ADV2_vaccine, ADV2_update, ADV2_status,

			WEB_value_2, DBM_value_2, DEW_value_2, MAIL_value_2, APP_value_2, FAX_value_2, ADN_value_2,
					VRS_value_2, FILE_value_2, DEVN_value_2, MSVM1_value_2, MSVM2_value_2, LYNC_value_2,
					ADV1_value_2, ADV2_value_2, WEB_disk1, WEB_disk2, WEB_disk3, WEB_disk4, DBM_disk1,
					DBM_disk2, DBM_disk3, DBM_disk4, DEW_disk1, DEW_disk2, MAIL_disk1, MAIL_disk2, MAIL_disk3,
					MAIL_disk4, APP_disk1, APP_disk2, APP_disk3, APP_disk4, FAX_disk1, FAX_disk2, ADN_disk1,
					ADN_disk2, ADN_disk3, ADN_disk4, VRS_disk1, VRS_disk2, VRS_disk3, VRS_disk4, FILE_disk1,
					FILE_disk2, FILE_disk3, FILE_disk4, DEVN_disk1, DEVN_disk2, DEVN_disk3, DEVN_disk4,
					MSVM1_disk1, MSVM1_disk2, MSVM1_disk3, MSVM1_disk4, MSVM1_disk5, MSVM1_disk6, MSVM1_disk7,
					MSVM1_disk8, MSVM1_disk9, MSVM1_disk10, MSVM2_disk1, MSVM2_disk2, MSVM2_disk3, MSVM2_disk4,
					MSVM2_disk5, MSVM2_disk6, MSVM2_disk7, MSVM2_disk8, MSVM2_disk9, MSVM2_disk10, LYNC_disk1,
					LYNC_disk2, LYNC_disk3, LYNC_disk4, ADV1_disk1, ADV1_disk2, ADV2_disk1, ADV2_disk2,

			ifany);
			//System.out.println("업데이트!");
		}
	}
%>