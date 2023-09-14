package com.ddit.proj.service;

import com.ddit.proj.vo.ScheduleVO;

import java.util.List;

public interface ScheduleService {

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
