<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", 
	checker = "",
	ebilling = "",
	fin_SMS = "",
	funding_SMS = "",
	del_M = "",
	leave_Mng = "",
	fax_SMS = "",
	ifany = "";

	String id=request.getParameter("id").trim();
	//System.out.println("?" + id);
	Batchjob batchjob = BatchjobDAO.selectById(id);

	if (batchjob != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//System.out.println("GET!");
		
		/*이거 주의*/
		checktime = batchjob.getCheckTime();		
		checker = batchjob.getChecker();
		
		ebilling = batchjob.getEbilling();
		fin_SMS = batchjob.getFin_SMS();
		funding_SMS = batchjob.getFunding_SMS();
		del_M = batchjob.getDel_M();
		leave_Mng = batchjob.getLeave_Mng();
		fax_SMS = batchjob.getFax_SMS();
		ifany = batchjob.getIfany();

		

	}

	//======================================================================================

	JSONObject json = new JSONObject();
	json.put("checktime", checktime);
	json.put("checker", checker);
	json.put("ebilling", ebilling);
	json.put("fin_SMS", fin_SMS);
	json.put("funding_SMS", funding_SMS);
	json.put("del_M", del_M);
	json.put("leave_Mng", leave_Mng);
	json.put("fax_SMS", fax_SMS);
	json.put("ifany", ifany);
	
	out.print(json);

	
	if (request.getMethod().equals("POST")) {
		//System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		ebilling = param.getString("ebilling", "");
		fin_SMS = param.getString("fin_SMS", "");
		funding_SMS = param.getString("funding_SMS", "");
		del_M = param.getString("del_M", "");
		leave_Mng = param.getString("leave_Mng", "");
		fax_SMS = param.getString("fax_SMS", "");
		ifany = param.getString("ifany", "");		

		if (batchjob == null) {
			BatchjobDAO.insertInfo(id, checktime, checker, ebilling, fin_SMS, funding_SMS, del_M, leave_Mng, fax_SMS, ifany);
			//System.out.println("인서트!");
		} else {
			//update	
			BatchjobDAO.updateInfo(id, checktime, checker, ebilling, fin_SMS, funding_SMS, del_M, leave_Mng, fax_SMS, ifany);
			//System.out.println("업데이트!");
		}
	}
%>