<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_01이메일인증_01이메일입력_01입력전</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberEmailCertification.css">
<script>
	// 페이지 로드 시 실행
	document.addEventListener('DOMContentLoaded', function() {
		const backButton = document.getElementById('backButton');

		backButton.addEventListener('click', function() {
			history.back();
		});
	});
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
	<section>
	
	</section>
</body>
</html>