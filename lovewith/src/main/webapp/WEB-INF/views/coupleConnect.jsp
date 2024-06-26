<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커플 연결</title>
<link rel="stylesheet" href="css/main.css">
</head>
<body>
  <div class="container">
    <h1>커플 연결</h1>
    <p>초대 코드를 입력하세요.</p>
    <form id="connectForm" method="post">
      <div class="form-group">
        <label for="myCode">나의 초대코드</label>
        <input type="text" id="myCode" name="myCode" required>
      </div>
      <div class="form-group">
        <label for="partnerCode">상대방의 초대코드</label>
        <input type="text" id="partnerCode" name="partnerCode" placeholder="초대코드 입력" required>
      </div>
      <button type="button" class="share-code" onclick="shareCode()">나의 코드 공유</button>
      <button type="submit" class="connect-btn" onclick="submitForm()">연결하기</button>
    </form>
  </div>

  <script>
    function shareCode() {
        // 코드를 공유하는 로직 추가
        alert('코드 공유 기능은 아직 구현되지 않았습니다.');
    }

    function submitForm() {
        const form = document.getElementById('connectForm');
        form.action = '/connect';
        form.submit();
    }
  </script>
</body>
</html>
