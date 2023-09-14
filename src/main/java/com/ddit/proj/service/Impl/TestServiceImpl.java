package com.ddit.proj.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ddit.proj.mapper.TestMapper;
import com.ddit.proj.service.TestService;
import com.ddit.proj.vo.TestChoiceVO;
import com.ddit.proj.vo.TestExamVO;
import com.ddit.proj.vo.TestVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class TestServiceImpl implements TestService {
	
	@Autowired
	private TestMapper testMapper;
	
	@Override
	public List<TestVO> listTest() {
		return testMapper.listTest();
	}

	@Override
	public TestVO getTest(int testCode) {
		return testMapper.getTest(testCode);
	}
	
	// 시험등록 select
	@Override
	public List<TestVO> getTestVO(int testCode) {
		return testMapper.getTestVO(testCode);
	}
	
	

	@Override
	public int insertTest(TestVO testVO) {

		return testMapper.insertTest(testVO);
	}

	@Override
	public int updateTest(TestVO testVO) {
		return testMapper.updateTest(testVO);
	}

	@Override
	public int deleteTest(TestVO testVO) {
		return testMapper.deleteTest(testVO);
	}

	@Override
	public int insertTestExam(TestExamVO examVO) {
		return testMapper.insertTestExam(examVO);
	}

	@Override
	@Transactional // 세트 동작
	public String insertTestCombined(TestVO testVO) {
		
		// 테스트 insert  기대값  1
		int rslt = testMapper.insertTest(testVO);
		
		int testCode = testVO.getTestCode();
		int steCode  = 0;
		log.debug("testCode" + testCode);
		
		int examCnt =0;
		int choiceCnt = 0;
		for (TestExamVO examVO : testVO.getTestExamList()) {
			examVO.setTestCode(testCode);
			
		    examCnt += testMapper.insertTestExam(examVO);
		    steCode = examVO.getSteNo();
		    for (TestChoiceVO choiceVO : examVO.getTestChoiceList()) {
				 choiceVO.setTestCode(testCode);
				 choiceVO.setSteNo(steCode);
				choiceCnt += testMapper.insertTestChoice(choiceVO);
			}   
		}
				
		return  Integer.toString(examCnt + choiceCnt);
	}

	@Override
	public int insertTestChoice(TestChoiceVO testChoiceVO) {
		return testMapper.insertTestChoice(testChoiceVO);
	}

	

	

}
