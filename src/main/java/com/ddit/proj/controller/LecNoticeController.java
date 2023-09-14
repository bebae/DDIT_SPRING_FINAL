package com.ddit.proj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ddit.proj.service.LecNoticeService;
import com.ddit.proj.vo.LecNoticeVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/stu")
public class LecNoticeController {
	
	@Autowired
	private LecNoticeService lecNoticeService;
	
	
	/*
	 @GetMapping("/lec") public String LecNoticeMain() {
	 	log.info("체킁:"); return
	  	"lec/lecNotice"; 
	  	}
	 */
	
	
	@GetMapping("/lec")
	public String applyForm(Model model,Authentication auth){
		
		
		log.debug("체크{}",auth.getName());
		String lecCode = auth.getName();
		
		List<LecNoticeVO> lecNoticeList = lecNoticeService.getLecNoticeVO("1");
		log.debug("lecNoticeVO" + lecNoticeList);

	    model.addAttribute("lecNoticeList", lecNoticeList);
	    
		
		return "lec/lecNotice";  
	}
	
	
	@GetMapping("/lecList")
	public List<LecNoticeVO> getlistLecNotice(){
		return lecNoticeService.listLecNotice();
	}
	
}
