package com.jworks.lovewith;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import io.swagger.annotations.Api;

@Api(tags="Main")
@Controller
public class MainController {

    @RequestMapping("/")
    public String index() throws Exception {
        System.out.println("hello world(refresh)");
        return "index";
    }

    @PostMapping("/connect")
    public String connect(@RequestParam("myCode") String myCode, @RequestParam("partnerCode") String partnerCode) {
        // 연결 작업 처리 로직 추가
        System.out.println("My Code: " + myCode);
        System.out.println("Partner Code: " + partnerCode);

        // loveIndex.jsp로 리다이렉트 설정
        return "redirect:/loveIndex";
    }

    @RequestMapping("/certificate")
    public String certificate() throws Exception {
        return "certificate";
    }

    @RequestMapping("/coupleConnect")
    public String coupleConnect() throws Exception {
        return "coupleConnect";
    }

    @RequestMapping("/forgotPassword")
    public String forgotPassword() throws Exception {
        return "forgotPassword";
    }

    @RequestMapping("/join")
    public String join() throws Exception {
        return "join";
    }

    @RequestMapping("/loveIndex")
    public String loveIndex() throws Exception {
        return "loveIndex";
    }

    @RequestMapping("/register")
    public String register() throws Exception {
        return "register";
    }

    @RequestMapping("/verification")
    public String verification() throws Exception {
        return "verification";
    }
}
