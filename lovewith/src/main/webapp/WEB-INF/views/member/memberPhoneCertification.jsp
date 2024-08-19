<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_02휴대폰번호인증_01번호입력</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberEmailCertification.css">
<script
	src="${pageContext.request.contextPath}/js/memberEmailCertification.js"></script>
<script>
    const contextPath = "<%= request.getContextPath() %>";
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
				<label for="email">휴대폰 번호</label> <input type="email" id="email">
				<button type="submit" disabled>다음</button>
			</form>
		</div>
	</div>
</body>
</html>