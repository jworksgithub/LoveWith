<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 - 회원정보</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <h1>회원가입</h1>
    <div class="steps">
      <div class="inactive" onclick="location.href='join.jsp'">이용약관</div>
      <div class="inactive" onclick="location.href='verification.jsp'">본인인증</div>
      <div class="active">회원정보</div>
    </div>
    <div class="form-group">
      <label for="name">이름</label>
      <input type="text" id="name" name="name" required>
    </div>
    <div class="form-group">
      <label for="nickname">닉네임</label>
      <input type="text" id="nickname" name="nickname" required>
    </div>
    <div class="form-group">
      <label for="phone">전화번호</label>
      <input type="tel" id="phone" name="phone" placeholder="Ex) 010-0000-0000" required>
    </div>
    <div class="form-group">
      <label for="email">E-mail</label>
      <input type="email" id="email" name="email" placeholder="Ex) sample@sample.com" required>
    </div>
    <div class="form-group">
      <label for="password">비밀번호</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="form-group">
      <label for="confirmPassword">비밀번호 재입력</label>
      <input type="password" id="confirmPassword" name="confirmPassword" required>
    </div>
    <form id="registerForm" onsubmit="openLoginModal(event)">
      <button class="next-btn" type="submit">완료</button>
    </form>
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

  <script src="js/app.js"></script>
</body>
</html>
