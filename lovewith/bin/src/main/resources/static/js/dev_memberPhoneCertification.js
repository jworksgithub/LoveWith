document.addEventListener("DOMContentLoaded", function() {
    var input = document.querySelector("#phoneNumber");
    var select = document.querySelector("#countryCode");
    var button = document.querySelector("button[type='submit']");
    
    var iti = window.intlTelInput(input, {
        initialCountry: "auto",
        geoIpLookup: function(callback) {
            fetch('https://ipinfo.io/json?token=YOUR_TOKEN_HERE')
                .then(response => response.json())
                .then(data => callback(data.country))
                .catch(() => callback("us"));
        },
        utilsScript: "https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.8/js/utils.js",
        nationalMode: true, // 국가 코드가 input에 표시되지 않도록 설정
        autoHideDialCode: true, // 입력 시 국가 코드를 자동으로 숨김
        separateDialCode: true, // input 필드에 플래그나 국가 코드 표시하지 않음
    });

    // 선택된 국가의 플래그 이미지를 select 요소의 배경으로 설정
    function updateFlag() {
        var countryData = iti.getSelectedCountryData();
        select.style.backgroundImage = 'url(https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.4.3/flags/4x3/' + countryData.iso2 + '.svg)';
        select.style.backgroundRepeat = 'no-repeat';
        select.style.backgroundPosition = 'right 10px center';
        select.style.backgroundSize = '20px 15px';
        select.style.paddingRight = '20px'; // 플래그 이미지 공간 확보
    }

    // select에서 국가 변경 시 intl-tel-input의 국가도 변경 및 placeholder 변경
    select.addEventListener("change", function() {
        var countryCode = select.value.toLowerCase();
        iti.setCountry(countryCode);

        // 선택된 국가에 따른 placeholder 업데이트
        var exampleNumber = iti.getNumberPlaceholder(); // 기본 예제 번호 가져오기
        input.placeholder = exampleNumber;

        // 플래그 업데이트
        updateFlag();
    });

    // intl-tel-input에서 국가 변경 시 select의 값도 변경
    input.addEventListener("countrychange", function() {
        var countryData = iti.getSelectedCountryData();
        select.value = countryData.iso2.toUpperCase();

        // 플래그 업데이트
        updateFlag();
    });

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
            // 유효한 전화번호일 경우 다음 페이지로 이동
            window.location.href = contextPath + "/main/main.do"; // 이동할 페이지 URL
        } else {
            // 유효하지 않은 경우 경고 메시지 표시
            alert("유효하지 않은 전화번호입니다. 11자리 숫자를 입력해 주세요.");
        }
    });

    // 페이지 로드 시 플래그 초기화
    updateFlag();
});
