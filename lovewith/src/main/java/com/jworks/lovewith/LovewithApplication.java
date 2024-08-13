package com.jworks.lovewith;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
//@MapperScan(value= {"com.jworks.lovewith_jar.board.mapper"})	//Mapper인터페이스를 인식할 수 있도록 설정
@EnableSwagger2
public class LovewithApplication {

	public static void main(String[] args) {
		SpringApplication.run(LovewithApplication.class, args);
	}
	
	/*
	 * SqlSessionFactory 설정
	 */
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
		
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		
		sessionFactory.setDataSource(dataSource);
		
		return sessionFactory.getObject();
	}

}
