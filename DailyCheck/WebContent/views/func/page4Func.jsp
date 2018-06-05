<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "", NWCPU = "", NWmemory = "", NWvaccine = "", NWupdate = "", NWstatus = "", NSCPU = "", NSmemory = "", NSvaccine = "", NSupdate = "", NSstatus = "", ifany = "";
	String WEB_disk1= "", WEB_disk2= "", WEB_disk3= "", WEB_disk4= "", SPAM_disk1= "", SPAM_disk2= "";
	String NWCPU_val= "";
	String NWmemory_val= "";
	String NSCPU_val= "";
	String NSmemory_val= "";
	
	String TAX2_CPU = "";
	String TAX2_memory = "";
	String TAX2_value = "";
	String TAX2_value_2 = "";
	String TAX2_vaccine = "";
	String TAX2_update = "";
	String TAX2_status = "";
	String TAX2_disk1 = "";
	String TAX2_disk2 = "";


	String id=request.getParameter("id").trim();
	//SystemWriterLog.writeLog("?" + id);
	Dmzserver dmzserver = DmzserverDAO.selectById(id);

	if (dmzserver != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//SystemWriterLog.writeLog("GET!");

		checktime = dmzserver.getCheckTime();
		checker = dmzserver.getChecker();
		
		NWCPU = dmzserver.getNWCPU();
		NWmemory = dmzserver.getNWmemory();
		NWvaccine = dmzserver.getNWvaccine();
		NWupdate = dmzserver.getNWupdate();
		NWstatus = dmzserver.getNWstatus();
		NSCPU = dmzserver.getNSCPU();
		NSmemory = dmzserver.getNSmemory();
		NSvaccine = dmzserver.getNSvaccine();
		NSupdate = dmzserver.getNSupdate();
		NSstatus = dmzserver.getNSstatus();
		
		WEB_disk1 = dmzserver.getWEB_disk1();
		WEB_disk2 = dmzserver.getWEB_disk2();
		WEB_disk3 = dmzserver.getWEB_disk3();
		WEB_disk4 = dmzserver.getWEB_disk4();
		
		SPAM_disk1 = dmzserver.getSPAM_disk1();
		SPAM_disk2 = dmzserver.getSPAM_disk2();
		
		NWCPU_val = dmzserver.getNWCPU_val();
		NWmemory_val = dmzserver.getNWmemory_val();
		NSCPU_val = dmzserver.getNSCPU_val();
		NSmemory_val = dmzserver.getNSmemory_val();
		

		TAX2_CPU     = dmzserver.getTAX2_CPU();
		TAX2_memory  = dmzserver.getTAX2_memory();
		TAX2_value   = dmzserver.getTAX2_value();
		TAX2_value_2 = dmzserver.getTAX2_value_2();
		TAX2_vaccine = dmzserver.getTAX2_vaccine();
		TAX2_update  = dmzserver.getTAX2_update();
		TAX2_status  = dmzserver.getTAX2_status();
		TAX2_disk1   = dmzserver.getTAX2_disk1();
		TAX2_disk2   = dmzserver.getTAX2_disk2();

				
		ifany = dmzserver.getIfany();

	}

	//======================================================================================

	//PrintWriter out= response.getWriter();  
	JSONObject json = new JSONObject();
	json.put("name", "테스트 입니다...");

	json.put("checktime", checktime);
	//SystemWriterLog.writeLog("check: " + checktime);
	json.put("checker", checker);
			
	json.put("NWCPU", NWCPU);
	json.put("NWmemory", NWmemory);
	json.put("NWvaccine", NWvaccine);
	json.put("NWupdate", NWupdate);
	json.put("NWstatus", NWstatus);
	json.put("NSCPU", NSCPU);
	json.put("NSmemory", NSmemory);
	json.put("NSvaccine", NSvaccine);
	json.put("NSupdate", NSupdate);
	json.put("NSstatus", NSstatus);
	
	json.put("WEB_disk1", WEB_disk1);
	json.put("WEB_disk2", WEB_disk2);
	json.put("WEB_disk3", WEB_disk3);	
	json.put("WEB_disk4", WEB_disk4);
	
	json.put("SPAM_disk1", SPAM_disk1);
	json.put("SPAM_disk2", SPAM_disk2);
	
	json.put("NWCPU_val", NWCPU_val);
	json.put("NWmemory_val", NWmemory_val);
	json.put("NSCPU_val", NSCPU_val);
	json.put("NSmemory_val", NSmemory_val);

	json.put("TAX2_CPU",TAX2_CPU);	
	json.put("TAX2_memory",TAX2_memory);	
	json.put("TAX2_value",TAX2_value);	
	json.put("TAX2_value_2",TAX2_value_2);	
	json.put("TAX2_vaccine",TAX2_vaccine);	
	json.put("TAX2_update",TAX2_update);	
	json.put("TAX2_status",TAX2_status);	
	json.put("TAX2_disk1",TAX2_disk1);	
	json.put("TAX2_disk2",TAX2_disk2);	

	
	json.put("ifany", ifany);

	out.print(json);
	if (request.getMethod().equals("POST")) {
		//SystemWriterLog.writeLog("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		
		NWCPU = param.getString("NWCPU", "");
		NWmemory = param.getString("NWmemory", "");
		NWvaccine = param.getString("NWvaccine", "");
		NWupdate = param.getString("NWupdate", "");
		NWstatus = param.getString("NWstatus", "");
		NSCPU = param.getString("NSCPU", "");
		NSmemory = param.getString("NSmemory", "");
		NSvaccine = param.getString("NSvaccine", "");
		NSupdate = param.getString("NSupdate", "");
		NSstatus = param.getString("NSstatus", "");
		
		WEB_disk1 = param.getString("WEB_disk1", "");
		WEB_disk2 = param.getString("WEB_disk2", "");
		WEB_disk3 = param.getString("WEB_disk3", "");
		WEB_disk4 = param.getString("WEB_disk4", "");
		
		SPAM_disk1 = param.getString("SPAM_disk1", "");
		SPAM_disk2 = param.getString("SPAM_disk2", "");
		
		NWCPU_val = param.getString("NWCPU_val", "");
		NWmemory_val = param.getString("NWmemory_val", "");
		NSCPU_val = param.getString("NSCPU_val", "");
		NSmemory_val = param.getString("NSmemory_val", "");

		TAX2_CPU     = param.getString("TAX2_CPU","");
		TAX2_memory  = param.getString("TAX2_memory","");
		TAX2_value   = param.getString("TAX2_value","");
		TAX2_value_2 = param.getString("TAX2_value_2","");
		TAX2_vaccine = param.getString("TAX2_vaccine","");
		TAX2_update  = param.getString("TAX2_update","");
		TAX2_status  = param.getString("TAX2_status","");
		TAX2_disk1   = param.getString("TAX2_disk1","");
		TAX2_disk2   = param.getString("TAX2_disk2","");

		
		ifany = param.getString("ifany", "");
		System.out.println("ifany : "+ifany);
		
		
		if (dmzserver == null) {
			DmzserverDAO.insertInfo(
					id, 
					checktime, 
					checker, 
					NWCPU,
					NWmemory,
					NWvaccine,
					NWupdate,
					NWstatus,
					NSCPU,
					NSmemory,
					NSvaccine,
					NSupdate,
					NSstatus,
					
					WEB_disk1,
					WEB_disk2,
					WEB_disk3,
					WEB_disk4,					
					SPAM_disk1,
					SPAM_disk2,	
					
					NWCPU_val,
					NWmemory_val,
					NSCPU_val,
					NSmemory_val,

					
					TAX2_CPU,TAX2_memory,TAX2_value,TAX2_value_2,TAX2_vaccine,TAX2_update,TAX2_status,TAX2_disk1,TAX2_disk2,
					
					ifany
					);
			//SystemWriterLog.writeLog("인서트!");
		} else {
			//update	
			DmzserverDAO.updateInfo(
					id, 
					checktime, 
					checker, 
					NWCPU,
					NWmemory,
					NWvaccine,
					NWupdate,
					NWstatus,
					NSCPU,
					NSmemory,
					NSvaccine,
					NSupdate,
					NSstatus,
					
					WEB_disk1,
					WEB_disk2,
					WEB_disk3,
					WEB_disk4,					
					SPAM_disk1,
					SPAM_disk2,		
					
					NWCPU_val,
					NWmemory_val,
					NSCPU_val,
					NSmemory_val,
					TAX2_CPU,TAX2_memory,TAX2_value,TAX2_value_2,TAX2_vaccine,TAX2_update,TAX2_status,TAX2_disk1,TAX2_disk2,
					ifany
					);

			//SystemWriterLog.writeLog("업데이트!");
		}
	}
%>