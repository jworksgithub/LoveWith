document.addEventListener("DOMContentLoaded", function() {
	const emailInput = document.getElementById("email");
	const submitButton = document.querySelector("button[type='submit']");
	const emailError = document.getElementById("email-error");

	// 이메일 형식 검사 정규 표현식
	const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

	// 이메일 입력란에 입력 이벤트 리스너 추가
	emailInput.addEventListener("input", function() {
		if (emailInput.value.trim() !== "") {
			submitButton.disabled = false;
		} else {
			submitButton.disabled = true;
			emailError.style.display = "none";
		}
	});

	// 폼 제출 이벤트 리스너 추가
	document.querySelector("form").addEventListener(
			"submit",
			function(event) {
				event.preventDefault(); // 기본 제출 동작 방지

				// 이메일 형식 확인
				if (!emailPattern.test(emailInput.value)) {
					emailError.style.display = "block"; // 경고 메시지 표시
				} else {
					emailError.style.display = "none"; // 경고 메시지 숨김

					// 이메일 형식이 올바르면 다른 페이지로 이동, 이메일 정보를 URL에 포함
					const email = encodeURIComponent(emailInput.value);
					window.location.href = contextPath
							+ "/member/memberSendEmail.do?email=" + email;
				}
			});
});