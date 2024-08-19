<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>myPage</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/myPage.css">
<script src="${pageContext.request.contextPath}/js/common.js"></script>
</head>

<body>
	<header>
	<a href="${pageContext.request.contextPath}/main/main">
		<img id="backButton" src="${pageContext.request.contextPath}/img/back_icon.png" alt= "뒤로 가기"/>
		</a>
		<span class="myText">MY</span>
		<img class="settingsIcon" src="${pageContext.request.contextPath}/img/settings_icon.png" alt= "환경설정"/>
		<img class="alarmIcon" src="${pageContext.request.contextPath}/img/alarm_icon.png" alt= "알림" />
	</header>
	<div class="container">
	<div class="profile">
		<img id="profile_image" src="${pageContext.request.contextPath}/img/Profile_image.png" alt="프로필 이미지"/>
		<p class="name">조상철님</p>	
	</div>
    <div class="paymentInformation" >
    	<div class="payUnlimited">
    		<img class="UandA-Img" src="${pageContext.request.contextPath}/img/purple_u.png" alt= "보라색  U 이미지" />
    		<div class="textContainer">
    		<span class="paymentText" id="payUnlimited">Pay Unlimited</span>
    		<p class="paymentDescription" id="description_1">헤어질 때까지 커플임을 인증 할 수 있어요.</p>
    	</div>
    	<a href="${pageContext.request.contextPath}/member/payUnlimited">
    	<img class="bigRight" id="br_1"src="${pageContext.request.contextPath}/img/Big_right.png" alt= ">(클릭 시 진입)" />
    	</a>
    	</div>
    	<div class="paymentInformation" >
    	<div class="payAnnual">
    		<img class="UandA-Img" src="${pageContext.request.contextPath}/img/pink_A.png" alt= "분홍색  A 이미지" />
    		<div class="textContainer">
    		<span class="paymentText" id="payAnnual">Pay Annual</span>
    		<p class="paymentDescription" id="description_2">1년간 커플임을 인증 할 수 있어요.</p>
    	</div>
    	<a href="${pageContext.request.contextPath}/member/payAnnual">
    	<img class="bigRight" id="br_2"src="${pageContext.request.contextPath}/img/Big_right.png" alt= ">(클릭 시 진입)" />
    	</a>
    	</div>
    </div>
    <div class="accountSettings">
    	<p id="accountSettings">계정 설정</p>
    	<div class="contact">
    		<img class="Icon" src="${pageContext.request.contextPath}/img/phone.png" alt= "전화기 이미지" />
    		<span class="accountSettingsText_1">연락처</span>
    		<span class="accountSettingsText_2">82 10 12345678</span>
    		<img class="smallRight"src="${pageContext.request.contextPath}/img/right.png" alt= ">(클릭 시 진입)" />
    	</div>
    	<div class="email">
    		<img class="Icon" src="${pageContext.request.contextPath}/img/message.png" alt= "이메일 이미지" />
    		<span class="accountSettingsText_1">이메일</span>
    		<span class="accountSettingsText_2">TEST@TEST.CO.KR</span>
    		<img class="smallRight" src="${pageContext.request.contextPath}/img/right.png" alt= ">(클릭 시 진입)" />
    	</div>
    	<div class="firstMeetingDate">
    		<img class="Icon" src="${pageContext.request.contextPath}/img/calander.png" alt= "달력 이미지" />
    		<span class="accountSettingsText_1">처음 만난 날</span>
    		<span class="accountSettingsText_2">2022. 03. 04</span>
    		<img class="smallRight" src="${pageContext.request.contextPath}/img/right.png" alt= ">(클릭 시 진입)" />
    	</div>
    </div>
    </div>
    </div>
	<!-- 계정 설정 클릭 시 뜨는 모달  -->
	<div class="modal-overlay"></div><!-- 모달 외부의 어두운 배경 -->
	<div class="modal">
	<img class="whiteBar" src="${pageContext.request.contextPath}/img/Handlebar.png" alt= "하얀 막대" />
		<div class="modaltitleclose">
		<h2 class="modalTitle">제목</h2>
		<span class="close">&times;</span>
		</div>
		<div class="inputbutton">
        <input type="text" class="modalInput" value="내용">
        <button class="modalButton"><span class="complete">완료</span></button>
    </div>
    </div>
    
    	<script>
 	  	   		 document.addEventListener("DOMContentLoaded", function() {
        	    // 모달 요소 가져오기
        	    const modalOverlay = document.querySelector(".modal-overlay");
        	    const modal = document.querySelector(".modal");
        	    const modalTitle = document.querySelector(".modalTitle");
        	    const modalInput = document.querySelector(".modalInput");
        	    const modalClose = document.querySelector(".close");

        	    // 연락처 클릭 이벤트
        	    document.querySelector(".contact").addEventListener("click", function() {
        	        modalTitle.innerText = "연락처";
        	        modalInput.value = "82 10 12345678";
        	        openModal(); // 모달 열기 함수 호출
        	    });

        	    // 이메일 클릭 이벤트
        	    document.querySelector(".email").addEventListener("click", function() {
        	        modalTitle.innerText = "이메일";
        	        modalInput.value = "TEST@TEST.CO.KR";
        	        openModal(); // 모달 열기 함수 호출
        	    });

        	    // 처음 만난 날 클릭 이벤트
        	    document.querySelector(".firstMeetingDate").addEventListener("click", function() {
        	        modalTitle.innerText = "처음 만난 날";
        	        modalInput.value = "2022. 03. 04";
        	        openModal(); // 모달 열기 함수 호출
        	    });

        	    // 모달 열기 함수
        	    function openModal() {
        	        modal.style.display = "block";
        	        modalOverlay.style.display = "block"; // 오버레이 활성화
        	    }

        	    // 모달 닫기 함수
        	    function closeModal() {
        	        modal.style.display = "none";
        	        modalOverlay.style.display = "none"; // 오버레이 비활성화
        	    }

        	    // 모달 닫기 이벤트 (닫기 버튼 클릭 시)
        	    modalClose.addEventListener("click", closeModal);
        	});

    	    </script>
</body>
</html>     	


