<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>03로그인_01</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberLogin.css">
<script>
	// 페이지 로드 시 실행
	document.addEventListener('DOMContentLoaded', function() {
		const backButton = document.getElementById('closeButton');

		backButton.addEventListener('click', function() {
			history.back();
		});
	});
</script>
</head>
<body>
	<header class="FULL_Popup_Header">
		<img id=closeButton src="${pageContext.request.contextPath}/img/close.png" alt="닫기 버튼" />
	</header>
	<div class="Logo">
			<img src="${pageContext.request.contextPath}/img/Logo.png" alt="로고 이미지">
	</div>
	<div class="BTN">
		<button class="btn-apple">
			<img
				src="${pageContext.request.contextPath}/img/button/icon/apple.png"
				alt="Apple로 시작하기"> 
  			<span>Apple로 시작하기</span>
		</button>
		<button class="btn-kakao">
			<img
				src="${pageContext.request.contextPath}/img/button/icon/kakao.png"
				alt="카카오로 시작하기">
  			<span>카카오로 시작하기</span>
		</button>
		<button class="btn-facebook">
			<img
				src="${pageContext.request.contextPath}/img/button/icon/Facebook.png"
				alt="페이스북으로 시작하기"> 
			<span>페이스북으로 시작하기</span>
		</button>
		<button class="btn-google">
			<img
				src="${pageContext.request.contextPath}/img/button/icon/Google.png"
				alt="Google로 시작하기">
			<span>Google로 시작하기</span>
		</button>
		<button class="btn-email">
			<img
				src="${pageContext.request.contextPath}/img/button/icon/email.png"
				alt="이메일">
			<span>이메일로 시작하기</span>
		</button>
		<button class="btn-phone">
			<img
				src="${pageContext.request.contextPath}/img/button/icon/phone2.png"
				alt="휴대폰">
			<span>휴대폰으로 시작하기</span>
		</button>
	</div>
	
	<footer class="TXT">
		<div class="Rectangle_10090"></div>
		<p>
			가입함으로써, 귀하는 당사의 <a href="${pageContext.request.contextPath}/member/memberAgreement.do"><b>이용약관</b></a>에 동의하게 됩니다. <br>
			당사의 개인정보 사용방식에 관한 내용은 <a href="#"><b>개인정보취급방침</b></a>에서 확인하실 수
			있습니다.
		</p>
	</footer>
</body>
</html>