<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Certificate</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <div class="certificate-container">
      <div class="certificate-header">
        <h1>LoveWith</h1>
        <p>No.L490330202</p>
      </div>
      <div class="certificate-content">
        <div class="profile">
          <div class="profile-pic">프로필 사진</div>
          <div class="profile-name">김성철</div>
        </div>
        <div class="profile">
          <div class="profile-pic">프로필 사진</div>
          <div class="profile-name">박희진</div>
        </div>
        <div class="certificate-date">
          <h2>2024.03.14</h2>
          <p>두 분이 커플이 되셨음을 인증합니다.</p>
        </div>
        <div class="birthdates">
          <p>생년월일: 2001.06.22</p>
          <p>생년월일: 2004.12.16</p>
        </div>
      </div>
    </div>
    <div class="footer">
      <button class="footer-button" onclick="navigateTo('calendar')">Calendar</button>
      <button class="footer-button" onclick="navigateTo('certificate')">Certificate</button>
      <button class="footer-button" onclick="navigateTo('loveIndex')">Home</button>
      <button class="footer-button" onclick="navigateTo('event')">Event</button>
      <button class="footer-button" onclick="navigateTo('more')">More</button>
    </div>
  </div>
  <script src="/js/app.js"></script>
</body>
</html>

