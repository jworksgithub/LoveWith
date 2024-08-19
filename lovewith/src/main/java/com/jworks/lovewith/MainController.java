package com.jworks.lovewith;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.Api;

@Api(tags="Main")
@Controller
public class MainController {
	
	/*=======================
	 * 메인
	 *=======================*/
	//splash(index)
	@RequestMapping("/")
	public String splash() throws Exception{
		//console 테스트
		System.out.println("========= hello loveWith (refresh) ============");
		
		return "splash";
	}
	
	//메인페이지
	@GetMapping("/main/main.do")
    public String mainPage() {
        return "main/main"; 
    }
	
	
	
}
