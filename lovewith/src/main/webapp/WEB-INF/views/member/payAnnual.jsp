<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pay Unlimited</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/payAnnual.css">
</head>
<body>
 <div class="container">
 <div class="payment-option">
                <img src="${pageContext.request.contextPath}/img/left_back.png" alt="Back" id="backButton">
        <div class="pay-header">
            <img src="${pageContext.request.contextPath}/img/pink_A.png" alt="A" class="A-img">
            <div class="pay-title">Pay Annual</div>
            </div>
            <div class="pay-description">1년간 커플임을 인증할 수 있어요.</div>
        </div>

     <div class="payment-plans">
    <div class="plan">
        <div class="plan-info">
            <div class="plan-name">조상철</div>
            <div class="plan-details">개인 결제 / Pay Individual</div>
        </div>
        <div class="plan-price">₩ 4,000</div>
    </div>
    <div class="plan">
        <div class="plan-info">
            <div class="plan-name">김희주</div>
            <div class="plan-details">개인 결제 / Pay Individual</div>
        </div>
        <div class="plan-price">₩ 4,000</div>
    </div>
    <div class="plan">
        <div class="plan-info">
            <div class="plan-name">조상철, 김희주</div>
            <div class="plan-details">함께 결제 / Pay Together</div>
        </div>
        <div class="plan-price">₩ 8,000</div>
    </div>
</div>


        <div class="summary-box">
    <div class="summary-title">Pay Unlimited</div>
    <div class="summary-details">
        <img src="${pageContext.request.contextPath}/img/purple_check.png" alt="check" class="check-icon">
        	1년간 환승 방지 효과
    	</div>
    <div class="summary-details">
        <img src="${pageContext.request.contextPath}/img/purple_check.png" alt="check" class="check-icon">
       	 기간 내 이별하면 재결제 필요
    	</div>
	</div>


        <div class="payment-button">
            ₩ 4,000 결제하기
        </div>
    </div>
    <!-- back 버튼 클릭 시, myPage.jsp 창으로 이동 -->
     <script>
        document.getElementById("backButton").addEventListener("click", function() {
            window.location.href = "${pageContext.request.contextPath}/member/myPage";
        });
    </script>
    
</body>
</html>