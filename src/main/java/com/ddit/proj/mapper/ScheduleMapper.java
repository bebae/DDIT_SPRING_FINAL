package com.ddit.proj.mapper;

import java.util.List;

import com.ddit.proj.vo.ScheduleVO;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface ScheduleMapper {
	
	// Get List
	List<ScheduleVO> getAllSchedule();
	// Get One
	ScheduleVO getOneSchedule(String schCode);
	// insert
	int  insertSchedule(ScheduleVO scheduleVO);
	// update
	int  updateSchedule(ScheduleVO scheduleVO);
	// delete
	int  deleteSchedule(ScheduleVO scheduleVO);

}
