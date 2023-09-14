package com.ddit.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/prof")
public class TestStuDetailController {
	
	/*
	@Autowired
	private TestService testService;
	*/
	

	/*
	@GetMapping("/testRegisterDetail")
	public List<TestVO> getList(){
		return testService.listTest();
	}
	*/
	
	@GetMapping("/testStuDetail")
	public String getTestNotice() {
		log.info("체킁:");
		return "test/testStuDetail";
	}
}
