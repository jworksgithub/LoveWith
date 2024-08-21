package com.jworks.lovewith;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.Api;

@Api(tags = "Main")
@Controller
public class MainController {

	/*
	 * ======================= 메인 =======================
	 */
	// splash(index)
	@RequestMapping("/")
	public String splash() throws Exception {
		// console 테스트
		System.out.println("========= hello loveWith (refresh) ============");

		return "redirect:/views/splash.html";
	}

	// 메인페이지
	@RequestMapping("/views/main/main.do")
	public String main() throws Exception {
		return "/views/main/main.html";
	}

}
