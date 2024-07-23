<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>회원가입 완료</title>
</head>
<body>
  <div style="text-align: center;">
    <h1>회원가입이 완료되었습니다!</h1>
    <p>로그인을 진행해주세요.</p>
  </div>

  <!-- 로그인 모달 -->
  <div id="loginModal" class="modal">
    <div class="modal-content">
      <span class="close" onclick="closeModal()">&times;</span>
      <h2>로그인</h2>
      <form class="login-form">
        <label for="username">사용자 이름:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">비밀번호:</label><br>
        <input type="password" id="password" name="password"><br>
        <div class="forgot-password">
          <a href="#" onclick="openForgotPassword()">비밀번호 찾기</a>
        </div>
        <input type="button" value="로그인" onclick="submitLogin()">
      </form>
    </div>
  </div>

  <script src="/js/app.js"></script>
  <script>
    document.addEventListener('DOMContentLoaded', function() {
        openModal();
    });
  </script>
</body>
</html>
