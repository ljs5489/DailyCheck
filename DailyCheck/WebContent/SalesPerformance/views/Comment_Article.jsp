<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.*, java.net.*"%>
<%@ page import="comments.*, tools.* "%>

<html>
<head>

<%@ include file="/SalesPerformance/import/include.jsp"%>



<%
	InetAddress Address = InetAddress.getLocalHost();
	String userIP = Address.getHostAddress();
	String userName = Address.getHostName();

	RequestParameter param = new RequestParameter(request);
	int aid = param.getInt("aid", 0);

	System.out.println(aid);
	System.out.println(userIP);
	System.out.println(userName);

	Comment cmt = CommentDAO.selectById(aid, userIP, userName);
	String urlDelete = "Comment_Delete.jsp?cmd=delete&"
			+ request.getQueryString();
	String urlList = "Comment.jsp?"
			+ request.getQueryString().replaceAll("&?aid=[0-9]+&?", "");
	String urlEdit = "Comment_Edit_Check.jsp?cmd=delete&"
			+ request.getQueryString();
%>

<title>Comment</title>



<script>
	//Override용
	function onResized() {

	}

	$(function() {
		$("#deleteArticle").click(function(){
			 location.href = "<%=urlDelete%>";			
		});
		$("#gotoList").click(function(){
			 location.href = "<%=urlList%> ";
		});
		$("#editArticle").click(function(){
			 location.href = "<%=urlEdit%>";	
		});
	})
</script>


</head>

