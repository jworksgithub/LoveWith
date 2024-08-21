// 페이지 로드 시 이메일 주소를 URL에서 받아와 페이지에 표시하는 함수
document.addEventListener("DOMContentLoaded", function() {
	const urlParams = new URLSearchParams(window.location.search);
	const email = urlParams.get('email'); // URL에서 'email' 파라미터 추출
	const emailSpan = document.getElementById('emailAddress');
	const messageParagraph = document.getElementById('messageParagraph');

	if (email) {
		// 이메일이 있을 경우, 이메일을 페이지에 삽입
		emailSpan.textContent = email;
	} else {
		// 이메일이 없을 경우, 경고 메시지 출력
		messageParagraph.textContent = "이메일 정보가 없습니다.";
	}
});
