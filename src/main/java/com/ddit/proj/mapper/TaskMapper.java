package com.ddit.proj.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddit.proj.vo.TaskVO;

@Mapper
public interface TaskMapper {

	// 강의 목록 가져오기
	public List<TaskVO> getLecCode(String memNo);
		
	//과제목록가져오기
	public List<TaskVO> getTaskList(int lecCode);
}
