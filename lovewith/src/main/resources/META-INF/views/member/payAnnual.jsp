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
	href="${pageContext.request.contextPath}/css/payAnnual.css">
</head>
<body>
	<div class="container">
		<div class="upperPart">
			<div class="img_PayAnnual">
				<img class="A-img"
					src="${pageContext.request.contextPath}/img/pink_A.png"
					alt="분홍색  A 이미지" /> <span id="PA">Pay Annual</span>
			</div>
			<p id="text">1년간 커플임을 인증 할 수 있어요.</p>
		</div>
		<div class="middlePart">
			<div class="A">
				<div class="individualInformation">
					<p class="name">조상철</p>
					<p class="payIndividual">개인 결제 / Pay Individual</p>
				</div>
				<p class="price_1">₩ 4,000</p>
			</div>
		<div class="B">
			<div class="individualInformation">
				<p class="name" id="name_2">김희주</p>
				<p class="payIndividual">개인 결제 / Pay Individual</p>
			</div>
			<p class="price_2">₩ 4,000</p>
		</div>
		<div class="C">
			<div class="individualInformation">
				<p class="name" id="name_3">조상철, 김희주</p>
				<p class="payIndividual">함께 결제 / Pay Together</p>
			</div>
			<p class="price_3">₩ 8,000</p>
			</div>	
		</div>
		<div class="lowerPart">
			<p id="payAnnual">Pay Annual</p>
			<div class="aa">
				<img class="purpleCheck"
					src="${pageContext.request.contextPath}/img/purple_check.png"
					alt="보라색  체크 이미지" /> <span class="longText">1년간 환승 방지 효과</span>
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
		<p class="footerText" id="paymentButton"> 결제하기</p>
	</footer>
	<script>
	document.addEventListener("DOMContentLoaded", function() {
	    const paymentBoxes = document.querySelectorAll('.middlePart > div');
	    const paymentButton = document.querySelector('#paymentButton');

	    paymentBoxes.forEach(box => {
	        box.addEventListener('click', function() {
	            // 모든 박스에서 선택된 클래스 제거
	            paymentBoxes.forEach(box => box.classList.remove('selected'));
	            
	            // 클릭된 박스에 선택된 클래스 추가
	            this.classList.add('selected');

	            // 클릭된 박스의 가격을 가져와 결제 버튼에 반영
	            const priceElement = this.querySelector('p[class^="price_"]');
	            if (priceElement) {
	                const selectedPrice = priceElement.textContent.trim();
	                paymentButton.innerText = `${selectedPrice} 결제하기`;
	            }
	        });
	    });
	});

	</script>

</body>
</html>