package com.ddit.proj.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ddit.proj.service.TaskService;
import com.ddit.proj.vo.TaskVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/pro")
public class TaskListController {

	@Autowired
	private TaskService taskService;
	
//	과제목록 페이지 가져오기
	@GetMapping("/task")
	public String task(Principal principal,Model model) {
	String memNo="202008P003";
	if(principal != null) {
		memNo = principal.getName();
	}
//	셀렉트 강의
	List<TaskVO> taskVO = taskService.getLecCode(memNo); 
	model.addAttribute("lecCode",taskVO);
	
		return "task/taskList";
	}
	
	//과제목록 가져오기
	@ResponseBody
	@GetMapping("/seltaskList/{lecCode}")
	public List<TaskVO> seltaskList(@PathVariable int lecCode) {
		return taskService.getTaskList(lecCode);
	}
	
	@GetMapping("/submitTask")
	public String submitTask() {
		return "task/submitTask";
	}
	
	@GetMapping("/submitDetail")
	public String submitDetail() {
		return "task/submitDetailTask";
	}
}
