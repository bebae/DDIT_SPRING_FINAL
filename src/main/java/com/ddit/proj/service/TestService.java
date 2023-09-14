package com.ddit.proj.service;

import java.util.List;

import com.ddit.proj.vo.DormitoryApplyFormVO;
import com.ddit.proj.vo.DormitoryApplyVO;
import com.ddit.proj.vo.TestChoiceVO;
import com.ddit.proj.vo.TestExamVO;
import com.ddit.proj.vo.TestVO;

public interface TestService {
	List<TestVO> listTest();
	
	// 시험등록select
	List<TestVO> getTestVO(int testCode);

	TestVO getTest(int testCode);

	
	
	int insertTest(TestVO testVO);

	int updateTest(TestVO testVO);

	int deleteTest(TestVO testVO);

	// TestExamVO
	int insertTestExam(TestExamVO examVO);
	
	// TestChoiceVO
	int insertTestChoice(TestChoiceVO testChoiceVO);
	
	// TestVO + TestExamVO
	String insertTestCombined(TestVO testVO);
	
}
