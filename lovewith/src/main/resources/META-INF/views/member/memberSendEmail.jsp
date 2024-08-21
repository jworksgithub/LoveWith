<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp" %>
<!-- URL 파라미터로 전달된 이메일 읽기 -->
<% String email = request.getParameter("email"); %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>03회원가입_01이메일인증_02인증메일전송</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberSendEmail.css">
</head>
<body>
	<div class="container">
		<div class="TOP_TXT">
			<h3>이메일 인증</h3>
			<% if (email != null) { %>
			<p><span><%= email %></span>로 인증 메일이<br> 전송되었습니다. 수신된 링크로 접속하여 가입을 완료해주세요.
			</p>
			<% } else { %>
			<p>이메일 정보가 없습니다.</p>
			<% } %>
		</div>
		<button onclick="location.href='${pageContext.request.contextPath}/member/memberNmRegister.do'">확인</button>
	</div>
</body>
</html>