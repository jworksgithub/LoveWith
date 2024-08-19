package com.jworks.lovewith.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.swagger.annotations.Api;

@Api(tags="Member")
@Controller
public class MemberController {
	
	/*=======================
	 * 회원로그인
	 *=======================*/
	//로그인 폼
	@GetMapping("/member/memberLogin.do")
	public String formLogin() throws Exception{
		return "member/memberLogin";
	}
	
	//이용약관
	@GetMapping("/member/memberAgreement.do")
	public String Agreement() throws Exception{
		return "member/memberAgreement";
	}
	
	//이메일인증
	@GetMapping("/member/memberEmailCertification.do")
	public String EmailCertification() throws Exception{
		return "member/memberEmailCertification";
	}
	
	
	/*=======================
	 * 마이페이지
	 *=======================*/
    @GetMapping("/member/myPage")
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
