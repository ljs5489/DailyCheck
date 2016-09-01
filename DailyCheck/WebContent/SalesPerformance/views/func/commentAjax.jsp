<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, tools.*, pages.*, comments.*, java.text.SimpleDateFormat, java.util.Calendar "%>
<%@page import="org.json.simple.JSONObject"%>



<%

	request.setCharacterEncoding("UTF-8"); //필수
	
	String temp = request.getParameter("writer").trim();
	SystemWriterLog.writeLog(temp);
	if(temp.equals("save")){
		SystemWriterLog.writeLog("same");
		
	}
	if(true){
		String writer=request.getParameter("writer").trim();
		String password=request.getParameter("password").trim();
		String content=request.getParameter("content").trim();
		
		SystemWriterLog.writeLog(writer);
		SystemWriterLog.writeLog(password);
		SystemWriterLog.writeLog(content);
		
		
		CommentDAO.insertComment(writer,password,content,"테스트입니다...");
		
	}else{
		SystemWriterLog.writeLog("!!");
		
	}
	

	
	
	
	
%>