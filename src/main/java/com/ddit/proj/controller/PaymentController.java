package com.ddit.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/stu")
public class PaymentController {
	
	@GetMapping("/payment")
	public String payment() {
		log.info("체킁:");
		
		return "payment/payment";
	}
	

}
