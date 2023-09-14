package com.ddit.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/security")
@Controller
public class LoginController {
	
	// 로그인 페이지로 포워딩
	// 요청URI : /security/login
	// 요청방식 : get
	@GetMapping("/login")
	public String login() {
		// forwarding
		return "/security/login";
	}
	
	
	
	
}

