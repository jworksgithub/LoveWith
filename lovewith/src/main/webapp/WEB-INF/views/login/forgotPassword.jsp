<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <h1>비밀번호 찾기</h1>
    <div class="form-group">
      <label for="email">이메일</label>
      <input type="email" id="email" name="email" placeholder="example@gmail.com" required>
      <button class="verify-btn">인증하기</button>
    </div>
    <div class="form-group">
      <label for="verificationCode">인증번호</label>
      <input type="text" id="verificationCode" name="verificationCode" placeholder="인증번호 6자리를 입력해주세요" required>
    </div>
    <button class="reset-btn">비밀번호 재설정하기</button>
  </div>
</body>
</html>
