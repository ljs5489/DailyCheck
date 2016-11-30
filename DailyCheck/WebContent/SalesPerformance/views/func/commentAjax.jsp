<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, tools.*, pages.*, comments.*, java.text.SimpleDateFormat, java.util.Calendar "%>
<%@page import="org.json.simple.JSONObject"%>



<%
	RequestParameter param = new RequestParameter(request);

	String temp = param.getString("writer","");


	SystemWriterLog.writeLog(temp);
	if(temp.equals("save")){
		SystemWriterLog.writeLog("same");
		
	}
	if(true){
		String writer = param.getString("writer","");
		String password = param.getString("password","");
		String content = param.getString("content","");
		
		
		SystemWriterLog.writeLog(writer);
		SystemWriterLog.writeLog(password);
		SystemWriterLog.writeLog(content);
		
		
		CommentDAO.insertComment(writer,password,content,"테스트입니다...");
		
	}else{
		SystemWriterLog.writeLog("!!");
		
	}
	

	
	
	
	
%>