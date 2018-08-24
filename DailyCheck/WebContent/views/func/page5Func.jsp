<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", 
	checker = "",
	ebilling = "",
	funding_MMS = "",
	funding_SMS = "",
	del_M = "",
	leave_Mng = "",
	fax_SMS = "",
	
	E_B_rst = "",
	E_B_cnt = "",


	C_stat_updat = "",
	
	init_CD_rate= "",
	LSRMDLY_daily_backup= "",
	syspolicy_history= "",
	Vintage_analysis= "",
	sett_accumulated_cashflow= "",
	sett_accumulated_cashflow_2= "",
	C_termination= "",
	del_rate_statictics= "",
	fund_repayment_noti= "",
	E_Bill_pubi_noti= "",

	
	ifany = "";

	String id=request.getParameter("id").trim();
	//SystemWriterLog.writeLog("?" + id);
	Batchjob batchjob = BatchjobDAO.selectById(id);

	if (batchjob != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//SystemWriterLog.writeLog("GET!");
		
		/*이거 주의*/
		checktime = batchjob.getCheckTime();		
		checker = batchjob.getChecker();
		
		ebilling = batchjob.getEbilling();
		funding_MMS = batchjob.getFunding_MMS();
		funding_SMS = batchjob.getFunding_SMS();
		del_M = batchjob.getDel_M();
		leave_Mng = batchjob.getLeave_Mng();
		fax_SMS = batchjob.getFax_SMS();
		
		E_B_rst = batchjob.getE_B_rst();
		E_B_cnt = batchjob.getE_B_cnt();
		
		C_stat_updat = batchjob.getC_stat_updat();
		init_CD_rate = batchjob.getInit_CD_rate();
		LSRMDLY_daily_backup = batchjob.getLSRMDLY_daily_backup();
		syspolicy_history = batchjob.getSyspolicy_history();
		Vintage_analysis = batchjob.getVintage_analysis();
		sett_accumulated_cashflow = batchjob.getSett_accumulated_cashflow();
		sett_accumulated_cashflow_2 = batchjob.getSett_accumulated_cashflow_2();
		C_termination = batchjob.getC_termination();
		del_rate_statictics = batchjob.getDel_rate_statictics();
		fund_repayment_noti = batchjob.getFund_repayment_noti();
		E_Bill_pubi_noti = batchjob.getE_Bill_pubi_noti();
		
		ifany = batchjob.getIfany();


		
		//System.out.println(E_B_rst); //test
		//System.out.println(E_B_cnt); //test

	}

	//======================================================================================

	JSONObject json = new JSONObject();
	json.put("checktime", checktime);
	json.put("checker", checker);
	json.put("ebilling", ebilling);
	json.put("funding_MMS", funding_MMS);
	json.put("funding_SMS", funding_SMS);
	json.put("del_M", del_M);
	json.put("leave_Mng", leave_Mng);
	json.put("fax_SMS", fax_SMS);
	
	json.put("E_B_rst", E_B_rst);
	json.put("E_B_cnt", E_B_cnt);
	
	json.put("C_stat_updat", C_stat_updat);
	json.put("init_CD_rate", init_CD_rate);
	json.put("LSRMDLY_daily_backup", LSRMDLY_daily_backup);
	json.put("syspolicy_history", syspolicy_history);
	json.put("Vintage_analysis", Vintage_analysis);
	json.put("sett_accumulated_cashflow", sett_accumulated_cashflow);
	json.put("sett_accumulated_cashflow_2", sett_accumulated_cashflow_2);
	json.put("C_termination", C_termination);
	json.put("del_rate_statictics", del_rate_statictics);
	json.put("fund_repayment_noti", fund_repayment_noti);
	json.put("E_Bill_pubi_noti", E_Bill_pubi_noti);
	
	json.put("ifany", ifany);
	
	out.print(json);

	
	if (request.getMethod().equals("POST")) {
		//SystemWriterLog.writeLog("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		ebilling = param.getString("ebilling", "");
		funding_MMS = param.getString("funding_MMS", "");
		funding_SMS = param.getString("funding_SMS", "");
		del_M = param.getString("del_M", "");
		leave_Mng = param.getString("leave_Mng", "");
		fax_SMS = param.getString("fax_SMS", "");
		
		E_B_rst = param.getString("E_B_rst", "");
		E_B_cnt = param.getString("E_B_cnt", "");
		
		C_stat_updat = param.getString("C_stat_updat", "");
		init_CD_rate = param.getString("init_CD_rate", "");
		LSRMDLY_daily_backup = param.getString("LSRMDLY_daily_backup", "");
		syspolicy_history = param.getString("syspolicy_history", "");
		Vintage_analysis = param.getString("Vintage_analysis", "");
		sett_accumulated_cashflow = param.getString("sett_accumulated_cashflow", "");
		sett_accumulated_cashflow_2 = param.getString("sett_accumulated_cashflow_2", "");
		C_termination = param.getString("C_termination", "");
		del_rate_statictics = param.getString("del_rate_statictics", "");
		fund_repayment_noti = param.getString("fund_repayment_noti", "");
		E_Bill_pubi_noti = param.getString("E_Bill_pubi_noti", "");
		
		ifany = param.getString("ifany", "");		

		
		//System.out.println(E_B_rst); //test
		//System.out.println(E_B_cnt); //test
		
		
		
		if (batchjob == null) {
			BatchjobDAO.insertInfo(
					id, 
					checktime, 
					checker, 
					ebilling,					
					funding_SMS,
					del_M,
					leave_Mng,
					fax_SMS,
					funding_MMS ,
					E_B_rst ,
					E_B_cnt ,
					C_stat_updat ,
					init_CD_rate ,
					LSRMDLY_daily_backup ,
					syspolicy_history ,
					Vintage_analysis ,
					sett_accumulated_cashflow ,
					sett_accumulated_cashflow_2 ,
					C_termination ,
					del_rate_statictics ,
					fund_repayment_noti ,
					E_Bill_pubi_noti ,
					ifany
				);
			//SystemWriterLog.writeLog("인서트!");
		} else {
			//update	
			BatchjobDAO.updateInfo(
					id, 
					checktime, 
					checker, 
					ebilling,					
					funding_SMS,
					del_M,
					leave_Mng,
					fax_SMS,
					funding_MMS ,
					E_B_rst ,
					E_B_cnt ,
					C_stat_updat ,
					init_CD_rate ,
					LSRMDLY_daily_backup ,
					syspolicy_history ,
					Vintage_analysis ,
					sett_accumulated_cashflow ,
					sett_accumulated_cashflow_2 ,
					C_termination ,
					del_rate_statictics ,
					fund_repayment_noti ,
					E_Bill_pubi_noti ,
					ifany
					);
			//SystemWriterLog.writeLog("업데이트!");
		}
	}
%>