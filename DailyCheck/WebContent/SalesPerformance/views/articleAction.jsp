<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="comments.*, tools.* " %>


<%
    RequestParameter param = new RequestParameter(request);
  	//int bid = param.getInt("bid", 0);
    int aid = param.getInt("aid", 0);
    String cmd = param.getString("cmd", "");
    
    
    //response.sendRedirect("Comment.jsp");
    
    
   // Comment article = CommentDAO.selectById(aid);
    
    if (cmd.equals("delete")) {
        //if (boardService.canDeleteArticle()) {
        //    ArticleDAO.deleteById(aid);
        //} else 
        	System.out.println(2);
        	response.sendRedirect("Comment.jsp");
        	//throw new UnauthorizedAccessException("게시글 삭제 권한 없음");
    } 
    /*else if (cmd.equals("notice")) {
        if (boardService.canManageBoard()) {
            article.setNotice(!article.isNotice());
            ArticleDAO.update(article);
        } else throw new UnauthorizedAccessException("게시글 관리 권한 없음");
    }*/
    //String targetUrl = "Comment.jsp?" + 
    //        request.getQueryString().replaceAll("&?aid=[0-9]+","").replaceAll("&?cmd=[a-z]+", "");
	//System.out.println(targetUrl);
    //response.sendRedirect(targetUrl);
%>
