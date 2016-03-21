<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "",

	web = "", dew = "", app = "", ADV_1 = "", VRS = "", mail = "", FAX_W = "", DBsafer_M = "", file_ = "",
			VRS_DB = "", DBM = "", ifany = "";

	String id = request.getParameter("id").trim();
	//System.out.println("?" + id);
	Backup backup = BackupDAO.selectById(id);

	if (backup != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		//System.out.println("GET!");

		checktime = backup.getCheckTime();
		checker = backup.getChecker();

		web = backup.getWeb();
		dew = backup.getDew();
		app = backup.getApp();
		ADV_1 = backup.getADV_1();
		VRS = backup.getVRS();
		mail = backup.getMail();
		FAX_W = backup.getFAX_W();
		DBsafer_M = backup.getDBsafer_M();
		file_ = backup.getfile_();
		VRS_DB = backup.getVRS_DB();
		DBM = backup.getDBM();
		ifany = backup.getIfany();

	}

	//======================================================================================

	JSONObject json = new JSONObject();

	json.put("checktime", checktime);
	
	
	//System.out.println("check: " + checktime);
	
	
	json.put("checker", checker);
	json.put("web", web);
	json.put("dew", dew);
	json.put("app", app);
	json.put("ADV_1", ADV_1);
	json.put("VRS", VRS);
	json.put("mail", mail);
	json.put("FAX_W", FAX_W);
	json.put("DBsafer_M", DBsafer_M);
	json.put("file_", file_);
	json.put("VRS_DB", VRS_DB);
	json.put("DBM", DBM);
	json.put("ifany", ifany);

	out.print(json);

	if (request.getMethod().equals("POST")) {
		//System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");

		web = param.getString("web", "");
		dew = param.getString("dew", "");
		app = param.getString("app", "");
		ADV_1 = param.getString("ADV_1", "");
		VRS = param.getString("VRS", "");
		mail = param.getString("mail", "");
		FAX_W = param.getString("FAX_W", "");
		DBsafer_M = param.getString("DBsafer_M", "");
		file_ = param.getString("file_", "");
		VRS_DB = param.getString("VRS_DB", "");
		DBM = param.getString("DBM", "");
		ifany = param.getString("ifany", "");

		if (backup == null) {
			BackupDAO.insertInfo(id, checktime, checker, web, dew, app, ADV_1, VRS, mail, FAX_W, DBsafer_M,
					file_, VRS_DB, DBM, ifany);
			//System.out.println("인서트!");
		} else {
			//update	
			BackupDAO.updateInfo(id, checktime, checker, web, dew, app, ADV_1, VRS, mail, FAX_W, DBsafer_M,
					file_, VRS_DB, DBM, ifany);
			//System.out.println("업데이트!");
		}
	}
%>