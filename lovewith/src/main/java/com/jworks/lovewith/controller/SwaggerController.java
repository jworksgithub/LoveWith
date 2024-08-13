package com.jworks.lovewith.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;

@Api(tags="Swagger")
@RestController
@RequestMapping("/swagger")
public class SwaggerController {

	@ApiOperation(value="Swagger 예제", notes="Swagger의 기본 Annotation")
	@GetMapping("/example1")
	public String getSwaggerExam(
			@ApiParam(value="이름", required= true) @RequestParam String name
			) {
		return name;
	}
	
}

/*
 * @Annotation
 * @ApiOperation : 대상 API의 설명을 작성하기 위한 어노테이션
 * @ApiParam : 매개변수에 대한 설명 및 설정을 위한 어노테이션
 * 메서드의 매개변수뿐 아니라 DTO 객체를 매개변수로 사용할 경우
 * DTO클래스 내의 매개변수에도 정의할 수 있다.
 */