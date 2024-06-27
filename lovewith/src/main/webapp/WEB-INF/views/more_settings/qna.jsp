<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <div class="header">
      <button onclick="history.back()" class="back-button">←</button>
      <h1 class="title">Q&A</h1>
    </div>
    <div class="content">
      <p>문의하기 전 FAQ를 먼저 확인해주세요.</p>
      <img src="img/전구.jpg" alt="FAQ Icon">
    </div>
    <div class="qa-method">
      <h2>문의 방법</h2>
      <p>① 이메일 문의: <a href="mailto:lovewith0819@gmail.com">lovewith0819@gmail.com</a></p>
      <p>② 카카오톡 채널 문의: lovewith</p>
      <button class="qa-button" onclick="openInquiryForm()">문의 양식</button>
    </div>
  </div>
  
  <!-- 문의 양식 모달 -->
  <div id="inquiryModal" class="qamodal">
    <div class="qamodal-content">
      <span class="qaclose" onclick="closeInquiryForm()">&times;</span>
      <p><b>필수 포함사항</b></p>
      <p>1. 가입한 계정</p>
      <p>2. 문의 사항(커플 연결 복구, 버그 신고, 앱 내 제안, 기타 등)</p>
    </div>
  </div>
  <script src="/js/app.js"></script>
</body>
</html>
