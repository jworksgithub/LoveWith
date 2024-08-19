// 뒤로가기 버튼 
//페이지 로드 시 실행
document.addEventListener('DOMContentLoaded', function() {
  const backButton = document.getElementById('backButton');

  backButton.addEventListener('click', function() {
    history.back();
  });
});