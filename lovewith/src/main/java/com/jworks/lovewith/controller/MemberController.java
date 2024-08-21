package com.jworks.lovewith.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.annotations.Api;

@Api(tags = "Member")
@Controller
public class MemberController {
	/*
	 * ======================= 회원로그인 =======================
	 */
	// 03로그인_01
	@GetMapping("/views/member/login.do")
	public String formLogin() throws Exception {
		return "/views/member/login.html";
		/*
		 * return "views/member/memberLogin";
		 */
	}

	// 03로그인_02이용약관
	@GetMapping("/views/member/agreement.do")
	public String Agreement() throws Exception {
		return "/views/member/agreement.html";
	}

	// 04회원가입_01이메일인증_01이메일입력
	@GetMapping("/views/member/emailCertification.do")
	public String EmailCertification() throws Exception {
		return "/views/member/emailCertification.html";
	}

	// 03회원가입_01이메일인증_02인증메일전송
	@GetMapping("/views/member/sendingEmail.do")
	public String SendEmail() throws Exception {
		return "/views/member/sendingEmail.html";
	}

	// 03회원가입_01이메일인증_03이름입력
	@GetMapping("/views/member/nmRegister.do")
	public String NmRegister() throws Exception {
		return "/views/member/nmRegister.html";
	}

	// 04회원가입_02휴대폰번호인증_01번호입력
	@GetMapping("/views/member/phoneCertification.do")
	public String PhoneCertification() throws Exception {
		return "/views/member/phoneCertification.html";
	}

	// 04회원가입_02휴대폰번호인증_02인증코드입력
	@GetMapping("/views/member/sendingPhone.do")
	public String SendPhone() throws Exception {
		return "/views/member/sendingPhone.html";
	}

	// 04회원가입_03가입완료2
	@GetMapping("/views/member/regSuccess.do")
	public String Success() throws Exception {
		return "/views/member/regSuccess.html";
	}

	// 04회원가입_04연인정보검색_01휴대폰검색
	@GetMapping("/views/member/searchForLoverPhone.do")
	public String searchForLoverPhone() throws Exception {
		return "/views/member/searchForLoverPhone.html";
	}

	/*
	 * ======================= 마이페이지 =======================
	 */
	@GetMapping("/views/member/myPage.do")
	public String myPage() {
		return "/views/member/myPage.html";
	}

	@GetMapping("/views/member/payUnlimited.do")
	public String payUnlimited() {
		return "/views/member/payUnlimited.html";
	}

	@GetMapping("/views/member/payAnnual.do")
	public String payAnnual() {
		return "/views/member/payAnnual.html";
	}
}
