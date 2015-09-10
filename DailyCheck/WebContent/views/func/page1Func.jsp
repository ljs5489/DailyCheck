<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>

<%
	String checkTime = "", checker = "", ars = "", mail = "", fax = "", vrs = "", messanger = "",
			leaseloan = "", visual = "", images = "", font = "", links = "", bbs = "", indexsize = "",
			WMtime = "", WMstate = "", WMpump = "", WMaircon = "", WMtemperature = "", WEtime = "",
			WEstate = "", WEpump = "", WEaircon = "", WEtemperature = "", EMtime = "", EMstate = "",
			EMpump = "", EMaircon = "", EMtemperature = "", EEtime = "", EEstate = "", EEpump = "",
			EEaircon = "", EEtemperature = "", ifany = "";

	String id = GetDate.getDate(); //날짜는 변경될 수 있음!
	Precheck precheck = PrecheckDAO.selectById(id);

	if (request.getMethod().equals("POST")) {
		System.out.println("AJAX POST!!!");

		RequestParameter param = new RequestParameter(request);
		checkTime = param.getString("checkTime", "");
		checker = param.getString("checker", "");
		ars = param.getString("ars", "");
		mail = param.getString("mail", "123");
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

		WMtime = param.getString("WMtime", "");
		WMstate = param.getString("WMstate", "");
		WMpump = param.getString("WMpump", "");
		WMaircon = param.getString("WMaircon", "");
		WMtemperature = param.getString("WMtemperature", "");
		System.out.println("WMtemperature:" + WMtemperature);

		WEtime = param.getString("WEtime", "");
		WEstate = param.getString("WEstate", "");
		WEpump = param.getString("WEpump", "");
		WEaircon = param.getString("WEaircon", "");
		WEtemperature = param.getString("WEtemperature", "");
		System.out.println("WEtemperature:" + WEtemperature);

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

		System.out.println("checkTime:" + checkTime);
		System.out.println("checker:" + checker);

		System.out.println("ars:" + ars);
		System.out.println("mail:" + mail);
	}

	PrecheckDAO.updateInfo(id, checkTime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual, images,
			font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature, WEtime, WEstate,
			WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon, EMtemperature, EEtime, EEstate,
			EEpump, EEaircon, EEtemperature, ifany);

	if (precheck == null) {
		PrecheckDAO.insertInfo(id, checkTime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual,
				images, font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature, WEtime,
				WEstate, WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon, EMtemperature,
				EEtime, EEstate, EEpump, EEaircon, EEtemperature, ifany);
		System.out.println("인서트!");
	} else {
		//update	
		PrecheckDAO.updateInfo(id, checkTime, checker, ars, mail, fax, vrs, messanger, leaseloan, visual,
				images, font, links, bbs, indexsize, WMtime, WMstate, WMpump, WMaircon, WMtemperature, WEtime,
				WEstate, WEpump, WEaircon, WEtemperature, EMtime, EMstate, EMpump, EMaircon, EMtemperature,
				EEtime, EEstate, EEpump, EEaircon, EEtemperature, ifany);
	
		System.out.println("업데이트!");
	}
%>