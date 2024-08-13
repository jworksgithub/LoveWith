package com.jworks.lovewith;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//import com.jworks.lovewith.board.mapper.BoardMapper;

import io.swagger.annotations.Api;

@Api(tags="Main")
@Controller
public class MainController {
	
	//@Resource(name="com.jworks.lovewith_jar.board.mapper.BoardMapper")
	//BoardMapper mBoardMapper;
	
/*	
 	@RequestMapping("/test")
	private String jspTest() throws Exception{
		
		//console 테스트
		System.out.println(mBoardMapper.boardCount());
		
		return "test"; //생성한 jsp명 (test.jsp)
	}
*/
	
	//@GetMapping("/")
	//@ResponseBody
	@RequestMapping("/")
	public String index() throws Exception{
		
		//console 테스트
		System.out.println("hello world(refresh)");
		
		return "index";
		
	}
	
}
