<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더 include -->
<%@ include file="/WEB-INF/views/template/header_left_backBtn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>loverInformationSearch</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/Guide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/loverInformationSearch.css">
</head>
<body>
	<div class="container">
		<div class="upperPart">
			<p class="lis">연인 정보 검색</p>
			<p class="lis_description">
				본인의 연인에 대한 이름과 휴대폰 번호, 이메일 등을 <br>검색하여 커플 정보를 확인해주세요.
			</p>
		</div>
		<div class="MiddlePart">
			<label class="radio_1"> <input type="radio" name="option"
				value="phone" checked> <span class="custom-radio"></span>
				휴대폰
			</label> <span class="bar">|</span> <label class="radio_2"> <input
				type="radio" name="option" value="email"> <span
				class="custom-radio"></span> 이메일
			</label>
		</div>
	
		<form id="searchForm">
			<div class="name">
				<label for="name" class="loverName">연인 이름</label> <input type="text"
					id="name" class="name-input" required>
			</div>
			<label for="phone" class="loverPhoneNumber">휴대폰 번호</label>
			<div class="select-country">
				<select id="countryCode" class="country-select">
					<option value="KR">KR +82</option>
					<option value="us">US +1</option>
					<option value="jp">JP +81</option>
				</select> <input type="text" id="phone" class="phoneNumber-input" required>
			</div>
		</div>
	</form>

	<footer>
		<button type="submit" id="searchButton" class="findButton" disabled>찾아보기</button>
	</footer>
	<!-- 인풋 모두 입력 시 버튼 활성화 -->
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			const nameInput = document.getElementById("name");
			const phoneInput = document.getElementById("phone");
			const searchButton = document.getElementById("searchButton");

			function validateInputs() {
				if (nameInput.value.trim() !== "" && phoneInput.value.trim() !== "") {
					searchButton.disabled = false;
					searchButton.style.backgroundColor = "#643EF8";  // 보라색으로 변경
				} else {
					searchButton.disabled = true;
					searchButton.style.backgroundColor = "#D3D3D3";  // 회색으로 비활성화 상태
				}
			}

			// 입력 필드에 입력할 때마다 검사
			nameInput.addEventListener("input", validateInputs);
			phoneInput.addEventListener("input", validateInputs);
		});
	</script>
</body>
</html>