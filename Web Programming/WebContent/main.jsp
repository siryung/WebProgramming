<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>MBTI TOWN</title>
<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="https://kit.fontawesome.com/e387ad5e3a.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="./css/main.css">
</head>
<body>
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

	<br>

	<div class="section1">

		<font size="50px">16</font>가지 <font size="60px">성격유형</font>의 우리가
		<p>이해하고 소통하는 공간
		<p>
			<font size="150px" color="black"><strong>"MBTI TOWN"</strong></font>
			입니다
	</div>
	<!-- 이미지 슬라이드 JS 코드 -->
	<div class="section2">
		<img src="Analysttype.png" id=mainImage alt="img">
		<script type="text/javascript">
        var myImage=document.getElementById("mainImage");
        var imageArray=["Analysttype.png","diplomattype.png","explorertype.png","mangertype.png"];
        var imageIndex=0;

        function changeImage(){
          myImage.setAttribute("src",imageArray[imageIndex]);
          imageIndex++;
          if(imageIndex>=imageArray.length){
            imageIndex=0;
          }
        }
        setInterval(changeImage,3000);
      </script>
	</div>

	<div class="footer">
		<center>
			<br>
			<br> 출처 어찌구 저찌구
			<p>contact us
			<p>
		</center>
	</div>
</body>