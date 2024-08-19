<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_03가입완료2</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
</head>
<body>
	<div class="container">
		<div class="TOP_TXT">
			<h3>회원가입 완료!<br>
			러브위드에 오신 것을 환영해요.</h3>
			<p>연인을 검색하여 커플임을 확인해볼까요?</p>
		</div>
		<button onclick="location.href='${pageContext.request.contextPath}/member/#.do'">계속하기</button>
		<button onclick="location.href='${pageContext.request.contextPath}/member/#.do'">다음에 하기</button>
	</div>
</body>
</html>