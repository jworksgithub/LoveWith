<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <h1>회원가입</h1>
    <div class="steps">
        <div class="inactive" onclick="location.href='join.jsp'">이용약관</div>
        <div class="inactive" onclick="location.href='verification.jsp'">본인인증</div>
        <div class="active">회원정보</div>
    </div>

    <form id="registerForm" action="/member/register" method="post" onsubmit="openLoginModal(event)">
        <div class="form-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" required>
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
            <label for="mfCode">성별</label>
            <select id="mfCode" name="mfCode">
                <option value="M">남자</option>
                <option value="F">여자</option>
            </select>
        </div>
        <div class="form-group">
            <label for="cellNo">전화번호</label>
            <input type="text" id="cellNo" name="cellNo">
        </div>
        <button class="next-btn" type="submit">완료</button>
    </form>

    <!-- 로그인 모달 -->
    <div id="loginModal" class="modal" style="display:none;">
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
