package com.jworks.lovewith.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@Configuration
public class SwaggerConfig {
	
	@Bean
	public Docket api() {
		return new Docket(DocumentationType.SWAGGER_2)
				.apiInfo(apiInfo())
				.select()
				//.apis(RequestHandlerSelectors.any())
				//현재 프로젝트의 루트 패키지 경로
				.apis(RequestHandlerSelectors.basePackage("com.jworks.lovewith"))
				.paths(PathSelectors.any())
				.build();
	}
	
	//Swagger UI 보여지는 정보
	private ApiInfo apiInfo() {
		return new ApiInfoBuilder()
				.title("LoveWith Spring Boot Open API TEST with swagger")
				.description("Swagger를 사용한 Spring Boot Open API 테스트")
				.version("1.0.0")
				.build();
	}

}
