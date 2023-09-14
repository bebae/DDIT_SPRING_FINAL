package com.ddit.proj.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.LectureMapper;
import com.ddit.proj.service.LecListService;
import com.ddit.proj.vo.BuildingVO;
import com.ddit.proj.vo.LecApplyVO;
import com.ddit.proj.vo.LectureVO;
import com.ddit.proj.vo.MemberVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class LecListServiceImpl implements LecListService {

	@Autowired
	private LectureMapper lectureMapper;
	
	@Override
	public List<LectureVO> listLecture(String memNo) {
		return lectureMapper.listLecture(memNo);
	}

	@Override
	public List<MemberVO> getProf(String memNo) {
		return lectureMapper.getProf(memNo);
	}
	
	@Override
	public List<BuildingVO> getBuildRoom(){
		return lectureMapper.getBuildRoom();
	}
	
	//강의실호수 가져오기
	@Override
	public List<BuildingVO> getRoomNo(String bldCode) {
		return lectureMapper.getRoomNo(bldCode);
	}
	
	@Override
	public List<LecApplyVO> listSelLecture(LecApplyVO lecApplyVO){
		return lectureMapper.listSelLecture(lecApplyVO);
	}
	
	//로그인 한 교수의 연도/학기 정보 불러오기
	@Override
	public List<LecApplyVO> getYrsem(String memNo){
		return this.lectureMapper.getYrsem(memNo);
	}
	
	//강의계획서 평가 기준
	@Override
	public List<LecApplyVO> leesCode() {
		return this.lectureMapper.leesCode();
	}

	
}
