<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "", NWCPU = "", NWmemory = "", NWvaccine = "", NWupdate = "", NWstatus = "", NSCPU = "", NSmemory = "", NSvaccine = "", NSupdate = "", NSstatus = "", ifany = "";

	String id = GetDate.getDate(); //날짜는 변경될 수 있음!
	Dmzserver dmzserver = DmzserverDAO.selectById(id);

	if (dmzserver != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		System.out.println("GET!");

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
		ifany = dmzserver.getIfany();


		//======================================================================================

		//PrintWriter out= response.getWriter();  
		JSONObject json = new JSONObject();
		json.put("name", "테스트 입니다...");

		json.put("checktime", checktime);
		System.out.println("check: " + checktime);
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
		json.put("ifany", ifany);

		out.print(json);
	}

	else if (request.getMethod().equals("POST")) {
		System.out.println("AJAX POST!!!");

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
		ifany = param.getString("ifany", "");

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
					ifany
					);
			System.out.println("인서트!");
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
					ifany
					);

			System.out.println("업데이트!");
		}
	}
%>