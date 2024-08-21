<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_02휴대폰번호인증_01번호입력</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberPhoneCertification.css">
<!-- 국가별 연락처 api start -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/css/intlTelInput.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/intlTelInput.min.js"></script>
<!-- 국가별 연락처 api end -->
<script
	src="${pageContext.request.contextPath}/js/memberPhoneCertification.js"></script>
<script>
        const contextPath = "<%=request.getContextPath()%>";
    </script>
</head>
<body>
	<div class="container">
		<div class="TOP_TXT">
			<h3>휴대폰 번호 인증</h3>
			<p>원활한 서비스 이용을 위해 휴대폰 번호 인증을 해주세요.</p>
		</div>
		<div class="form-wrapper">
			<form>
				<label for="countryCode">휴대폰 번호</label>
				<div class="form-group">
					<select id="countryCode" name="countryCode">
						<!-- 국가 코드 포함 -->
						<%@ include file="/WEB-INF/views/template/countryCodes.jsp"%>
					</select> <input type="tel" id="phoneNumber" name="phoneNumber"
						placeholder="01012345678" required />
				</div>
				<button type="submit" disabled>다음</button>
			</form>
		</div>
	</div>
</body>
</html>
