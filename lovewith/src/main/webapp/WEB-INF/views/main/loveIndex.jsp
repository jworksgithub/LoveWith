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
        <form action="/uploadProfilePic" method="post" enctype="multipart/form-data">
          <input type="hidden" name="profileId" value="1">
          <label for="profilePic1">
            <div class="profile-pic">
              <span>프로필 사진</span>
            </div>
          </label>
          <input type="file" id="profilePic1" name="profilePic" style="display: none;" onchange="this.form.submit()">
        </form>
        <div class="profile-name">김성철</div>
      </div>
      
      <div class="heart">
        <button id="heartButton" class="love-button">♡</button>
        <p id="heartCount">0</p>
      </div>
      
      <div class="profile">
        <form action="/uploadProfilePic" method="post" enctype="multipart/form-data">
          <input type="hidden" name="profileId" value="2">
          <label for="profilePic2">
            <div class="profile-pic">
              <span>프로필 사진</span>
            </div>
          </label>
          <input type="file" id="profilePic2" name="profilePic" style="display: none;" onchange="this.form.submit()">
        </form>
        <div class="profile-name">박희진</div>
      </div>
    </div>
    <div class="days">
      <p>+ 187 Day</p>
      <p>Real love Day</p>
      <h2>2023. 02.21</h2>
    </div>
    <div class="footer">
      <button class="footer-button" onclick="navigateTo('calendar')">Calendar</button>
      <button class="footer-button" onclick="navigateTo('certificate')">Certificate</button>
      <button class="footer-button" onclick="navigateTo('loveIndex')">Home</button>
      <button class="footer-button" onclick="navigateTo('event')">Event</button>
      <button class="footer-button" onclick="navigateTo('more')">More</button>
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
    
    function navigateTo(page) {
      window.location.href = '/' + page;
    }
  </script>
</body>
</html>
