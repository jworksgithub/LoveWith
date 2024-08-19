<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_01이메일인증_01이메일입력_01입력전</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberEmailCertification.css">
<script src="${pageContext.request.contextPath}/js/common.js"></script>
<script
	src="${pageContext.request.contextPath}/js/memberEmailCertification.js"></script>
<script>
    const contextPath = "<%= request.getContextPath() %>";
</script>
</head>
<body>
	<header class="SUB-Header">
		<div class="SUB-Header-Arrow">
			<img id="backButton"
				src="${pageContext.request.contextPath}/img/button/icon/Vector 8.png"
				alt="뒤로가기 버튼" />
		</div>
		<div>
			<span class="SUB-Header-TXT"></span>
		</div>
		<div class="Frame-816197"></div>
	</header>

	<div class="container">
		<div class="TOP_TXT">
			<h3>이메일 인증</h3>
			<p>원활한 서비스 이용을 위해 이메일 인증을 해주세요.</p>
		</div>
		<div class="form-wrapper">
			<form>
				<label for="email">이메일</label> <input type="email" id="email">
				<div id="email-error" style="color: red; display: none;">이메일
					형식이 아닙니다.</div>
				<button type="submit" disabled>계속하기</button>
			</form>
		</div>
	</div>
</body>
</html>