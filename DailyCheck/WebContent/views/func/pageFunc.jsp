<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "", ars = "", mail = "", fax = "", vrs = "", messanger = "";

	String id = GetDate.getDate(); //날짜는 변경될 수 있음!
	Precheck precheck = PrecheckDAO.selectById(id);

	if (precheck != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		System.out.println("GET!");
		
		checktime = precheck.getCheckTime();		
		checker = precheck.getChecker();
		
		
		
		//======================================================================================

		//PrintWriter out= response.getWriter();  
		JSONObject json = new JSONObject();
		json.put("name", "테스트 입니다...");
		
		json.put("checktime", checktime);
		
		System.out.println("check: "+checktime);
		
		json.put("checker", checker);
		json.put("ars", ars);
		
		out.print(json);

	}

	else if (request.getMethod().equals("POST")) {
		System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		ars = param.getString("ars", "");
		
		//PrecheckDAO.updateInfo(id, checktime, checker, ars, mail, fax, vrs, messanger);

		if (precheck == null) {
			//PrecheckDAO.insertInfo(id, checktime, checker, ars, mail, fax, vrs, messanger);
			System.out.println("인서트!");
		} else {
			//update	
			//PrecheckDAO.updateInfo(id, checktime, checker, ars, mail, fax, vrs, messanger);

			System.out.println("업데이트!");
		}
	}
%>