<body>

	<%@ include file="/SalesPerformance/import/nav.jsp"%>

	<div class="container main" style="overflow-y: auto;">
		<h1>제목입니다.</h1>
		<form style="margin-bottom:10px;">
			<div>
				<span> 제목 </span> <span><%=cmt.getTitle()%></span>
			</div>
			<div>
				<span> 글쓴이 </span> <span><%=cmt.getWriter()%></span> <span>
					조회 </span> <span><%=cmt.getView()%></span> <span> 댓글 </span> <span><%=20%></span>



				<div id="deleteArticle" style="margin: 5px; float: right"
					class="btn btn-default">
					<i class="fa fa-yelp"></i> 삭제
				</div>
				<div id="editArticle" style="margin: 5px; float: right"
					class="btn btn-default">
					<i class="fa fa-stack-overflow"></i> 수정
				</div>

				<div id="gotoList" style="margin: 5px; float: right"
					class="btn btn-default">
					<i class="fa fa-file-text-o"></i> 목록
				</div>

				<div id="likeIt" style="margin: 5px; float: right"
					class="btn btn-default">
					<i class="fa fa-thumbs-o-up"></i> 좋아요!
				</div>
			</div>
			<hr />
			<div style="min-height: 300px;">
				<h4><%=cmt.getContent()%>
				</h4>
				<!-- 
			<h5>
				회사가 당신에게 알려주지 않는 50가지 비밀
				<책 Corporate Confidential 신시야 샤피로 지음> 오늘도 일 잘하고 회사에 돈도 마니 벌어 주는
				많은 직장인들이 이유도 모르는 채로 소리없이 밀려나고 있다. 일만 잘 한다고 안전빵은 아니다. 직원을 회사로부터 보호하는
				법들이 쌔져 직원이 회사를 고소하면 머리가 아프므로 그 빌미를 준 상사나 인사부부터 작살난다. 해서 회사는 전처럼 직원들의
				잘못을 솔직하게 찝어 줄 수 없다. 쓸모없게 된 직원을 지 발로 조용히 나가게 할 뿐이다. 안 될 일을 하라든 지 멀리
				보내는 등 회사가 쓰는 조용한 수법들은 교묘해 당사자는 눈치 채기가 어렵고 전문 변호사 등을 써서 법망을 살짝 피해가며
				쓸모없는 직원들의 법적 권리를 무력화하기도 한다. 법만 바라 볼 수 없으니 직원은 직접 스스로를 지켜야 할 것이다. 회사가
				늘 직원에 대하여 재고 있는 것은 도대체 무엇일까? 회사는 어떤 직원을 신임하고 어떤 직원을 제거할까? 미국 대기업에서
				인력개발팀장과 부사장을 하며 이러한 회사의 비밀 규정을 다루어 왔던 저자가 그동안 닫힌 회의실 안에서 중역들 사이에서만
				얘기되던 회사내 비밀 인사 규칙을 공개했다. 회사원은 친구를 사귀거나, 폼을 잡으려고가 아니라 자신과 가족을 위해 돈을
				벌려고 회사에 다닌다. 작심하고 법을 악용하고 직원들을 착취하는 회사들도 있으나 회사는 사회를 먹여 살리는 사회의
				미래이다. 직원들이 뜻을 이루기 위해서는 회사에 맞추어야 할 것이다. 자신이 아니라 회사의 편에 서라. 행동과 선택
				하나하나 회사 편에 설수록 당신의 자리가 튼튼해진다. 회사가 쓸모 있다고 여기는 직원은 회사를 살리고, 회사의 돈을
				아끼고, 회사의 방침을 밀고, 회사를 시장에서 앞서게 하고, 회사가 이긴다고 바람 잡는 사람이다. 지 것부터 챙기고, 회사
				돈을 헤프게 쓰고, 내놓고 회사를 씹고, 남보다 쳐지고, 부정적이거나, 동료보다 훨씬 더 많이 받거나, 위와 안 좋거나,
				사적으로 쉬었으면 회사에 쓸모가 없다. 구조조정, 감원, 정리해고.. 말이야 어떻건 짤리는 직원은 회사에 더 이상 쓸모없게
				되었기 때문이다. 자신이 일하던 부서가 통째로 날라 가도 없어서는 안 될 사람 곧 쓸모 있는 사람은 다른 부서로 가서라도
				회사에 남게 된다. 회사의 홍보방침대로 정직한 협상으로 계약을 못 따내 잘린 분도 많다. 회사가 사회에 하는 번지르한
				선전이 아니라 그 뒤에 감춰있는 회사에게 진짜로 필요한 것을 찾으라. 내놓고 말해 주지는 않지만 <회사가 절대로 용서
					못하는 행동> 1. 인력개발팀의 첫째 임무는 직원을 돕는 것이 아니라 직원들로부터 회사를 보호하는 것이다.
				당신 편이 아니니 어렵다고, 개인 사정이 있다고, 회사나 상사에 대한 본심이 있다고, 모든 권리가 보호된다는 감언이설이
				있더라도 절대 찾지 말라. 인력개발팀과 말한 내용은 위에게 보내지기 때문에 자기에게 먼저 않했다고 위로부터 가차 없이
				빠따를 맞게 되어 있으므로 문제가 생기면 반드시 위와 직접 말하라. 2. 실제 나이보다 몇 살처럼 일하느냐가 중요하다.
				젊은이는 남보다 15분 먼저 나와 15분 늦게 나가 강한 책임감을 보이고, 열정적인 제안에 앞서 먼저 회사 정책을
				존중한다는 믿음을 주고, 필요한 일을 익히고, 자신의 능력을 보여야 한다. 나이 많은 분은 건강하게 보이고, 비즈니스와
				테크놀로지에서 최신의 흐름을 따르고, 구식으로 보일 외모를 버려야 할 것이다. 3. 회사가 직원에게 듣고, 보고 싶은 것은
				긍정적인 지지 하나뿐이다. 회사의 방침에 찬성하면 백퍼센트 지지하고 아니면 입을 다물면 안전빵이다. 4. 높은 자리에도
				항상 위가 있으니 위와 함께 일을 하는 법을 배우라. 회사는 평사원보다는 자기편이라고 입증된 관리자들 편에 선다. 상사는
				모든 기회의 문을 지키는 자이며 그에게 찍히면 끝. 모든 위는 불안한 자리에 앉아 있어 부하가 자기 자리를 위협하거나
				창피를 줬다고 여기면 물불을 안 가린다. 당신이 얼마나 잘난 지 보여주려고 위에 돌아갈 공을 낚아채거나 절대로 당신이
				그보다 더 잘할 수 있다고 여기지 말라. 자신이 잘 나 입사했다고들 여기지만 회사는 직원이 회사에 존경심을 보이기 이전에
				잘난 체 하는 것을 아주 싫어한다. 남보다 내가 똑똑하다는 것을 보여주려고 튀지 마라. 
		</h5>
			 -->

			</div>
			<hr />

		</form>
		<div>	
			<div style="float:left;"><h5>작성자:</h5> <input type="text" name="writer" value="" /></div>				
			<div style="float:left; margin-left:10px;"><h5>비밀번호:</h5> <input type="text" name="title" value="" /></div>
				
		</div>
					<div id="gotoList" style="margin: 5px; float: right"
					class="btn btn-default">
					<i class="fa fa-file-text-o"></i> 등록
			</div>	
		<textarea id="articleComment" style="width:100%"></textarea>
		</div>

		<br />
		
		
		<br />
	</div>
</body>
</html>
