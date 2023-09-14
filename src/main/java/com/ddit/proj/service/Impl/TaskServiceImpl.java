package com.ddit.proj.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.TaskMapper;
import com.ddit.proj.service.TaskService;
import com.ddit.proj.vo.TaskVO;

@Service
public class TaskServiceImpl implements TaskService {

	@Autowired
	private TaskMapper taskmapper;
	
	@Override
	public List<TaskVO> getLecCode(String memNo) {
		return taskmapper.getLecCode(memNo);
		
	}

	@Override
	public List<TaskVO> getTaskList(int lecCode) {
		return taskmapper.getTaskList(lecCode);
	}

}
