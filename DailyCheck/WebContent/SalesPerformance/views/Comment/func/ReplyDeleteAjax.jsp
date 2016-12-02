<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.ArrayList, tools.*, pages.*, comments.*, java.text.SimpleDateFormat, java.util.Calendar "%>
<%@ page import="org.json.simple.JSONObject"%>
<%@ page import="java.net.*"%>

<%	
	RequestParameter param = new RequestParameter(request);

	int boardId = param.getInt("bid", 0);
	int articleId = param.getInt("aid", 0);
	int category = param.getInt("ct", 0);

	String chkPW = param.getString("UTF-8","chkPW","");
	String sid = param.getString("UTF-8","sid","");
	String pid = param.getString("UTF-8","pid","");
	
	SystemWriterLog.writeLog("chkPW : "+chkPW);
	//SystemWriterLog.writeLog("sid : "+sid);
	//SystemWriterLog.writeLog("pid : "+pid);
	
	String returnIt;
	boolean processed = false;
	
	if(ReplyDAO.checkPW(sid, pid, chkPW, false)){
		SystemWriterLog.writeLog(pid+"의"+sid+"댓글이 삭제되었습니다.");
		returnIt = "삭제되었습니다.";
		processed = true;
		ReplyDAO.deleteReply(sid, pid);
	}
	else{
		returnIt = "비밀번호가 일치하지 않습니다.";	
		processed = false;
		SystemWriterLog.writeLog("비밀번호가 일치하지 않습니다.");
	}
	
	JSONObject json = new JSONObject();
	json.put("res", returnIt);
	json.put("processed", processed);
	
	out.print(json);	
	
%>