package com.ddit.proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/stu")
public class StuLecList {
	
	//임시
	@GetMapping("/stuLecList")
	public String getStuLecList() {
		log.info("체킁:");
		return "lec/stuLecList";
	}
	//

	
	/*
	@Autowired
	private DormitoryService dormitoryService;

	@GetMapping("/stuLecList")
	public String lecList(Model model, Authentication auth) {

		log.debug("체크{}", auth.getName());

		String memNo = auth.getName();
		LecApplyVO lecApplyVO = dormitoryService.lecApplyVO(memNo);
		log.debug("lecApplyVO" + lecApplyVO);

		model.addAttribute("lecApplyVO", lecApplyVO);

		return "lec/stuLecList"; // 수강강의목록 
	}
	*/
}
