<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "" 
	,checker = ""
	,trunk = ""
	,idle = ""
	,temperature = ""
	,in_serv_tru1 = ""
	,in_serv_tru2 = ""
	,gateway = ""
	,ipt_alarm = ""
	,ifany = "";

	String id = GetDate.getDate(); //날짜는 변경될 수 있음!
	Ipt ipt = IptDAO.selectById(id);

	if (ipt != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		System.out.println("GET!");

		checktime = ipt.getCheckTime();
		checker = ipt.getChecker();
		trunk = ipt.getTrunk();
		idle = ipt.getIdle();
		temperature = ipt.getTemperature();
		in_serv_tru1 = ipt.getIn_serv_tru1();
		in_serv_tru2 = ipt.getIn_serv_tru2();
		gateway = ipt.getGateway();
		ipt_alarm = ipt.getIpt_alarm();
		ifany = ipt.getIfany();

		//======================================================================================

		//PrintWriter out= response.getWriter();  
		JSONObject json = new JSONObject();
		json.put("name", "테스트 입니다...");

		json.put("checktime", checktime);
		json.put("checker", checker);
		json.put("trunk", trunk);
		json.put("idle", idle);
		json.put("temperature", temperature);
		json.put("in_serv_tru1", in_serv_tru1);
		json.put("in_serv_tru2", in_serv_tru2);
		json.put("gateway", gateway);
		json.put("ipt_alarm", ipt_alarm);
		json.put("ifany", ifany);

		out.print(json);

	}

	else if (request.getMethod().equals("POST")) {
		System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		
		trunk = param.getString("trunk", "");
		idle = param.getString("idle", "");
		temperature = param.getString("temperature", "");
		in_serv_tru1 = param.getString("in_serv_tru1", "");
		in_serv_tru2 = param.getString("in_serv_tru2", "");
		gateway = param.getString("gateway", "");
		ipt_alarm = param.getString("ipt_alarm", "");
		ifany = param.getString("ifany", "");


		if (ipt == null) {
			IptDAO.insertInfo(id, checktime, checker, trunk	,idle,temperature,in_serv_tru1,in_serv_tru2	,gateway,ipt_alarm	,ifany);
			System.out.println("인서트!");
		} else {
			//update	
			IptDAO.updateInfo(id, checktime, checker, trunk	,idle,temperature,in_serv_tru1,in_serv_tru2	,gateway,ipt_alarm	,ifany);
			System.out.println("업데이트!");
		}
	}
%>