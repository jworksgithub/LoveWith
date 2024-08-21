document.addEventListener("DOMContentLoaded", function() {
	const lastnameInput = document.getElementById('lastname');
	const firstnameInput = document.getElementById('firstname');
	const submitButton = document.querySelector("button[type='submit']");

	// 입력 필드 변화 감지
	function checkInputs() {
		if (lastnameInput.value.trim() !== ''
				&& firstnameInput.value.trim() !== '') {
			submitButton.disabled = false;
		} else {
			submitButton.disabled = true;
		}
	}

	// 입력 필드에서 입력이 발생할 때마다 checkInputs 호출
	lastnameInput.addEventListener('input', checkInputs);
	firstnameInput.addEventListener('input', checkInputs);

	// 폼 제출 시 다른 페이지로 이동
	document.querySelector('form').addEventListener('submit', function(event) {
		event.preventDefault(); // 기본 폼 제출 동작 방지
		window.location.href = contextPath + "/member/memberSuccess.do"; // 이동할 페이지 URL
	});

});
