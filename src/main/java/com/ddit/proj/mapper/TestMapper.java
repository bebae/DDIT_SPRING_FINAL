package com.ddit.proj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddit.proj.vo.DormitoryApplyFormVO;
import com.ddit.proj.vo.DormitoryApplyVO;
import com.ddit.proj.vo.TestChoiceVO;
import com.ddit.proj.vo.TestExamVO;
import com.ddit.proj.vo.TestVO;

@Mapper
public interface TestMapper {
	
	// Get List
	List<TestVO> listTest();
	
	// Get One
	TestVO getTest(int testCode);
	
	// 시험등록 select
	List<TestVO> getTestVO(int testCode);
	
	
	// insert
	int  insertTest(TestVO testVO);
	// update
	int  updateTest(TestVO testVO);
	// delete
	int  deleteTest(TestVO testVO);
	
	//
	int insertTestExam(TestExamVO examVO);
	//
	int insertTestChoice(TestChoiceVO testChoiceVO);
}
