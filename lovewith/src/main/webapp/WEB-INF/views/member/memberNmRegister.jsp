<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>03회원가입_01이메일인증_03이름입력</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberNmRegister.css">
<script
	src="${pageContext.request.contextPath}/js/memberNmRegister.js"></script>
<script>
    const contextPath = "<%= request.getContextPath() %>";
</script>
</head>
<body>
	<div class="container">
		<div class="TOP_TXT">
			<h3>이름</h3>
			<p>본인의 본명을 입력해주세요.</p>
		</div>
		<div class="form-wrapper">
			<form>
				<label for="lastname">성</label> 
					<input type="text" id="lastname" required>
				<label for="firstname">이름</label> 
					<input type="text" id="firstname" required>
        		<button type="submit" disabled>계속하기</button>
			</form>
		</div>

	</div>
</body>
</html>