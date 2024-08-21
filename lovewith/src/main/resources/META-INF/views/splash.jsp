<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Love With</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/splash.css">
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script src="${pageContext.request.contextPath}/js/splash.js"></script>
<script>
    var contextPath = "${pageContext.request.contextPath}";
</script>
</head>
<body>
	<div class="container">
		<img src="${pageContext.request.contextPath}/img/splashbackground.png"
			alt="배경 이미지" class="background-image">
		<div class="content">
			<img src="${pageContext.request.contextPath}/img/SplashLogo.png"
				alt="로고 이미지" class="logo-image">
			<div class="text">
				<p id="text">우리 둘의 사랑의 서약</p>
				<img
					src="${pageContext.request.contextPath}/img/splash_lovewith.png"
					alt="LOVE WITH 이미지" class="lovewith-image">
			</div>
		</div>
	</div>
</body>
</html>
