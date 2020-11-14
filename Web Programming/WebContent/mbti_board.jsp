<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MBTI 게시판</title>
<link rel="stylesheet" type="text/css" href="board.css">
<style type="text/css">
a, a:hover {
	color: #000000;
}
a {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<%
		response.setCharacterEncoding("UTF-8");
	PrintWriter script = response.getWriter();
	String boardType = request.getParameter("mbti");
	int pageNumber = 1;
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	%>
	<nav style="border: 1px solid #dddddd;">
		<h3 align="center">메뉴가 들어갈 곳</h3>
	</nav>
	<div class="Container">
		<div class="Top-Board">
			<h1><%=boardType%></h1>
			<%
				if (boardType != null) {
					switch (boardType) {
					case "INTJ":
			%>
			<h5 style="font-size: 15px;">용의주도한 전력가들의 모임</h5>
			<%
					break;
					case "INTP":
			%>
			<h5 style="font-size: 15px;">논리적인 사색가들의 모임</h5>
			<%
					break;
					case "ENTJ":
			%>
			<h5 style="font-size: 15px;">대담한 통솔자들의 모임</h5>
			<%
					break;
					case "ENTP":
			%>
			<h5 style="font-size: 15px;">뜨거운 논쟁을 즐기는 변론가들의 모임</h5>
			<%
					break;
					case "INFJ":
			%>
			<h5 style="font-size: 15px;">선의의 옹호자들의 모임</h5>
			<%
					break;
					case "INFP":
			%>
			<h5 style="font-size: 15px;">열정적인 중재자들의 모임</h5>
			<%
					break;
					case "ENFJ":
			%>
			<h5 style="font-size: 15px;">정의로운 사회운동가의 모임</h5>
			<%
					break;
					case "ENFP":
			%>
			<h5 style="font-size: 15px;">재기발란한 활동가의 모임</h5>
			<%
					break;
					case "ISTJ":
			%>
			<h5 style="font-size: 15px;">청렴결백한 논리주의자들의 모임</h5>
			<%
					break;
					case "ISFJ":
			%>
			<h5 style="font-size: 15px;">용감한 수호자들의 모임</h5>
			<%
					break;
					case "ESTJ":
			%>
			<h5 style="font-size: 15px;">엄격한 관리자들의 모임</h5>
			<%
					break;
					case "ESFJ":
			%>
			<h5 style="font-size: 15px;">사교적인 외교관들의 모임</h5>
			<%
			
					break;
					case "ISTP":
			%>
			<h5 style="font-size: 15px;">만능 재주꾼들의 모임</h5>
			<%
					break;
					case "ISFP":
			%>
			<h5 style="font-size: 15px;">호기심 많은 예술가들의 모임</h5>
			<%
					break;
					case "ESTP":
			%>
			<h5 style="font-size: 15px;">모험을 즐기는 사업가들의 모임</h5>
			<%
					break;
					case "ESFP":
			%>
			<h5 style="font-size: 15px;">자유로운 영혼의 연예인들의 모임</h5>
			<%
					}
				}
			%>
		</div>
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
						<td>1</td>
						<td style="text-align: left; padding-left: 10px;"><a href="board_view.jsp?boardID=1">text제목</a></td>
						<td style="text-align: left; padding-left: 10px;">웹프</td>
						<td>2020.11.14.</td>
						<td>25</td>
					</tr>
					<tr class="List-middle">
						<td>2</td>
						<td style="text-align: left; padding-left: 10px;"><a href="board_view.jsp?boardID=1">text제목</a></td>
						<td style="text-align: left; padding-left: 10px;">웹프</td>
						<td>2020.11.14.</td>
						<td>25</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="Botton-Board">
			<div style="float: left;">
			<%
				if (pageNumber != 1) {
			%>
				<a href="mbti_board.jsp?mbti=<%=boardType%>&pageNumber=<%=pageNumber - 1%>"	class="board-btn">이전</a>
			<%
				}
				if (true)// if문 조건 달아서 현재 마지막 페이지라면 다음 버튼이 안나오게 해야함(함수 사용)
				{
			%>
				<a href="mbti_board.jsp?mbti=<%=boardType%>&pageNumber=<%=pageNumber + 1%>"	class="board-btn">다음</a>

			<%
				}
			%>
			</div>
			<div style="float: right;">
				<a href="board-write.jsp" class="board-btn" a="right">글쓰기</a>
			</div>
		</div>
	</div>
</body>
</html>