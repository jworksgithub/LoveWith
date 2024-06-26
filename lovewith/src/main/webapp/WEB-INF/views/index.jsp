<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/main.css">
<title>index page</title>
</head>
<body>
  <div style="text-align: center;">
    <img src="/img/lovewith.png" alt="로고" style="cursor: pointer;" onclick="showButtons()">
  </div>

  <div class="button-container" id="buttonContainer" style="display:none;">
    <button class="join-button" onclick="location.href='/join'">Join</button>
    <button class="login-button" onclick="openModal()">Login</button>
  </div>

  <!-- 로그인 모달 -->
  <div id="loginModal" class="modal" style="display:none;">
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
</body>
</html>
