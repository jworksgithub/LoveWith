package com.jworks.lovewith;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import io.swagger.annotations.Api;

@Api(tags="Main")
@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index() throws Exception{
		
		//console 테스트
		System.out.println("========= hello loveWith (refresh) ============");
		
		return "index";
		
	}
	
}
