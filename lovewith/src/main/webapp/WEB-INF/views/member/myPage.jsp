<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LoveWith_myPage</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/myPage.css">
</head>
<body>
	<header>
		<div class="left-icon">
			<img src="${pageContext.request.contextPath}/img/back_icon.png"
				alt="Back">
		</div>
		<div class="SUB-Header">
			<span>MY</span>
		</div>
		<div class="settings">
			<img src="${pageContext.request.contextPath}/img/settings_icon.png"
				alt="환경설정">
		</div>
		<div class="alarm">
			<img src="${pageContext.request.contextPath}/img/alarm_icon.png"
				alt="알람">
		</div>
	</header>

	<div class="container">

		<div class="profile">
			<div class="profile-img-container">
				<img src="${pageContext.request.contextPath}/img/profile_image.png"
					alt="Profile Image" class="profile-img"> <img
					src="${pageContext.request.contextPath}/img/edit_icon.png"
					alt="Edit Icon" class="edit-icon">
			</div>
			<div class="profile-name">
				조상철님 <img src="${pageContext.request.contextPath}/img/purple_U.png"
					alt="U" class="U1-img">
			</div>
		</div>

		<div class="options">
			<div class="option pay-unlimited" id="payUnlimitedBox">
				<img src="${pageContext.request.contextPath}/img/purple_U.png"
					alt="U" class="U2-img">
				<div class="option-text">
					<div class="option-title">
						Pay Unlimited <img
							src="${pageContext.request.contextPath}/img/Big_right.png"
							alt=">" class="Big-right">
					</div>
					<div class="option-description">헤어질 때까지 커플임을 인증 할 수 있어요.</div>
				</div>
			</div>
			<div class="option pay-annual" id="payAnnualBox">
				<img src="${pageContext.request.contextPath}/img/pink_A.png" alt="A"
					class="A-img">
				<div class="option-text">
					<div class="option-title">
						Pay Annual <img
							src="${pageContext.request.contextPath}/img/Big_right.png"
							alt=">" class="Big-right">
					</div>
					<div class="option-description">1년간 커플임을 인증 할 수 있어요.</div>
				</div>
			</div>
		</div> <!-- End of options-->


		<div class="account-settings">
			<div class="account-settings-text">계정설정</div>
			<div class="setting-item">
				<img src="${pageContext.request.contextPath}/img/phone.png"
					alt="phone" class="phone-img"> <span class="label">연락처</span>
				<span class="value">82 10 1234 5678</span> <img
					src="${pageContext.request.contextPath}/img/right.png" alt=">"
					class="right-img">
			</div>
			<div class="setting-item">
				<img src="${pageContext.request.contextPath}/img/message.png"
					alt="email" class="email-img"> <span class="label">이메일</span>
				<span class="value">TEST@TEST.CO.KR</span> <img
					src="${pageContext.request.contextPath}/img/right.png" alt=">"
					class="right-img">
			</div>
			<div class="setting-item">
				<img src="${pageContext.request.contextPath}/img/calander.png"
					alt="calander" class="calander-img"> <span class="label">처음
					만난 날</span> <span class="value">2022. 03. 04</span> <img
					src="${pageContext.request.contextPath}/img/right.png" alt=">"
					class="right-img">
			</div>
		</div>
	</div> <!-- End of container -->

	<!-- Pay Unlimited 버튼 클릭 시 payUnlimited.jsp로 연결 -->
	<!-- Pay Annual 버튼 클릭 시 payAnnual.jsp로 연결 -->
	<script>
    document.getElementById("payUnlimitedBox").addEventListener("click", function() {
        window.location.href = "${pageContext.request.contextPath}/member/payUnlimited";
    });
    document.getElementById("payAnnualBox").addEventListener("click", function() {
        window.location.href = "${pageContext.request.contextPath}/member/payAnnual";
    });

	<!-- 계정 설정 모달 구조 -->
    // 연락처, 이메일, 처음 만난 날 클릭 시 모달 열기
	document.querySelectorAll('.setting-item').forEach(item => {
	    item.addEventListener('click', function() {
	        let title = this.querySelector('.label').innerText;
	        let value = this.querySelector('.value').innerText;
	        
	        document.getElementById('modal-title').innerText = title;
	        document.getElementById('modal-input').value = value;

	        document.getElementById('modal').style.display = "block";
	    });
	});

	// 모달 닫기
	document.getElementById('closeModal').addEventListener('click', function() {
	    document.getElementById('modal').style.display = "none";
	});

	// "완료" 버튼 클릭 시 모달 닫기
	document.getElementById('modal-save-button').addEventListener('click', function() {
	    document.getElementById('modal').style.display = "none";
	});

	// 모달 외부 클릭 시 모달 닫기
	window.addEventListener('click', function(event) {
	    if (event.target == document.getElementById('modal')) {
	        document.getElementById('modal').style.display = "none";
	    }
	});
	</script>
</body>
</html>
