<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_01이메일인증_01이메일입력</title>
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
			<h3>이메일 인증</h3>
			<p>원활한 서비스 이용을 위해 이메일 인증을 해주세요.</p>
		</div>
		<div class="form-wrapper">
			<form>
				<label for="email">이메일</label> <input type="email" id="email">
				<div id="email-error" style="color: red; display: none;">이메일
					형식이 아닙니다.</div>
				<button type="submit" disabled>계속하기</button>
			</form>
		</div>
	</div>
</body>
</html>