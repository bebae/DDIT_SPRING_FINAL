package com.ddit.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/stu")
public class MyPageController {
	
	@GetMapping("/mypage")
	public String getMyPage() {
		log.info("체킁:");
		return "mypage/myPage";
	}

}
