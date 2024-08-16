<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="memberLogin.css">
</head>
<body>
    <div class="container">
        <img src="logo.png" alt="로고">
        <button onclick="location.href='appleLogin.jsp'">Apple로 시작하기</button>
        <button onclick="location.href='kakaoLogin.jsp'">카카오로 시작하기</button>
        <button onclick="location.href='emailLogin.jsp'">이메일로 시작하기</button>
        <button onclick="location.href='phoneLogin.jsp'">휴대폰번호로 시작하기</button>
        <p>가입함으로써, 귀하는 당사의 이용약관에 동의하게 됩니다.<br>
        당사의 개인정보 사용방식에 관한 내용은 개인정보취급방침에서 확인하실 수 있습니다.</p>
    </div>
</body>
</html>
