document.addEventListener('DOMContentLoaded', function() {
    function showButtons() {
        document.getElementById('buttonContainer').style.display = "block";
    }

    function openModal() {
        document.getElementById('loginModal').style.display = "block";
    }

    function closeModal() {
        document.getElementById('loginModal').style.display = "none";
    }

    function openLoginModal(event) {
        event.preventDefault();
        document.getElementById('loginModal').style.display = "block";
    }

    function openForgotPassword() {
        window.open('/forgotPassword', '_blank', 'width=600,height=700'); // 창의 너비를 600으로 설정
    }

    var agreeCheckbox = document.getElementById('agreeCheckbox');
    var disagreeCheckbox = document.getElementById('disagreeCheckbox');
    var nextButton = document.getElementById('nextButton');

    function updateNextButtonState() {
        if (agreeCheckbox.checked && !disagreeCheckbox.checked) {
            nextButton.disabled = false;
        } else {
            nextButton.disabled = true;
        }
    }

    if (agreeCheckbox) {
        agreeCheckbox.addEventListener('change', updateNextButtonState);
    }

    if (disagreeCheckbox) {
        disagreeCheckbox.addEventListener('change', updateNextButtonState);
    }

    function submitLogin() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        console.log("Username: " + username);
        console.log("Password: " + password);

        var correctUsername = "홍길동"; // 예제 사용자 이름
        var correctPassword = "000000"; // 예제 비밀번호

        if (username === correctUsername && password === correctPassword) {
            // 로그인 성공 시 커플 연결 페이지로 이동
            window.location.href = "/coupleConnect";
        } else {
            alert('사용자 이름 또는 비밀번호가 올바르지 않습니다.');
        }
    }
    
    function openInquiryForm() {
        document.getElementById('inquiryModal').style.display = 'block';
    }

    function closeInquiryForm() {
        document.getElementById('inquiryModal').style.display = 'none';
    }
    
    function openGuideModal() {
        document.getElementById('guideModal').style.display = 'block';
    }

    function closeGuideModal() {
        document.getElementById('guideModal').style.display = 'none';
    }
    
    function openTermsModal() {
        document.getElementById('termsModal').style.display = 'block';
    }

    function closeTermsModal() {
        document.getElementById('termsModal').style.display = 'none';
    }
    
    function openPrivacyModal() {
        document.getElementById('privacyModal').style.display = "block";
    }

    function closePrivacyModal() {
        document.getElementById('privacyModal').style.display = "none";
    }
    
    function openLogoutModal() {
        document.getElementById('logoutModal').style.display = "block";
    }

    function closeLogoutModal() {
        document.getElementById('logoutModal').style.display = "none";
    }

    function confirmLogout() {
        // 실제 로그아웃 동작을 여기에 추가하세요
        alert('로그아웃되었습니다.');
        closeLogoutModal();
    }

    // 모달 외부 클릭 시 모달 닫기
    window.onclick = function(event) {
        var modal = document.getElementById('loginModal');
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }

    // Add the event listener for the image click to show the buttons
    var logoImage = document.querySelector('img[alt="로고"]');
    if (logoImage) {
        logoImage.addEventListener('click', showButtons);
    }
    // Attach submitLogin and openModal to a global object so they can be called from the HTML
    window.submitLogin = submitLogin;
    window.openModal = openModal;
    window.closeModal = closeModal;
    window.openForgotPassword = openForgotPassword;
    window.navigateTo = navigateTo;
    window.openInquiryForm = openInquiryForm;  
    window.closeInquiryForm = closeInquiryForm;
    window.openGuideModal = openGuideModal;
    window.closeGuideModal = closeGuideModal;
    window.openTermsModal = openTermsModal;
    window.closeTermsModal = closeTermsModal;
    window.openPrivacyModal = openPrivacyModal;
    window.closePrivacyModal = closePrivacyModal;
    window.openLogoutModal = openLogoutModal;
    window.closeLogoutModal = closeLogoutModal;
    window.confirmLogout = confirmLogout;
});

function navigateTo(page) {
    window.location.href = '/' + page;
}
