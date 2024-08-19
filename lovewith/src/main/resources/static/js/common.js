// 뒤로가기 버튼 
// 페이지 로드 시 실행
document.addEventListener('DOMContentLoaded', function() {
  const backButton = document.getElementById('backButton');

  backButton.addEventListener('click', function() {
    if (document.referrer !== '') {
      // 이전 페이지가 있으면 뒤로 가기
      history.back();
    } else {
      // 이전 페이지가 없으면 홈 페이지로 이동 (예시: "/home")
      window.location.href = '/home';
    }
  });
});
