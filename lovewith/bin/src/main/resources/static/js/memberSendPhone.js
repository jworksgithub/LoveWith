document.addEventListener("DOMContentLoaded", function() {
    const codeInputs = document.querySelectorAll('.code-input-group input');
    const submitButton = document.querySelector("button[type='submit']");
    const frameElement = document.querySelector('.Frame-816153');

    // 처음에는 .Frame-816153 요소를 숨김
    frameElement.style.display = 'none';
    frameElement.style.whiteSpace = 'nowrap'; // 한 줄로 표시되도록 설정
    
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
        
        if (allFilled) {
            frameElement.style.display = 'flex'; // 모든 필드가 채워졌다면 .Frame-816153 요소 표시
            frameElement.textContent = ''; // 오류 메시지를 초기화
        } else {
            frameElement.style.display = 'none'; // 그렇지 않으면 숨김
        }
        
        submitButton.disabled = !allFilled; // 모든 필드가 채워졌을 때만 버튼 활성화
    }

    // "다음" 버튼 클릭 시 모든 필드가 채워졌는지 확인하고 페이지 이동
    submitButton.addEventListener('click', function(event) {
        event.preventDefault(); // 기본 동작 막기

        const code = Array.from(codeInputs).map(input => input.value).join('');
        
        if (code === '111111') {
            // 모든 필드가 올바르게 채워졌다면 페이지 이동
            window.location.href = contextPath + "/member/memberSuccess.do"; // 이동할 페이지 URL
        } else {
            // 인증 코드가 일치하지 않음 - 빨간 테두리 및 오류 메시지 표시
            codeInputs.forEach(input => {
                input.classList.add('error'); // 오류가 있을 때 테두리 색상 변경
            });
            frameElement.style.display = 'block'; // 오류 메시지 표시
            frameElement.textContent = "인증코드가 일치하지 않습니다​. 다시 시도해주세요."; // 오류 메시지 내용
            frameElement.style.color = 'red'; // 오류 메시지 색상 설정
        }

    });
});
