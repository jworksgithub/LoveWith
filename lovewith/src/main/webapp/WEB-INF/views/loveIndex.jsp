<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main 화면</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>Lovewith</h1>
    </div>
    <div class="profiles">
      <div class="profile">
        <div class="profile-pic">프로필 사진</div>
        <div class="profile-name">김성철</div>
      </div>
      
      <div class="heart">
        <button id="heartButton" class="love-button">♡</button>
        <p id="heartCount">0</p>
      </div>
      
      <div class="profile">
        <div class="profile-pic">프로필 사진</div>
        <div class="profile-name">박희진</div>
      </div>
    </div>
    <div class="days">
      <p>+ 187 Day</p>
      <p>Real love Day</p>
      <h2>2023. 02.21</h2>
    </div>
    <div class="footer">
      <button class="footer-button">Calendar</button>
      <button class="footer-button" onclick="openCertificate()">Certificate</button>
      <button class="footer-button">Home</button>
      <button class="footer-button">Event</button>
      <button class="footer-button">More</button>
    </div>
  </div>

  <script>
    document.addEventListener('DOMContentLoaded', function() {
      var heartButton = document.getElementById('heartButton');
      var heartCount = document.getElementById('heartCount');
      var count = 0;

      heartButton.addEventListener('click', function() {
        count++;
        heartCount.textContent = count;
      });
    });

    function openCertificate() {
      window.open('/certificate', '_blank', 'width=800,height=600');
    }
  </script>
</body>
</html>
