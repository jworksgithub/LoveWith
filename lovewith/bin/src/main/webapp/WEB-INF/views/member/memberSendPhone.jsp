<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp"%>
<!-- URL 파라미터로 전달된 이메일 읽기 -->
<%
	String countryCode = request.getParameter("countryCode");
	String phoneNumber = request.getParameter("phoneNumber");
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>04회원가입_02휴대폰번호인증_02인증코드입력</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/memberSendPhone.css">
<script src="${pageContext.request.contextPath}/js/memberSendPhone.js"></script>
<script>
    const contextPath = "<%=request.getContextPath()%>";
</script>
</head>
<body>
	<div class="container">
		<div class="TOP_TXT">
			<h3>인증코드 입력</h3>
			<%
				if (countryCode != null && phoneNumber != null) {
			%>
			<p>
				<span><%=countryCode + phoneNumber%></span>로 인증코드가 <br>
				전송되었습니다. 수신된 인증코드를 입력해주세요.
			</p>
			<%
				} else {
			%>
			<p>휴대폰 번호 정보가 없습니다.</p>
			<%
				}
			%>
		</div>
		<div class="auth-code">
			<span>인증코드</span>
			<div class="code-input-group">
				<input type="text" maxlength="1" id="code1" />
				<input type="text" maxlength="1" id="code2" />
				<input type="text" maxlength="1" id="code3" />
				<input type="text" maxlength="1" id="code4" />
				<input type="text" maxlength="1" id="code5" />
				<input type="text" maxlength="1" id="code6" />
			</div>
		</div>
		<div class="Frame-816153">
			<div class="Frame-816152">
				<img
					src="${pageContext.request.contextPath}/img/button/icon/Info.png">
				<span>메시지를 받지 못하셨나요?</span>
			</div>
			<button class="reSend-btn">인증코드 재전송</button>
		</div>
		<button class="nextPage" type="submit" disabled>다음</button>
	</div>
</body>
</html>