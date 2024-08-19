<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>main</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
	<img class="mainbg" src="${pageContext.request.contextPath}/img/mainbg.png" alt= "메인 배경이미지" />
	<header>
	<img class="lovewithLogo" src="${pageContext.request.contextPath}/img/lovewithLogo.png" alt= "lovewith 로고이미지" />
	<img class="QR" src="${pageContext.request.contextPath}/img/QR.png" alt= "QR 이미지" />
	<img class="whiteBell" src="${pageContext.request.contextPath}/img/whitebell.png" alt= "알람 이미지" />
	</header>
	<div class="container">
	<div class="heartContainer">
		<img class="heartImage" src="${pageContext.request.contextPath}/img/heart.png" alt= "투명 하트 이미지" />
		<div class="heartText">
		<p class="realLoveDay">REAL LOVE DAY</p>
		<p class="dating">188</p>
		<p class="day">DAY</p>
		<p class="date">2023.02.21</p>
		</div>
		</div>
	<div class="lowerMiddlePart">
		<a href="${pageContext.request.contextPath}/member/myPage.do">
		<img class="manProfile" src="${pageContext.request.contextPath}/img/manprofile.png" alt= "남자 프로필 이미지" />
		</a>
		<img class="smallHeart" src="${pageContext.request.contextPath}/img/smallheart.png" alt= "작은 하트 이미지" />
		<img class="womanprofile" src="${pageContext.request.contextPath}/img/womanprofile.png" alt= "여자 프로필 이미지" />
		<div class="overlay">
		<p class="loveStory">성철과 희진의 사랑 이야기</p>
		</div>
	</div>
	</div>
	<footer>
	<div class="down">
		<img class="anniversary" src="${pageContext.request.contextPath}/img/anniversary.png" alt= "anniversary 이미지" />
		<img class="homeButton" src="${pageContext.request.contextPath}/img/home.png" alt= "홈버튼 이미지" />
		<img class="my" src="${pageContext.request.contextPath}/img/my.png" alt= "my 이미지" />
	</div>
	</footer>
</body>
</html>