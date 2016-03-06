<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="comments.*, tools.* " %>


<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp" %>




<title>Comment</title>
<style>
    div.container.main { min-height: 500px; }
    thead { background-color: #eee; }
    div.form-inline { margin-bottom: 5px; }
    select[name=sz] { width: 60px; }
    select[name=od] { width: 100px; }
    select[name=ss] { width: 100px; margin-left: 100px; }
    table.table th:first-child { width: 20px; }
    tbody tr:hover { background-color: #FFC; cursor: pointer; }


</style>


<script>

//Override용
function onResized(){

}



$(function(){	
	
	nextPage = "<%= EnvVal.NEXT_Comment %>";
    $("select[name=od], select[name=sz]").change(function() {
        $("form").submit();
    })
    $("tbody tr").click(function() {
        location.href = "Comment_Article.jsp" + location.search + "&aid=" + $(this).attr("data-id");
    })
    $("#createArticle").click(function() {
        location.href = "Comment_Create.jsp" + location.search ;
    })    
    
    $("div.pagination a").click(function() {
        $("input[name=pg]").val($(this).attr("data-page"));
        $("form").submit();
    })
    
	$("#menuComment").css("background-color","#cccccc");
	$("#menuComment").css("color","#111111");
	$("#menuComment").css("font-weight","bold");
})
</script>


</head>
<%


if(request.getQueryString() == null){
	response.sendRedirect("Comment.jsp?pg=1&od=0&ss=0&st=&sz=10");
}



RequestParameter param = new RequestParameter(request);
String pg = param.getString("pg", "1");
String sz = param.getString("sz", "10");
String od = param.getString("od", "0");
String ss = param.getString("ss", "0");
String st = param.getString("st", "");

int currentPage = Integer.parseInt(pg);
int pageSize = Integer.parseInt(sz);
int srchType = Integer.parseInt(ss);
int order = Integer.parseInt(od);

String srchText = param.getString("st", "");

int recordCount = CommentDAO.getRecordCount(srchType, srchText);
int pageCount = (recordCount + pageSize - 1 ) / pageSize;
int basePage = ((currentPage - 1) / 10) * 10;

ArrayList<Comment> comments = CommentDAO.selectAll(pg,sz,od,ss,st);

for (int i=0;i<comments.size();i++) {
	String tempTitle = comments.get(i).getTitle();
	String tempWriter = comments.get(i).getWriter();
	
	//System.out.println(tempTitle+" : "+tempTitle.length());
	//System.out.println(tempWriter+" : "+tempWriter.length());
	
	if(tempTitle.length() > 55)	comments.get(i).setTitle(tempTitle.substring(0,70)+"...");
	if(tempWriter.length() > 15) comments.get(i).setWriter(tempWriter.substring(0,15)+"...");
}

%>
<body>

<%@ include file="/SalesPerformance/import/nav.jsp" %>

<div class="container main" style="overflow-y:auto; overflow-x:hidden;">
    <h1>Comments</h1>
    <hr />

    <form>
        <input type="hidden" name="pg" value="1" />

        <div class="form-inline">
            <span>정렬:</span>
            <select name="od"> 
				<option value="0" <%= order==0 ? "selected" : "" %>>없음</option>
				<option value="1" <%= order==1 ? "selected" : "" %>>제목</option>
				<option value="2" <%= order==2 ? "selected" : "" %>>이름</option>
				<option value="3" <%= order==3 ? "selected" : "" %>>시간</option>
				
			
				
            </select>
            <select name="ss">
                <option value="0"<%= srchType==0 ? "selected" : "" %>>검색없음</option>
                <option value="1"<%= srchType==1 ? "selected" : "" %>>글쓴이</option>
                <option value="2"<%= srchType==2 ? "selected" : "" %>>제목</option>
                <option value="3"<%= srchType==3 ? "selected" : "" %>>내용</option>
            </select>

            <input type="text" name="st" value="<%= st %>" />
            <button type="submit" class="btn btn-small search">검색</button>
        </div>

        <table class="table table-condensed table-bordered">
            <thead>
                <tr>
                    <th style="width:5%;"><h5 style="color:black;">번호</h5></th>
                    <th class="title" style="width:55%;"><h5 style="color:black;">제목</h5></th>    
                    <th style="width:15%;"><h5 style="color:black;">글쓴이</h5></th>                
                    <th style="width:15%;"><h5 style="color:black;">작성일</h5></th>
                    <th style="width:5%;"><h5 style="color:black;">조회</h5></th>                     
                    <th style="width:5%;"><h5 style="color:black;">추천</h5></th>
                </tr>
            </thead>
            <tbody>                
                <% for (Comment cmt : comments) { %>
                     <tr data-id="<%= cmt.getId() %>" >                      
                        <td><h5><%= cmt.getId() %></h5></td>
                        <td><h4>                    
                        		<% if(cmt.getPicture()==1){ %>
                        		   <i class="fa fa-file-picture-o"></i>         				
                        		<% } %>
                        		<%= cmt.getTitle() %> 
                        		<span style="font-size:10px; color:orange;">[<%= cmt.getReplyCount() %>]</span>      					
                        </h4></td>
                        <td><h4><%= cmt.getWriter() %></h4></td>        
                        <td><h5><%= cmt.getEntry_date() %></h5></td>
						<td><h5><%= cmt.getView() %></h5></td>
						<td><h5><%= cmt.getLikeIt() %></h5></td>
                    </tr>
                <% } %>
                
            </tbody>
        </table>
        <div style="float:left" id="createArticle" class="btn btn-default">
      		<i class="fa fa-plus-square-o"></i> 글쓰기
      	</div>


        <div class="pull-right form-inline">
            <span>화면크기:</span>
            <select name="sz">
                <option <%= pageSize==10 ? "selected" : "" %>>10</option>
                <option <%= pageSize==15 ? "selected" : "" %>>15</option>
                <option <%= pageSize==30 ? "selected" : "" %>>30</option>
                <option <%= pageSize==60 ? "selected" : "" %>>60</option>
                <option <%= pageSize==100 ? "selected" : "" %>>100</option>
            </select>
        </div>
       <div class="pagination pagination-small pagination-centered">
            <ul>
                <% if (basePage > 0) { %>
                    <li><a data-page="<%= basePage %>">Prev</a></li>
                <% } %>
                <% for (int i=1; i <= 10 && basePage + i <= pageCount; ++i) { %>
                    <li class='<%= basePage+i==currentPage ? "active" : "" %>'>
                        <a data-page="<%= basePage+i %>"><%= basePage + i %></a></li>
                <% } %>
                <% if (basePage + 11 <= pageCount) { %>
                    <li><a data-page="<%= basePage+11 %>">Next</a></li>
                <% } %>
            </ul>
        </div>

    </form>

</div>
</body>
</html>
