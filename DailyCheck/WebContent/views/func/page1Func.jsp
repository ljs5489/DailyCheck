<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*, pages.*"%>
<%@page import="org.json.simple.JSONObject"%>

<%
	String checktime = "", checker = "", ars = "", mail = "", fax = "", vrs = "", messanger = "",
			leaseloan = "", visual = "", images = "", font = "", links = "", bbs = "", indexsize = "",
			tra1time = "", tra1val = "", tra2time = "", tra2val = "",
			WMtime = "", WMstate = "", WMpump = "", WMaircon = "", WMtemperature = "", WEtime = "",
			WEstate = "", WEpump = "", WEaircon = "", WEtemperature = "", EMtime = "", EMstate = "",
			EMpump = "", EMaircon = "", EMtemperature = "", EEtime = "", EEstate = "", EEpump = "",
			EEaircon = "", EEtemperature = "", ifany = "";

	String id=request.getParameter("id").trim();
	System.out.println("?"+id);
	Precheck precheck = PrecheckDAO.selectById(id);

	if (precheck != null && request.getMethod().equals("GET")) {
		//GET방식으로 데이터들을 DB에서 가져온 후 각각의 이름으로 담는다.
		System.out.println("GET!");
		
		checktime = precheck.getCheckTime();
		
		checker = precheck.getChecker();
		ars = precheck.getArs();
		mail = precheck.getMail();
		fax = precheck.getFax();

		vrs = precheck.getVrs();
		messanger = precheck.getMessanger();
		leaseloan = precheck.getLeaseloan();
		visual = precheck.getVisual();
		images = precheck.getImages();
		font = precheck.getFont();
		links = precheck.getLinks();

		bbs = precheck.getBbs();
		indexsize = precheck.getIndexsize();
		
		tra1time = precheck.getTra1time();
		tra1val = precheck.getTra1val();
		tra2time = precheck.getTra2time();
		tra2val = precheck.getTra2val();

		WMtime = precheck.getWMtime();
		WMstate = precheck.getWMstate();
		WMpump = precheck.getWMpump();
		WMaircon = precheck.getWMaircon();
		WMtemperature = precheck.getWMtemperature();

		WEtime = precheck.getWEtime();
		WEstate = precheck.getWEstate();
		WEpump = precheck.getWEpump();
		WEaircon = precheck.getWEaircon();
		WEtemperature = precheck.getWEtemperature();

		EMtime = precheck.getEMtime();
		EMstate = precheck.getEMstate();
		EMpump = precheck.getEMpump();
		EMaircon = precheck.getEMaircon();
		EMtemperature = precheck.getEMtemperature();

		EEtime = precheck.getEEtime();
		EEstate = precheck.getEEstate();
		EEpump = precheck.getEEpump();
		EEaircon = precheck.getEEaircon();
		EEtemperature = precheck.getEEtemperature();

		ifany = precheck.getIfany();

	}
	//======================================================================================

	//PrintWriter out= response.getWriter();  
	JSONObject json = new JSONObject();
	json.put("name", "테스트 입니다...");
	
	json.put("checktime", checktime);
	
	System.out.println("check: "+checktime);
	
	json.put("checker", checker);
	json.put("ars", ars);
	json.put("mail", mail);
	json.put("fax", fax);
	json.put("vrs", vrs);
	json.put("messanger", messanger);
	json.put("leaseloan", leaseloan);
	json.put("visual", visual);
	json.put("images", images);
	json.put("font", font);
	json.put("links", links);
	json.put("bbs", bbs);
	json.put("indexsize", indexsize);
	
	json.put("tra1time", tra1time);
	json.put("tra1val", tra1val);
	json.put("tra2time", tra2time);
	json.put("tra2val", tra2val);	
	
	json.put("WMtime", WMtime);
	json.put("WMstate", WMstate);
	json.put("WMpump", WMpump);
	json.put("WMaircon", WMaircon);
	json.put("WMtemperature", WMtemperature);
	json.put("WEtime", WEtime);
	json.put("WEstate", WEstate);
	json.put("WEpump", WEpump);
	json.put("WEaircon", WEaircon);
	json.put("WEtemperature", WEtemperature);
	json.put("EMtime", EMtime);
	json.put("EMstate", EMstate);
	json.put("EMpump", EMpump);
	json.put("EMaircon", EMaircon);
	json.put("EMtemperature", EMtemperature);
	json.put("EEtime", EEtime);
	json.put("EEstate", EEstate);
	json.put("EEpump", EEpump);
	json.put("EEaircon", EEaircon);
	json.put("EEtemperature", EEtemperature);
	json.put("ifany", ifany);
	
	out.print(json);

	if (request.getMethod().equals("POST")) {
		System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		
		
		checktime = param.getString("checktime", "");
		checker = param.getString("checker", "");
		ars = param.getString("ars", "");
		mail = param.getString("mail", "");
		fax = param.getString("fax", "");
		vrs = param.getString("vrs", "");
		messanger = param.getString("messanger", "");
		leaseloan = param.getString("leaseloan", "");
		visual = param.getString("visual", "");
		images = param.getString("images", "");
		font = param.getString("font", "");
		links = param.getString("links", "");
		bbs = param.getString("bbs", "");
		indexsize = param.getString("indexsize", "");
		
		tra1time = param.getString("tra1time", "");
		tra1val = param.getString("tra1val", "");
		tra2time = param.getString("tra2time", "");
		tra2val = param.getString("tra2val", "");

		WMtime = param.getString("WMtime", "");
		WMstate = param.getString("WMstate", "");
		WMpump = param.getString("WMpump", "");
		WMaircon = param.getString("WMaircon", "");
		WMtemperature = param.getString("WMtemperature", "");

		WEtime = param.getString("WEtime", "");
		WEstate = param.getString("WEstate", "");
		WEpump = param.getString("WEpump", "");
		WEaircon = param.getString("WEaircon", "");
		WEtemperature = param.getString("WEtemperature", "");

		EMtime = param.getString("EMtime", "");
		EMstate = param.getString("EMstate", "");
		EMpump = param.getString("EMpump", "");
		EMaircon = param.getString("EMaircon", "");
		EMtemperature = param.getString("EMtemperature", "");

		EEtime = param.getString("EEtime", "");
		EEstate = param.getString("EEstate", "");
		EEpump = param.getString("EEpump", "");
		EEaircon = param.getString("EEaircon", "");
		EEtemperature = param.getString("EEtemperature", "");

		ifany = param.getString("ifany", "");

		if (precheck == null) {
			PrecheckDAO.insertInfo(id, checktime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual,
					images, font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature,
					WEtime, WEstate, WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon,
					EMtemperature, EEtime, EEstate, EEpump, EEaircon, EEtemperature, ifany,tra1time,tra1val,tra2time,tra2val);
			System.out.println("인서트!");
		} else {
			//update	
			PrecheckDAO.updateInfo(id, checktime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual,
					images, font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature,
					WEtime, WEstate, WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon,
					EMtemperature, EEtime, EEstate, EEpump, EEaircon, EEtemperature, ifany,tra1time,tra1val,tra2time,tra2val);

			System.out.println("업데이트!");
		}
	}
%>