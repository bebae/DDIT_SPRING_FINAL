package com.ddit.proj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ddit.proj.service.TestService;
import com.ddit.proj.vo.TestVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/prof")
public class TestRegisterController {
	
	
	@Autowired
	private TestService testService;
	
	/*
	@GetMapping("/testRegisterDetail")
	public List<TestVO> getList(){
		return testService.listTest();
	}
	*/
	
	@GetMapping("/test")
	public String getTestRegister(Model model,Authentication auth) {

		String memNo = "202008P003";
		
		if(auth != null) {
			memNo = auth.getName();				
		}
				
		List<TestVO> testRegiNoticeList = testService.getTestVO(1);
		log.debug("testVO" + testRegiNoticeList);
		
		model.addAttribute("testRegiNoticeList", testRegiNoticeList);
		
		return "test/testRegister";
	}
	
	// 시험 수정
   @GetMapping("/testRegisterModify")
   public String testRegisterModify(int testCode, Model model) {
      log.info("체킁 testCode:" + testCode);
      
      TestVO test = new TestVO();
      test.setTestCode(testCode);
      
      TestVO testVO = testService.getTest(testCode);
      model.addAttribute("testVO", testVO);
      log.info("나와라" + testVO);
      
      return "test/testRegisterModify";
   }
	
   
   
   @PutMapping("/testRegisterModify")
	public String updateTest(@RequestBody TestVO testVO) {
		return Integer.toString(testService.updateTest(testVO));
	}
	
	/*
	@GetMapping("/testRegisterDetail")
	public List<TestVO> getlistTest(){
		return testService.listTest();
	}
	*/
	
   
   
	/*
	@DeleteMapping("/testRegister/{testCode}")
	public String deleteTest(@PathVariable String testCode) {
		TestVO testVO = new TestVO();
		testVO.setTestCode(testCode);;
		return Integer.toString(testService.deleteTest(testVO));
	}
	*/
}
