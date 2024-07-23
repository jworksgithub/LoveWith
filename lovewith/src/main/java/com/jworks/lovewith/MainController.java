package com.jworks.lovewith;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.charset.StandardCharsets;
import java.io.File;
import java.io.IOException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import io.swagger.annotations.Api;

@Api(tags="Main")
@Controller
public class MainController {

	@RequestMapping("/login")

	    @GetMapping
	    public String showLoginPage() {
	        return "login/login"; // login.jsp 파일을 반환하도록 설정
	    }
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
        return "redirect:loveIndex";
    }

    @RequestMapping("/certificate")
    public String certificate() throws Exception {
        return "certificate/certificate";
    }

    @RequestMapping("/coupleConnect")
    public String coupleConnect() throws Exception {
        return "login/coupleConnect";
    }

    @RequestMapping("/forgotPassword")
    public String forgotPassword() throws Exception {
        return "login/forgotPassword";
    }

    @RequestMapping("/join")
    public String join() throws Exception {
        return "Join/join";
    }

    @RequestMapping("/loveIndex")
    public String loveIndex() throws Exception {
        return "main/loveIndex";
    }

    @RequestMapping("/register")
    public String register() throws Exception {
        return "Join/register";
    }

    @RequestMapping("/more")
    public String more() {
        return "more_settings/more";
    }

    @RequestMapping("/event")
    public String event() {
        return "event/event";
    }

    @RequestMapping("/settings")
    public String settings() {
        return "more_settings/settings";
    }

    @RequestMapping("/qna")
    public String qna() {
        return "more_settings/qna";
    }

    @PostMapping("/uploadProfilePic")
    public String uploadProfilePic(@RequestParam("profilePic") MultipartFile file,
                                   @RequestParam("profileId") int profileId,
                                   RedirectAttributes redirectAttributes) {
        if (file.isEmpty()) {
            redirectAttributes.addFlashAttribute("message", "파일이 선택되지 않았습니다.");
            return "redirect:loveIndex";
        }

        try {
            // 파일 저장 경로
            String fileName = "profile_" + profileId + ".png";
            String filePath = "src/main/resources/static/img/" + fileName;
            File dest = new File(filePath);
            file.transferTo(dest);

            redirectAttributes.addFlashAttribute("message", "파일이 성공적으로 업로드되었습니다.");
        } catch (IOException e) {
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("message", "파일 업로드 중 오류가 발생했습니다.");
        }

        return "redirect:loveIndex";
    }

    @GetMapping("/profile")
    public String profile() {
        return "main/loveIndex"; // 적절한 JSP 페이지로 리디렉션
        
    }
}
