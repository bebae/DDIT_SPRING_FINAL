package com.ddit.proj.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.LectureMapper;
import com.ddit.proj.service.LecNoticeService;
import com.ddit.proj.vo.LecNoticeVO;

@Service
public class LecNoticeServiceImpl implements LecNoticeService {

	@Autowired
	private LectureMapper lectureMapper;

	@Override
	public List<LecNoticeVO> listLecNotice() {
		return lectureMapper.listLecNotice();
	}
	
	
	@Override
	public List<LecNoticeVO> getLecNoticeVO(String lecCode) {
		return lectureMapper.getLecNoticeVO(lecCode);
	}

}
