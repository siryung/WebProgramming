<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%
	response.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	String boardType = request.getParameter("mbti");
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=boardType%> 게시판</title>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://kit.fontawesome.com/e387ad5e3a.js"></script>
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
</head>
<body>

	<!-- 상단 메뉴 -->
	<nav class="navbar">
		<div class="navbar__logo">
			<i class="fab fa-monero"></i> <a href="">MBTI TOWN</a>
		</div>

		<ul class="navbar__menu">
			<li><a href="main.jsp">#Main</a></li>
			<li><a href="">#MBTI board</a></li>
			<li><a href="">#Psychology</a></li>
		</ul>

		<ul class="navbar__user">
			<li><i class="fas fa-user-check"></i></li>
			<li>~님 환영합니다</li>
		</ul>
	</nav>
	
	<!-- 게시판 이름 및 특성 -->
	<div class="Container">
		<div class="Top-Board">
			<font style="font-size: 100px; line-height: 100%; font-weight:bold;"><%=boardType%></font><br>
			<%
				if (boardType != null) {
					switch (boardType) {
					case "INTJ":
			%>
			<font style="font-size: 15px;">용의주도한 전력가들의 모임</font>
			<%
					break;
					case "INTP":
			%>
			<font style="font-size: 15px;">논리적인 사색가들의 모임</font>
			<%
					break;
					case "ENTJ":
			%>
			<font style="font-size: 15px;">대담한 통솔자들의 모임</font>
			<%
					break;
					case "ENTP":
			%>
			<font style="font-size: 15px;">뜨거운 논쟁을 즐기는 변론가들의 모임</font>
			<%
					break;
					case "INFJ":
			%>
			<font style="font-size: 15px;">선의의 옹호자들의 모임</font>
			<%
					break;
					case "INFP":
			%>
			<font style="font-size: 15px;">열정적인 중재자들의 모임</font>
			<%
					break;
					case "ENFJ":
			%>
			<font style="font-size: 15px;">정의로운 사회운동가의 모임</font>
			<%
					break;
					case "ENFP":
			%>
			<font style="font-size: 15px;">재기발란한 활동가의 모임</font>
			<%
					break;
					case "ISTJ":
			%>
			<font style="font-size: 15px;">청렴결백한 논리주의자들의 모임</font>
			<%
					break;
					case "ISFJ":
			%>
			<font style="font-size: 15px;">용감한 수호자들의 모임</font>
			<%
					break;
					case "ESTJ":
			%>
			<font style="font-size: 15px;">엄격한 관리자들의 모임</font>
			<%
					break;
					case "ESFJ":
			%>
			<font style="font-size: 15px;">사교적인 외교관들의 모임</font>
			<%
			
					break;
					case "ISTP":
			%>
			<font style="font-size: 15px;">만능 재주꾼들의 모임</font>
			<%
					break;
					case "ISFP":
			%>
			<font style="font-size: 15px;">호기심 많은 예술가들의 모임</font>
			<%
					break;
					case "ESTP":
			%>
			<font style="font-size: 15px;">모험을 즐기는 사업가들의 모임</font>
			<%
					break;
					case "ESFP":
			%>
			<font style="font-size: 15px;">자유로운 영혼의 연예인들의 모임</font>
			<%
					}
				}
			%>
		</div>
		
		<!-- 백앤드와 연동해서 게시글 출력 : 아직 미구현 예시만 있음, for문 사용하면 쉬울 듯 -->
		<div class="Center-Board">
			<table class="List-Board">
				<thead>
					<tr class="List-top">
						<th style="width: 162px;">말머리</th>
						<th style="width: 540px;">제목</th>
						<th style="width: 135px;">작성자</th>
						<th style="width: 135px;">작성일</th>
						<th style="width: 108px;">좋아요</th>
					</tr>
				</thead>
				<tbody>
					<tr class="List-middle">
						<td>2</td>
						<td style = "text-align: left; padding-left: 10px;"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=1">text제목</a></td>
						<td style = "text-align: left; padding-left: 10px;">웹프</td>
						<td>2020.11.14.</td>
						<td>25</td>
					</tr>
					<tr class="List-middle">
						<td>1</td>
						<td style = "text-align: left; padding-left: 10px;"><a class = "board-title" href="boardView.jsp?mbti=<%=boardType%>&boardID=2">text제목</a></td>
						<td style="text-align: left; padding-left: 10px;">웹프</td>
						<td>2020.11.14.</td>
						<td>25</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<!-- 게시글 목록 밑  -->
		<div class="Botton-Board">
			<div style="float: left;">
			<%
				if (pageNumber != 1) {
			%>
				<a href="mbtiBoard.jsp?mbti=<%=boardType%>&pageNumber=<%=pageNumber - 1%>"	class="board-btn">이전</a>
			<%
				}
				if (true)// if문 조건 달아서 현재 마지막 페이지라면 다음 버튼이 안나오게 해야함(함수 사용)
				{
			%>
				<a href="mbtiBoard.jsp?mbti=<%=boardType%>&pageNumber=<%=pageNumber + 1%>"	class="board-btn">다음</a>
			<%
				}
			%>
			</div>
			<div style="float: right;">
				<a href="boardWrite.jsp?mbti=<%= boardType%>" class="board-btn">글쓰기</a>
			</div>
		</div>
	</div>
</body>
</html>