package com.ddit.proj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddit.proj.vo.DormitoryApplyFormVO;
import com.ddit.proj.vo.DormitoryApplyVO;
import com.ddit.proj.vo.SubjectVO;

@Mapper
public interface SubjectMapper {
	
	// Get List
	public List<SubjectVO> listSubj();
	// Get One
	SubjectVO getSub(SubjectVO subjectVO);
	// insert
	
	// update
	
	// delete
	
	//
	
}
