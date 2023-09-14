package com.ddit.proj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ddit.proj.service.DepartmentService;
import com.ddit.proj.service.MemberService;
import com.ddit.proj.vo.DepartmentVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
public class DepartmentController {
	
	@Autowired
	private DepartmentService departmentService;
	private MemberService memberService;
	
	// 학과 등록 페이지
	@GetMapping("/department")
	public String department(Model model) {
		
		// 학과장 조회
	    List<DepartmentVO> provostList = departmentService.selectProvostList("N");
	    log.info("provostList: " + provostList);

	    // 조교 조회
	    List<DepartmentVO> TAList = departmentService.selectTAList("05");
	    log.info("TAList: " + TAList);
	    
	    // 단과대 조회
	    List<DepartmentVO> colList = departmentService.selectColList("COLL");
	    log.info("colList:" + colList);
	    
	    model.addAttribute("provostList", provostList);
	    model.addAttribute("TAList", TAList);
	    model.addAttribute("colList", colList);
	    
	    return "department/departmentInsert";
	}
	
	// 학과 등록
	@ResponseBody
	@PostMapping("/department")
	public String insertDepartment(@RequestBody DepartmentVO departmentVO) {
		//{"colCode":"ART","depNm":"미용학과","depCode":"A2","depDc":"asdf","depCap":"2","depTel":"0421231234","provost":"201701P001","TA":"201803E008"}
		//(depCode=A2, colCode=ART, depNm=미용학과, depDc=미용학과 소개, depDrhf=null, depCap=60, depTel=0425558788, depDelYn=null, memNo=null, memNm=null
		//, codeId=null, codeNm=null, groupId=null, proPosYN=null)
		log.debug("채현만만세:{}",departmentVO);
		
		int result = departmentService.insertDepartment(departmentVO);
		
		if(result>0) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	// 학과 리스트 조회
	@GetMapping("/departmentList")
	public String departmentList() {
		
		return "department/departmentList";
	}
	
	@GetMapping("/getList")
	@ResponseBody
	public List<DepartmentVO> getList(){
		List<DepartmentVO> dList = departmentService.listDepartment();
		return dList;
	}
	
	// 학과 상세보기
	@GetMapping("/departmentDetail")
	public String departmentDetail(String depCode) {
		
		return "department/departmentDetail";
	}
}
