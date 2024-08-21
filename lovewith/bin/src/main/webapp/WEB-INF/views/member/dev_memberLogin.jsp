<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>03로그인_01</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/memberLogin.css">
    <script src="${pageContext.request.contextPath}/js/memberLogin.js"></script>
</head>
<body>
	<div class="FULL_Popup_Header">
			<img src="${pageContext.request.contextPath}/img/close.png" alt="닫기 버튼" />
	</div>
	
	<div class="Logo">
			<img src="${pageContext.request.contextPath}/img/Logo.png" alt="로고 이미지">
	</div>
	
	<div class="BTN">
		<div class="btn-apple">
			<div id="appleid-signin" class="signin-button" data-color="black" data-border="true" data-type="sign in" ></div>
		</div>
		<div class="btn-kakao">
			<div id="kakao-login-btn" onclick="loginWithKakao()"> 
				<img src="${pageContext.request.contextPath}/img/kakao_login_medium_wide.png" alt="카카오 로그인 버튼" />
			</div>
		</div>
		<div class="btn-facebook">
			<div>
				<button class="fb-login-button"></button>
			</div>
		</div>
		<div>
			<div class="g-signin2" data-onsuccess="onSignIn"></div>
		</div>
		<div>
			<button class="btn-email">
				<img src="${pageContext.request.contextPath}/img/button/icon/email.png" alt="이메일">
				이메일로 시작하기
			</button>
		</div>
		<div>
			<button class="btn-phone">
				<img src="${pageContext.request.contextPath}/img/button/icon/phone2.png" alt="휴대폰">
				휴대폰으로 시작하기
			</button>
		</div>
	</div>
	
	<div class="TXT">
		<div class="Rectangle_10090">
			<p>
				가입함으로써, 귀하는 당사의 <a href="#"><u><b>이용약관</b></u></a>에
				동의하게 됩니다.
				<br>
				당사의 개인정보 사용방식에 관한 내용은 <a href="#"><u><b>개인정보취급방침</b></u></a>에서 확인하실 수
				있습니다.
			</p>
		</div>
	</div>

</body>

<!-- Apple START -->
	<script type="text/javascript"
		src="https://appleid.cdn-apple.com/appleauth/static/jsapi/appleid/1/en_US/appleid.auth.js"></script>
	<meta name="appleid-signin-client-id" content="[CLIENT_ID]">
	<meta name="appleid-signin-scope" content="[SCOPES]">
	<meta name="appleid-signin-redirect-uri" content="[REDIRECT_URI]">
	<meta name="appleid-signin-state" content="[STATE]">
	<meta name="appleid-signin-use-popup" content="true"> <!-- or false defaults to false -->
<!-- Apple END -->

<!-- 카카오 START -->
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.7.2/kakao.min.js"
	  integrity="sha384-TiCUE00h649CAMonG018J2ujOgDKW/kVWlChEuu4jK2vxfAAD0eZxzCKakxg55G4" crossorigin="anonymous"></script>
	<script>
	  Kakao.init('cc4b89ff2d9cd62379d8e39e2e55a4a0'); // 사용하려는 앱의 JavaScript 키 입력
	</script>
	<script>
	  function loginWithKakao() {
	    Kakao.Auth.authorize({
	      redirectUri: 'http://localhost:8080/kakao/callback',
	    });
	  }
	
	  // 아래는 데모를 위한 UI 코드입니다.
	  displayToken()
	  function displayToken() {
	    var token = getCookie('authorize-access-token');
	
	    if(token) {
	      Kakao.Auth.setAccessToken(token);
	      Kakao.Auth.getStatusInfo()
	        .then(function(res) {
	          if (res.status === 'connected') {
	            document.getElementById('token-result').innerText
	              = 'login success, token: ' + Kakao.Auth.getAccessToken();
	          }
	        })
	        .catch(function(err) {
	          Kakao.Auth.setAccessToken(null);
	        });
	    }
	  }
	
	  function getCookie(name) {
	    var parts = document.cookie.split(name + '=');
	    if (parts.length === 2) { return parts[1].split(';')[0]; }
	  }
	</script>
<!-- 카카오 END -->

<!-- 페이스북 START -->
	<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=1186415135744320" nonce="SiOBIhLG"></script>
	<script>
	
	export default {
	  name: "test",
	  created(){
	    window.fbAsyncInit = function() {
	      window.FB.init({
	        appId      : '1186415135744320', // 내 앱 ID
	        cookie     : true,
	        xfbml      : true,
	        version    : 'v11.0'
	      });
	      window.FB.AppEvents.logPageView();
	    };
	  },
	  methods: {
	    FBLoginBtn:function(){
	      window.FB.login(function(response) {
	        if (response.status === 'connected') {
	          window.FB.api('/me', 'get', {fields: 'name,email'}, function(r) {
	
	            const facebook_email = r.email;
	            const facebook_name = r.name;
	
	            console.log(facebook_email);
	            console.log(facebook_name);
	
	          })
	        } else if (response.status === 'not_authorized') {
	          // 사람은 Facebook에 로그인했지만 앱에는 로그인하지 않았습니다.
	          alert('앱에 로그인해야 이용가능한 기능입니다.');
	        } else {
	          // 그 사람은 Facebook에 로그인하지 않았으므로이 앱에 로그인했는지 여부는 확실하지 않습니다.
	          alert('페이스북에 로그인해야 이용가능한 기능입니다.');
	        }
	      }, {scope: 'public_profile,email'});
	
	    }
	  }
	}
	</script>
<!-- 페이스북 END -->

<!-- 구글 START -->
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
	<script>
		function onSignIn(googleUser) {
			  var profile = googleUser.getBasicProfile();
			  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
			  console.log('Name: ' + profile.getName());
			  console.log('Image URL: ' + profile.getImageUrl());
			  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
			}
	</script>
<!-- 구글 END -->
</html>