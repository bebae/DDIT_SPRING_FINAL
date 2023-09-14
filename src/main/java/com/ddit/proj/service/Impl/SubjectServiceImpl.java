package com.ddit.proj.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.SubjectMapper;
import com.ddit.proj.service.SubjectService;
import com.ddit.proj.vo.SubjectVO;

@Service
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	private SubjectMapper subjectMapper;
	
	@Override
	public List<SubjectVO> listSubj() {
		return subjectMapper.listSubj();
	}

	@Override
	public SubjectVO getSubj(SubjectVO subjectVO) {
		return subjectMapper.getSub(subjectVO);
	}

	

}
