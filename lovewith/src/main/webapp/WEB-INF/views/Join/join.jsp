<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container full-screen">
    <h1>회원가입</h1>
    <div class="steps">
      <div class="active">이용약관</div>
      <div>본인인증</div>
      <div>회원정보</div>
    </div>
    <div class="terms">
      <h3>서비스 이용약관</h3>
      <%
        String filePath = application.getRealPath("/WEB-INF/views/Join/terms.txt");
        java.io.BufferedReader reader = new java.io.BufferedReader(new java.io.InputStreamReader(new java.io.FileInputStream(filePath), "UTF-8"));
        String line;
        while ((line = reader.readLine()) != null) {
          out.println(line + "<br>");
        }
        reader.close();
      %>
      
    </div>
    
    <div class="agree">
      <label><input type="checkbox" id="agreeCheckbox"> 동의</label>
      <label><input type="checkbox" id="disagreeCheckbox"> 비 동의</label>
    </div>
    <form action="verification" method="get">
      <button class="next-btn" id="nextButton" disabled>다음</button>
    </form>
  </div>

  <script src="js/app.js"></script>
</body>
</html>
