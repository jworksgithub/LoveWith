// URL에서 파라미터를 가져오는 함수
function getParameterByName(name) {
    const url = window.location.href;
    const nameRegex = name.replace(/[\[\]]/g, '\\$&');
    const regex = new RegExp('[?&]' + nameRegex + '(=([^&#]*)|&|#|$)');
    const results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}

document.addEventListener("DOMContentLoaded", function() {
    const countryCode = getParameterByName('countryCode');
    const phoneNumber = getParameterByName('phoneNumber');
    
    if (countryCode && phoneNumber) {
        document.getElementById('phoneInfo').innerText = countryCode + phoneNumber;
    } else {
        document.getElementById('phoneInfo').innerText = '휴대폰 번호 정보가 없습니다.';
    }

    const codeInputs = document.querySelectorAll('.code-input-group input');
    const submitButton = document.querySelector("button[type='submit']");
    const frameElement = document.querySelector('.Frame-816153');
    const resendButton = document.querySelector('.reSend-btn');

    // 처음에는 .Frame-816153 요소를 숨김
    frameElement.style.display = 'none';
    frameElement.style.whiteSpace = 'nowrap'; // 한 줄로 표시되도록 설정

    // 1초 후에 .Frame-816153 요소를 표시하고 계속 유지
    setTimeout(() => {
        frameElement.style.display = 'flex';
    }, 1000);
    
    // 입력 필드 이벤트 리스너 설정
    codeInputs.forEach((input, index) => {
        input.addEventListener('input', () => {
            handleInput(input, index);
            checkAllInputs(); // 모든 필드가 채워졌는지 확인하여 .Frame-816153 표시 제어
        });

        input.addEventListener('keydown', (e) => {
            handleBackspace(input, e, index);
        });
    });

    // 입력 필드의 입력 처리 함수
    function handleInput(input, index) {
        if (input.value.length === 1) {
            input.classList.add('filled'); // 입력된 값이 있을 때 테두리 색상 변경
            input.classList.remove('error'); // 오류가 있을 경우의 테두리 제거
            if (index < codeInputs.length - 1) {
                codeInputs[index + 1].focus(); // 다음 입력 필드로 포커스 이동
            }
        } else {
            input.classList.remove('filled'); // 값이 지워지면 원래 상태로 돌아가기
        }
        checkAllInputs();
    }

    // 백스페이스 키 처리 함수
    function handleBackspace(input, event, index) {
        if (event.key === 'Backspace' && input.value === '' && index > 0) {
            codeInputs[index - 1].focus(); // 이전 입력 필드로 포커스 이동
        }
    }

    // 모든 입력 필드가 채워졌는지 확인하는 함수
    function checkAllInputs() {
        const allFilled = Array.from(codeInputs).every(input => input.value.length === 1);
        
        submitButton.disabled = !allFilled; // 모든 필드가 채워졌을 때만 버튼 활성화
    }

    // "다음" 버튼 클릭 시 모든 필드가 채워졌는지 확인하고 페이지 이동
    submitButton.addEventListener('click', function(event) {
        event.preventDefault(); // 기본 동작 막기

        const code = Array.from(codeInputs).map(input => input.value).join('');
        
        if (code === '111111') {
            // 모든 필드가 올바르게 채워졌다면 페이지 이동
            window.location.href = "/views/member/regSuccess.do"; // 이동할 페이지 URL
        } else {
            // 인증 코드가 일치하지 않음 - 빨간 테두리 및 오류 메시지 표시
            codeInputs.forEach(input => {
                input.classList.add('error'); // 오류가 있을 때 테두리 색상 변경
            });

            // 기존 Frame-816153 메시지 숨김
            frameElement.style.display = 'none';

            const errorMessage = document.createElement('div');
            errorMessage.className = 'error-message';
            errorMessage.style.color = 'red';
            errorMessage.style.fontSize = '12px'; // 글씨 크기 12px로 설정
            errorMessage.style.whiteSpace = 'nowrap'; // 한 줄로 표시되도록 설정
            errorMessage.style.marginTop = '10px';
            errorMessage.innerText = "인증코드가 일치하지 않습니다​. 다시 시도해주세요.";

            frameElement.parentElement.appendChild(errorMessage); // Frame-816153 부모에 추가

            // 1초 후 입력 필드를 초기화하고 테두리 색상 원래대로 변경
            setTimeout(() => {
                codeInputs.forEach(input => {
                    input.value = ''; // 입력 값 초기화
                    input.classList.remove('error'); // 오류 테두리 제거
                    input.classList.remove('filled'); // 테두리 색상 초기화
                });
                submitButton.disabled = true; // 모든 입력 필드가 초기화되면 버튼 비활성화
                codeInputs[0].focus(); // 첫 번째 입력 필드로 포커스 이동
                errorMessage.remove(); // 오류 메시지 제거
                frameElement.style.display = 'flex'; // 기존 Frame-816153 메시지 다시 표시
            }, 1000);
        }
    });

    // "인증코드 재전송" 버튼 클릭 시 추가 동작을 구현
    resendButton.addEventListener('click', function() {
        // 여기에 인증코드 재전송 관련 로직 추가
        alert('인증코드가 재전송되었습니다.');
    });
});
