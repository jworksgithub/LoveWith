document.addEventListener("DOMContentLoaded", function() {
    var input = document.querySelector("#phoneNumber");
    var select = document.querySelector("#countryCode");
    var button = document.querySelector("button[type='submit']");

    // 전화번호 입력 시 버튼 활성화 제어
    input.addEventListener("input", function() {
        if (input.value.trim() !== "") {
            button.disabled = false; // 값이 있을 경우 버튼 활성화
        } else {
            button.disabled = true; // 값이 없을 경우 버튼 비활성화
        }
    });

    // 버튼 클릭 시 유효성 검사 후 페이지 이동
    button.addEventListener("click", function(event) {
        event.preventDefault(); // 기본 동작 막기

        // 전화번호 값에서 공백을 제거하고 숫자만 남김
        var phoneNumber = input.value.trim().replace(/\D/g, '');

        // 전화번호가 11자리 숫자인지 확인
        if (phoneNumber.length === 11) {
            // select에서 선택된 국가 코드
            var countryCode = select.value;

            // 다음 페이지로 데이터 전달 (GET 방식)
            var nextPageUrl = "/views/member/sendingPhone.do?countryCode=" + encodeURIComponent(countryCode) + "&phoneNumber=" + encodeURIComponent(phoneNumber);
            window.location.href = nextPageUrl;
        } else {
            // 유효하지 않은 경우 경고 메시지 표시
            alert("유효하지 않은 전화번호입니다. 11자리 숫자를 입력해 주세요.");
        }
    });
});
