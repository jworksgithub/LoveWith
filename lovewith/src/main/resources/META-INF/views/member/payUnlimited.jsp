<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>PayUnlimited</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/payUnlimited.css">
</head>
<body>
	<div class="container">
		<div class="upperPart">
			<div class="img_PayUnlimited">
				<img class="U-img"
					src="${pageContext.request.contextPath}/img/purple_u.png"
					alt="보라색  U 이미지" /> <span id="PU">Pay Unlimited</span>
			</div>
			<p id="text">헤어질 때까지 커플임을 인증 할 수 있어요.</p>
		</div>
		<div class="middlePart">
			<div class="A">
				<div class="individualInformation">
					<p class="name">조상철</p>
					<p class="payIndividual">개인 결제 / Pay Individual</p>
				</div>
				<p class="price_1">₩ 15,000</p>
			</div>
			<div class="B" id="disabledBox">
				<div class="individualInformation">
					<p class="name" id="name_2">김희주</p>
					<p class="payIndividual">개인 결제 / Pay Individual</p>
				</div>
				<p class="price_2">₩ 15,000</p>
			</div>
			<div class="C">
				<div class="individualInformation">
					<p class="name" id="name_3">조상철, 김희주</p>
					<p class="payIndividual">함께 결제 / Pay Together</p>
				</div>
				<p class="price_3">₩ 30,000</p>
			</div>
		</div>
		<div class="lowerPart">
			<p id="payUnlimited">Pay Unlimited</p>
			<div class="aa">
				<img class="purpleCheck"
					src="${pageContext.request.contextPath}/img/purple_check.png"
					alt="보라색  체크 이미지" /> <span class="longText" id="a">기간 무제한
					환승 방지 효과</span>
			</div>
			<div class="bb">
				<img class="purpleCheck"
					src="${pageContext.request.contextPath}/img/purple_check.png"
					alt="보라색  체크 이미지" /> <span class="longText">기간 내 이별하면 재결제
					필요</span>
			</div>
		</div>
	</div>
	<footer>
		<p class="footerText" id="paymentButton">결제하기</p>
	</footer>
	<script>
	function changePaymentButtonText(selectedPrice) {
	    const paymentButton = document.getElementById('paymentButton');
	    paymentButton.innerText = `${selectedPrice} 결제하기`;
	}

	document.addEventListener("DOMContentLoaded", function() {
	    const paymentBoxes = document.querySelectorAll('.middlePart > div');

	    paymentBoxes.forEach(box => {
	        box.addEventListener('click', function() {
	            if (this.id !== 'disabledBox') {
	                paymentBoxes.forEach(box => box.classList.remove('selected'));
	                this.classList.add('selected');

	                const priceElement = this.querySelector('p[class^="price_"]');
	                if (priceElement) {
	                    const selectedPrice = priceElement.textContent.trim();
	                    console.log("Selected Price:", selectedPrice);
	                    changePaymentButtonText(selectedPrice);  // 버튼 텍스트 변경
	                }
	            }
	        });
	    });
	});



	</script>

</body>
</html>