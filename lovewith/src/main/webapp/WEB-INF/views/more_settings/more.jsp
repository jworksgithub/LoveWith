<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>More</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>More</h1>
      <div class="icon">
        <img src="img/setting.png" alt="Settings Icon" onclick="navigateTo('settings')">
      </div>
    </div>
    <div class="menu">
      <button class="menu-button" onclick="navigateTo('qna')">Q&A</button>
      <button class="menu-button" onclick="navigateTo('faq')">FAQ</button>
      <button class="menu-button" onclick="openGuideModal()">이용 가이드</button>
      <button class="menu-button" onclick="navigateTo('info')">이용정보</button>
      <button class="menu-button" onclick="openTermsModal()">- 이용약관</button>
      <button class="menu-button" onclick="openPrivacyModal()">- 개인정보처리방침</button>
      <button class="menu-button" onclick="openLogoutModal()">로그아웃</button>
    </div>
    <div class="footer">
      <button class="footer-button" onclick="navigateTo('calendar')">Calendar</button>
      <button class="footer-button" onclick="navigateTo('certificate')">Certificate</button>
      <button class="footer-button" onclick="navigateTo('loveIndex')">Home</button>
      <button class="footer-button" onclick="navigateTo('event')">Event</button>
      <button class="footer-button" onclick="navigateTo('more')">More</button>
    </div>
  </div>
  
  <!-- 이용가이드 모달 -->
  <div id="guideModal" class="guide-modal qamodal">
    <div class="qamodal-content">
      <span class="qaclose" onclick="closeGuideModal()">&times;</span>
      <h2>Lovewith 설명서</h2>
      <p><strong>1. 커플 인증을 할 수 있어요.</strong></p>
      <p>-qr코드, 파일, 링크, 문자코드를 통해 커플임을 증명하세요!</p>
      <p><strong>2. 상대방과 일정을 조율할 수 있어요.</strong></p>
      <p>-캘린더를 통해 일정을 공유하고 추억을 기록하세요!</p>
      <p><strong>3. 사랑지수를 쌓아 경품을 받을 수 있어요.</strong></p>
      <p>-출석 인증, 상대방 관련 퀴즈 맞히기 등의 이벤트에 참여해 사랑지수를 높여보세요!</p>
    </div>
  </div>

  <!-- 이용약관 모달 -->
  <div id="termsModal" class="terms-modal qamodal">
    <div class="qamodal-content modal-content-scroll">
      <div class="modal-header">
        <h2>이용약관</h2>
        <span class="close" onclick="closeTermsModal()">&times;</span>
      </div>
      <div id="termsContent">
        <%
          String filePath = application.getRealPath("/WEB-INF/views/Join/terms_1.txt");
          java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(filePath), "UTF-8"));
          String line;
          while ((line = reader.readLine()) != null) {
            out.println(line + "<br>");
          }
          reader.close();
        %>
      </div>
    </div>
  </div>

  <!-- 개인정보처리방침 모달 -->
  <div id="privacyModal" class="privacy-modal qamodal">
    <div class="qamodal-content modal-content-scroll">
      <div class="modal-header">
        <h2>개인정보처리방침</h2>
        <span class="close" onclick="closePrivacyModal()">&times;</span>
      </div>
      <div id="privacyContent">
        <%
          String privacyFilePath = application.getRealPath("/WEB-INF/views/Join/terms_2.txt");
          java.io.BufferedReader privacyReader = new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(privacyFilePath), "UTF-8"));
          String privacyLine;
          while ((privacyLine = privacyReader.readLine()) != null) {
            out.println(privacyLine + "<br>");
          }
          privacyReader.close();
        %>
      </div>
    </div>
  </div>
  
  <!-- 로그아웃 모달 -->
  <div id="logoutModal" class="logout-modal qamodal">
    <div class="qamodal-content">
      <span class="qaclose" onclick="closeLogoutModal()">&times;</span>
      <h2>로그아웃</h2>
      <p>로그아웃하시겠습니까?</p>
      <div class="modal-buttons">
        <button class="cancel-button" onclick="closeLogoutModal()">취소</button>
        <button class="logout-button" onclick="confirmLogout()">로그아웃</button>
      </div>
    </div>
  </div>

  <script src="/js/app.js"></script>
</body>
</html>
