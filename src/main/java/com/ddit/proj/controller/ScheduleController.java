package com.ddit.proj.controller;

import com.ddit.proj.service.ScheduleService;
import com.ddit.proj.vo.ScheduleVO;
import lombok.extern.slf4j.Slf4j;
import oracle.ucp.proxy.annotation.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/admin")
public class ScheduleController {

    @Autowired
    private ScheduleService service;

// 학사 일정 Insert
    @ResponseBody
    @PostMapping("/schedule")
    public int insertSchedule(@RequestParam Map<String, Object> map) {
        // 받아온 데이터 확인
        String memNo = (String) map.get("memNo");
        String schTtl = (String) map.get("schTtl");
        String schSt = (String) map.get("schSt");
        String schEt = (String) map.get("schEt");
        String codeSchSe = (String) map.get("codeSchSe");
        String codeSchMem = (String) map.get("codeSchMem");

        log.info("로그 : "+memNo+", "+schTtl+", "+schSt+", "+schEt+", "+codeSchSe+", "+codeSchMem);

        // 추가 데이터 처리



        ScheduleVO VO = new ScheduleVO(memNo, schTtl, schSt, schEt, codeSchSe, codeSchMem);
        int result = service.insertSchedule(VO);



        return 0;
    }

// 학사 일정 1개 가져오기
    @ResponseBody
    @GetMapping("/schedule/{schCode}")
    public ScheduleVO getOneSchedule(@PathVariable String schCode) {
        // 받아온 데이터 확인
//        log.info("로그 : 매개값 " + schCode);
        ScheduleVO result = service.getOneSchedule(schCode);
        // 받아온 데이터 확인
//        log.info("로그 : Mapper값 " + result);
        return result;
    }


// 학사 일정 리스트
    @ResponseBody
    @GetMapping("/scheduleList")
    public List<ScheduleVO> getScheduleList() {
//        log.info("로그 : 리스트 : " + service.getAllSchedule());
        return service.getAllSchedule();
    }

//   학사 일정 페이지 이동
    @GetMapping("/schedule")
    public String getSchedule() {
        return "department/SchedulePage";
    }

}
