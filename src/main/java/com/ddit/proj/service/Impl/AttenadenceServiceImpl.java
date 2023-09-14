package com.ddit.proj.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.AttenadenceMapper;
import com.ddit.proj.service.AttenadenceService;
import com.ddit.proj.vo.AttenadenceVO;

@Service
public class AttenadenceServiceImpl implements AttenadenceService{


	// 서비스impl에서 맵퍼 연결
	@Autowired
	private AttenadenceMapper attenadenceMapper;
	
	@Override
	public List<AttenadenceVO> listAtten() {
		return attenadenceMapper.listAtten();
	}
	
	@Override
	public AttenadenceVO getAtten(AttenadenceVO attenadenceVO) {
		return attenadenceMapper.getAtten(attenadenceVO);
	}
	
	@Override
	public int insertAtten(AttenadenceVO attenadenceVO) {
		return attenadenceMapper.insertAtten(attenadenceVO);
	}
	
	@Override
	public int updateAtten(AttenadenceVO attenadenceVO) {
		return attenadenceMapper.updateAtten(attenadenceVO);
	}
	
	@Override
	public int deleteAtten(AttenadenceVO attenadenceVO) {
		return attenadenceMapper.deleteAtten(attenadenceVO);
	}

	@Override
	public List<AttenadenceVO> listLecByPro(String memNo) {
		return attenadenceMapper.listLecByPro(memNo);
	}

	@Override
	public List<AttenadenceVO> listStuByLec(String lecCode) {
		return attenadenceMapper.listStuByLec(lecCode);
	}

	@Override
	public AttenadenceVO attendanceCnt(Map<String, Object> map) {
		return this.attenadenceMapper.attendanceCnt(map);
	}


}