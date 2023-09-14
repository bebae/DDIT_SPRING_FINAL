package com.ddit.proj.service;

import java.util.List;
import java.util.Map;

import com.ddit.proj.vo.AttenadenceVO;


public interface AttenadenceService {
	
		
	// Get List
	public List<AttenadenceVO> listAtten();
	// Get One
	public AttenadenceVO getAtten(AttenadenceVO attenadenceVO);
	// insert
	public int  insertAtten(AttenadenceVO attenadenceVO);
	// update
	public int  updateAtten(AttenadenceVO attenadenceVO);
	// delete
	public int  deleteAtten(AttenadenceVO attenadenceVO);

	// 해당 교수 강의 목록
	public List<AttenadenceVO> listLecByPro(String memNo);
	
	// 해당 교수 강의 목록 > 수강생 목록
	public List<AttenadenceVO> listStuByLec(String lecCode);
	
	// 해당 교수 강의 목록 > 수강생 목록 > cnt 조회
	public AttenadenceVO attendanceCnt(Map<String, Object> map);
}