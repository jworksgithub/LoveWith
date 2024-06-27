<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event List</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <div class="event-header">
      <h1>List & With Event</h1>
    </div>
    <div class="event-content">
      <table>
        <tr>
          <td colspan="2">
            <h2><span class="heart">❤️</span> List</h2>
          </td>
        </tr>
        <tr>
          <td>√ Event 1안 {이벤트 제목}</td>
        </tr>
        <tr>
          <td>√ Event 2안 {이벤트 제목}</td>
        </tr>
        <tr>
          <td>√ Event 3안 {이벤트 제목}</td>
        </tr>
        <tr>
          <td>√ Event 4안 {이벤트 제목}</td>
        </tr>
        <tr>
          <td>√ Event 5안 {이벤트 제목}</td>
        </tr>
      </table>
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
