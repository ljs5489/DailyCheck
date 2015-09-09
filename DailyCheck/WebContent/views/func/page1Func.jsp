<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, tools.*"%>

<%
	String ifany = "";
	String ars = "";
	String mail = "";
	String checker = "";
	String checkTime = "";

	String id = GetDate.getDate(); //날짜는 변경될 수 있음!
	Precheck precheck = PrecheckDAO.selectById(id);

	if (request.getMethod().equals("POST")) {
		System.out.println("POST!!!");

		ifany = request.getParameter("ifany");
		ars = request.getParameter("ars");
		mail = request.getParameter("mail");
		checker = request.getParameter("checker");
		checkTime = request.getParameter("checkTime");

		System.out.println("checkTime:" + checkTime);
		System.out.println("checker:" + checker);

		System.out.println("ars:" + ars);
		System.out.println("mail:" + mail);
	}
	
	PrecheckDAO.simpleUpdateInfo(id, checkTime, checker, ars, mail, ifany);
	
	
	
	/*
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
			*/
%>