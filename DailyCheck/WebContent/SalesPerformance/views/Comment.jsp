<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>
<%@ page import="comments.*, tools.* " %>


<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp" %>




<title>Comment</title>
<style>
    div.container.main { min-height: 700px; }
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
    $("div.pagination a").click(function() {
        $("input[name=pg]").val($(this).attr("data-page"));
        $("form").submit();
    })
})
</script>


</head>
<%

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


%>
<body>

<%@ include file="/SalesPerformance/import/nav.jsp" %>

<div class="container main">
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
                <option value="0">검색없음</option>
                <option value="1">사용자</option>
                <option value="2">URL</option>
                <option value="3">구분</option>
                <option value="4">내용</option>
            </select>

            <input type="text" name="st" />
            <button type="submit" class="btn btn-small search">검색</button>
        </div>

        <table class="table table-condensed table-bordered">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>    
                    <th>글쓴이</th>                
                    <th>일시</th>
                    <th>조회</th>                     
                    <th>추천</th>
                </tr>
            </thead>
            <tbody>                
                <% for (Comment cmt : comments) { %>
                     <tr data-id="<%= cmt.getId() %>" >                      
                        <td style="width:10%"><%= cmt.getId() %></td>
                        <td style="width:45%"><%= cmt.getTitle() %></td>
                        <td style="width:15%"><%= cmt.getWriter() %></td>        
                        <td style="width:20%"><%= cmt.getEntry_date() %></td>
						<td style="width:5%"><%= 1 %></td>
						<td style="width:5%"><%= 2 %></td>
                    </tr>
                <% } %>
                
            </tbody>
        </table>
        <div class="pull-left">
            <button type="submit" class="btn btn-small">글쓰기</button>
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
