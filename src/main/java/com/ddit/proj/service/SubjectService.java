package com.ddit.proj.service;

import java.util.List;

import com.ddit.proj.vo.DormitoryApplyFormVO;
import com.ddit.proj.vo.DormitoryApplyVO;
import com.ddit.proj.vo.SubjectVO;

public interface SubjectService {
	List<SubjectVO> listSubj();
	
	SubjectVO getSubj(SubjectVO subjectVO);

}
