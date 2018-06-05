<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", 
			checker = "", 
			network_conn = "",
			firm_banking = "",
			vpn_21 = "",
			vpn_31 = "",
			vpn_200 = "",
			vpn_254 = "",
			network_err = "",
			internet_spd = "",
			traffic_IDC = "",
			internet_traffic = "",
			
			internet_traffic_2= "",
			internet_spd_2= "",
			traffic_IDC_2= "",

			firm_banking_nice= "",
			firm_banking_kcb= "",

					
			ifany = "";

	String id=request.getParameter("id").trim();
	//SystemWriterLog.writeLog("?" + id);
	Networkerr networkerr = NetworkerrDAO.selectById(id);

	if (networkerr != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//SystemWriterLog.writeLog("GET!");
		
		checktime = networkerr.getCheckTime();		
		checker = networkerr.getChecker();
		
		network_conn = networkerr.getNetwork_conn();
		firm_banking = networkerr.getFirm_banking();
				
		
		vpn_21 = networkerr.getVpn_21();
		vpn_31 = networkerr.getVpn_31();
		vpn_200 = networkerr.getVpn_200();
		vpn_254 = networkerr.getVpn_254();
		network_err = networkerr.getNetwork_err();
		internet_spd = networkerr.getInternet_spd();
		traffic_IDC = networkerr.getTraffic_IDC();
		internet_traffic = networkerr.getInternet_traffic();
		
		internet_traffic_2 = networkerr.getInternet_traffic_2();
		internet_spd_2 = networkerr.getInternet_spd_2();
		traffic_IDC_2 = networkerr.getTraffic_IDC_2();
		
		firm_banking_nice = networkerr.getFirm_banking_nice();
		firm_banking_kcb = networkerr.getFirm_banking_nice();
		
		
		
		ifany = networkerr.getIfany();
	
		
	
	}

	//======================================================================================

	//PrintWriter out= response.getWriter();  
	JSONObject json = new JSONObject();
	json.put("name", "테스트 입니다...");
	
	json.put("checktime", checktime);		
	
	//SystemWriterLog.writeLog("check: "+checktime);
	
	json.put("checker", checker);
	
	json.put("network_conn", network_conn);
	json.put("firm_banking", firm_banking);
	json.put("vpn_21", vpn_21);
	json.put("vpn_31", vpn_31);
	json.put("vpn_200", vpn_200);
	json.put("vpn_254", vpn_254);
	json.put("network_err", network_err);
	json.put("internet_spd", internet_spd);
	json.put("traffic_IDC", traffic_IDC);
	json.put("internet_traffic", internet_traffic);
	
	json.put("internet_traffic_2", internet_traffic_2);
	json.put("internet_spd_2", internet_spd_2);
	json.put("traffic_IDC_2", traffic_IDC_2);	
	
	//HERE
	json.put("firm_banking_nice", firm_banking_nice);
	json.put("firm_banking_kcb", firm_banking_kcb);
	
	json.put("ifany", ifany);

	
	out.print(json);

	if (request.getMethod().equals("POST")) {
		//SystemWriterLog.writeLog("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		network_conn = param.getString("network_conn", "");
		firm_banking = param.getString("firm_banking", "");
		vpn_21 = param.getString("vpn_21", "");
		vpn_31 = param.getString("vpn_31", "");
		vpn_200 = param.getString("vpn_200", "");
		vpn_254 = param.getString("vpn_254", "");
		network_err = param.getString("network_err", "");
		internet_spd = param.getString("internet_spd", "");
		traffic_IDC = param.getString("traffic_IDC", "");
		internet_traffic = param.getString("internet_traffic", "");
		
		internet_traffic_2 = param.getString("internet_traffic_2", "");
		internet_spd_2 = param.getString("internet_spd_2", "");
		traffic_IDC_2 = param.getString("traffic_IDC_2", "");		

		firm_banking_nice = param.getString("firm_banking_nice", "");
		firm_banking_kcb = param.getString("firm_banking_kcb", "");
		
		ifany = param.getString("ifany", "");

		if (networkerr == null) {
			NetworkerrDAO.insertInfo(id, checktime, checker,network_conn,firm_banking,vpn_21
					,vpn_31,vpn_200,vpn_254,network_err,internet_spd,traffic_IDC,internet_traffic,internet_traffic_2,internet_spd_2,traffic_IDC_2
					,firm_banking_nice,firm_banking_kcb
					,ifany);
			//SystemWriterLog.writeLog("인서트!");

			SystemWriterLog.writeLog("업데이트!"+firm_banking_nice);
			SystemWriterLog.writeLog("업데이트!"+firm_banking_kcb);
		} else {
			//update	
			NetworkerrDAO.updateInfo(id, checktime, checker,network_conn,firm_banking,vpn_21,vpn_31,vpn_200,vpn_254,network_err,internet_spd
					,traffic_IDC,internet_traffic,internet_traffic_2,internet_spd_2,traffic_IDC_2
					,firm_banking_nice,firm_banking_kcb
					,ifany);
			SystemWriterLog.writeLog("업데이트!"+firm_banking_nice);
			SystemWriterLog.writeLog("업데이트!"+firm_banking_kcb);
		}
	}
%>