<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Love With</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body>
    <div class="container" onclick="location.href='${pageContext.request.contextPath}/member/meberLogin.do'">
        <img src="${pageContext.request.contextPath}/img/splashbackground.png" alt="배경 이미지" class="background-image">
        <div class="content">
           <img src="${pageContext.request.contextPath}/img/SplashLogo.png" alt="로고 이미지" class="logo-image">
            <div class="text">
                <p>우리 둘의 사랑의 서약</p>
                 <img src="${pageContext.request.contextPath}/img/splash_lovewith.png" alt="LOVE WITH 이미지" class="lovewith-image">
            </div>
        </div>
    </div>
</body>
<script>
    document.body.addEventListener('click', () => {
        // 모달창을 띄우고 로그인 여부를 확인
        alert('로그인 페이지로 이동하시겠습니까?');
        // 사용자가 확인 버튼을 클릭하면 location.href를 이용하여 이동
    });
</script>
</html>
