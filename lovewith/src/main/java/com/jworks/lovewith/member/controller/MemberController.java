package com.jworks.lovewith.member.controller;

import com.jworks.lovewith.member.service.MemberService;
import com.jworks.lovewith.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.Timestamp;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @PostMapping("/register")
    public String register(@RequestParam("email") String email,
                           @RequestParam("password") String password,
                           @RequestParam("name") String name,
                           @RequestParam("nickname") String nickname,
                           @RequestParam("mfCode") String mfCode,
                           @RequestParam("cellNo") String cellNo) {
        MemberVO member = new MemberVO();
        member.setEmail(email);
        member.setPassword(password);
        member.setName(name);
        member.setNickname(nickname);
        member.setMfCode(mfCode);
        member.setCellNo(cellNo);
        member.setJoinDate(new Timestamp(System.currentTimeMillis()));

        boolean isRegistered = memberService.registerMember(member);
        if (isRegistered) {
            return "redirect:/login"; // 회원가입 성공 시 로그인 페이지로 리디렉션
        } else {
            return "redirect:/register"; // 회원가입 실패 시 회원가입 페이지로 리디렉션
        }
    }
}
