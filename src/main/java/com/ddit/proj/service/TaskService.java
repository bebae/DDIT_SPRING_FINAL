package com.ddit.proj.service;

import java.util.List;

import com.ddit.proj.vo.TaskVO;

public interface TaskService {

	// 강의 목록 가져오기
	public List<TaskVO> getLecCode(String memNo);
		
	//과제목록가져오기
	public List<TaskVO> getTaskList(int lecCode);	
}
