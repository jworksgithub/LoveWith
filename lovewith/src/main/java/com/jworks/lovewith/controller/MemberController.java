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
	@GetMapping("/member/memberLogin.do")
	public String formLogin() throws Exception {
		return "member/memberLogin";
	}

	// 03로그인_02이용약관
	@GetMapping("/member/memberAgreement.do")
	public String Agreement() throws Exception {
		return "member/memberAgreement";
	}

	// 04회원가입_01이메일인증_01이메일입력
	@GetMapping("/member/memberEmailCertification.do")
	public String EmailCertification() throws Exception {
		return "member/memberEmailCertification";
	}

	// 03회원가입_01이메일인증_02인증메일전송
	@GetMapping("/member/memberSendEmail.do")
	public String SendEmail() throws Exception {
		return "member/memberSendEmail";
	}

	// 03회원가입_01이메일인증_03이름입력
	@GetMapping("/member/memberNmRegister.do")
	public String NmRegister() throws Exception {
		return "member/memberNmRegister";
	}
	
	// 04회원가입_02휴대폰번호인증_01번호입력
		@GetMapping("/member/memberPhoneCertification.do")
		public String PhoneCertification() throws Exception {
			return "member/memberPhoneCertification";
		}

	/*
	 * ======================= 마이페이지 =======================
	 */
	@GetMapping("/member/myPage.do")
	public String myPage() {
		return "member/myPage";
	}

	@GetMapping("/member/payUnlimited")
	public String payUnlimited() {
		return "member/payUnlimited";
	}

	@GetMapping("/member/payAnnual")
	public String payAnnual() {
		return "member/payAnnual";
	}
}
