package com.ustglobal.junit.spring.main;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.ustglobal.junit.spring.service.SampleService;
import com.ustglobal.junit.spring.service.SampleServiceImpl;

@Configuration
public class AppConfig {
	@Bean
	public SampleService getSampleService() {
		return new SampleServiceImpl();
	}
}
