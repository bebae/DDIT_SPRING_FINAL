package com.ddit.proj.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ddit.proj.service.AttenadenceService;
import com.ddit.proj.vo.AttenadenceVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/pro")
public class AttenadenceController {

	@Autowired
	private AttenadenceService attenadence;

	@GetMapping("/atten")
	public String getStuAtten() {
		return "atten/proAtten";
	}
	
	// RESTFUL방식을 적용하면 기본 5가지(get(리스트,1개),post,put,delete)
	// 리스트 조회
	@ResponseBody
	@GetMapping(value = "/attens", produces = "application/json;charset=utf-8")
	public List<AttenadenceVO> getAttens() {
		return attenadence.listAtten();
	}

	// 1개 조회
	@ResponseBody
	@GetMapping(value = "/atten/{atenDe}", produces = "application/json;charset=utf-8")
	public AttenadenceVO getAtten(@PathVariable Date atenDe) {
		AttenadenceVO attenadenceVO = new AttenadenceVO();
		attenadenceVO.setAtenDe(atenDe);
		return attenadence.getAtten(attenadenceVO);
	}

	// 1개 insert
	@ResponseBody
	@PostMapping(value = "/atten", produces = "application/json;charset=utf-8")
	public String postAtten(@RequestBody AttenadenceVO attenadenceVO) {
		return Integer.toString(attenadence.insertAtten(attenadenceVO));
	}

	// 1개 수정
	@ResponseBody
	@PutMapping(value = "/atten", produces = "application/json;charset=utf-8")
	public String putAtten(@RequestBody AttenadenceVO attenadenceVO) {
		return Integer.toString(attenadence.updateAtten(attenadenceVO));
	}

	// 1개 삭제
	@ResponseBody
	@DeleteMapping(value = "/atten/{atenDe}", produces = "application/json;charset=utf-8")
	public String deleteAtten(@PathVariable Date atenDe) {
		AttenadenceVO attenadenceVO = new AttenadenceVO();
		attenadenceVO.setAtenDe(atenDe);
		return Integer.toString(attenadence.deleteAtten(attenadenceVO));
	}
	
	// 해당 교수 강의 목록
	@ResponseBody
	@GetMapping(value = "/atten/list/{memNo}", produces = "application/json;charset=utf-8")
	public List<AttenadenceVO> listLecByPro(@PathVariable String memNo) {
		return attenadence.listLecByPro(memNo);
	}
	
	// 해당 교수 강의 목록 > 수강생 목록
	@ResponseBody
	@GetMapping(value = "/atten/list/stu/{lecCode}", produces = "application/json;charset=utf-8")
	public List<AttenadenceVO> listStuByLec(@PathVariable String lecCode){
		return attenadence.listStuByLec(lecCode);
	}

	// 출결 목록
//	@ResponseBody
//	@GetMapping(value = "/atten/list/stu/lec", produces = "application/json;charset=utf-8")
//	public List<AttenadenceVO> listStuByLec(@PathVariable String lecCode){
//		return attenadence.listStuByLec(lecCode);
//	}
	
	// 해당 교수 강의 목록 > 수강생 목록 > cnt 조회
	@ResponseBody
	@GetMapping(value = "/atten/attendanceCnt", produces = "application/json;charset=utf-8")
	public AttenadenceVO attendanceCnt(@RequestParam("lecCode") String lecCode, @RequestParam("memNo") String memNo){
		log.info("lecCode: " + lecCode + ", memNo: " + memNo);
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("lecCode", lecCode);
	    map.put("memNo", memNo);
		AttenadenceVO vo = attenadence.attendanceCnt(map);
		log.info("attendanceCnt->vo : " + attenadence.attendanceCnt(map));
		
		return vo;
	}
	
	
	
	
}