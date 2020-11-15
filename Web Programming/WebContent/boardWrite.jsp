<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MBTI 게시판</title>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://kit.fontawesome.com/e387ad5e3a.js"></script>
<link rel="stylesheet" type="text/css" href="./css/board.css">
<link rel="stylesheet" type="text/css" href="./css/main.css">
</head>
<body>
	<%
		response.setCharacterEncoding("UTF-8");
		PrintWriter script = response.getWriter();
		String boardType = request.getParameter("mbti");
		request.setAttribute("mbti", boardType);
	%>
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
	
	<!-- 게시판 이름과 글쓰기 Title -->
	<div class="Container">
		<!-- 글 제목, 글 내용 입력 table, from, input -->
		<div class="Center-Board" style="background-color: #ffffff; padding-top: 5px; padding-bottom: 5px; border-radius: 5px">
		<form method="post" action="WriteAction.jsp">
			<table class="write-board">
				<thead>
					<tr class="write-top">
						<th colspan="2" style="border-bottom: #000000;">
							<div style="float:left; margin-left: 0px; padding: 5px 0px;">
								<font style="font-size: 32px"><%=boardType %> 게시판 글쓰기</font>
							</div>
							<div style="float: right; margin-right: 0px; padding: 5px 0px;">
								<input type="submit" class="write-btn" value="등록">
								<input type="hidden" name = "mbti" value="<%=boardType %>">
							</div>
						</th>
					</tr>
				</thead>
				<tbody>
					<tr class="write-middle" style="border-top: #000000;">
						<td><input type="text" class="form-write" placeholder="글 제목" name="boardTitle" maxlength="50"></td>
					</tr>
					<tr class="write-middle">
						<td><textarea class="form-write" style = "overflow: hidden; height: 300px"placeholder="글 내용" name="boardContent" maxlength="1000" style="height: 350px"></textarea></td>
					</tr>
				</tbody>
			</table>
		</form>
		</div>
	</div>
</body>
</html>