<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Pay Unlimited</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/payUnlimited.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Guide.css">
</head>
<body>
 <div class="container">
 <div class="payment-option">
  <div class="back-icon">
                <img src="${pageContext.request.contextPath}/img/left_back.png" alt="Back" id="backButton">
            </div>
        <div class="pay-header">
            <img src="${pageContext.request.contextPath}/img/purple_U.png" alt="U" class="U2-img">
            <div class="pay-title">Pay Unlimited</div>
            </div>
            <div class="pay-description">헤어질 때까지 커플임을 인증할 수 있어요.</div>
        </div>

       <div class="payment-plans">
            <div class="plan">
                <div class="plan-info">
                    <div class="plan-name">조상철</div>
                    <div class="plan-details">개인 결제 / Pay Individual</div>
                </div>
                <div class="plan-price">₩ 15,000</div>
            </div>
            <div class="plan">
                <div class="plan-info">
                    <div class="plan-name">김희주</div>
                    <div class="plan-details">개인 결제 / Pay Individual</div>
                </div>
                <div class="plan-price">₩ 15,000</div>
            </div>
            <div class="plan">
                <div class="plan-info">
                    <div class="plan-name">조상철, 김희주</div>
                    <div class="plan-details">함께 결제 / Pay Together</div>
                </div>
                <div class="plan-price">₩ 30,000</div>
            </div>
        </div>

        <div class="summary-box">
    <div class="summary-title">Pay Unlimited</div>
    <div class="summary-details">
        <img src="${pageContext.request.contextPath}/img/purple_check.png" alt="check" class="check-icon">
        	기간 무제한 환승 방지 효과
    	</div>
    <div class="summary-details">
        <img src="${pageContext.request.contextPath}/img/purple_check.png" alt="check" class="check-icon">
       	 기간 내 이별하면 재결제 필요
    	</div>
	</div>


        <div class="payment-button">
            	결제하기
        </div>
    </div>
   
     <script>
     //back 버튼 클릭 시, myPage.jsp 창으로 이동 
        document.getElementById("backButton").addEventListener("click", function() {
            window.location.href = "${pageContext.request.contextPath}/member/myPage";
        });
    //결제 버튼의 금액을 선택된 박스의 금액으로 변경     
    // 모든 .plan 요소를 선택
  
  /*   const plans = document.querySelectorAll('.plan');
    const paymentButton = document.querySelector('.payment-button');
    let selectedPrice = '';  // 선택된 금액을 저장하는 변수

    plans.forEach(plan => {
        plan.addEventListener('click', function() {
            // 선택된 박스의 금액을 가져옴 (앞뒤 공백 제거)
            const planPrice = this.querySelector('.plan-price').textContent.trim();
            selectedPrice = planPrice;  // 선택된 금액을 저장

            // 결제 버튼의 금액을 선택된 박스의 금액으로 변경
            paymentButton.textContent = `${planPrice} 결제하기`;

           	// 박스 선택 시, 보라색 테두리 생성    
            // 클릭한 박스에 .selected 클래스가 있으면 제거, 없으면 추가
            plans.forEach(p => p.classList.remove('selected'));
            this.classList.add('selected');

            // 선택된 금액을 콘솔에 출력 (디버깅 용도)
            console.log('선택된 금액:', selectedPrice);
        });
    });  */
 	
    </script>
    
</body>
</html>