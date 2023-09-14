package com.ddit.proj.service;

import java.util.List;

import com.ddit.proj.vo.BuildingVO;
import com.ddit.proj.vo.LecApplyVO;
import com.ddit.proj.vo.LectureVO;
import com.ddit.proj.vo.MemberVO;
import com.ddit.proj.vo.ProfessorVO;

public interface LecListService {
	
	// 강의 계획서 목록 불러오기
	public List<LectureVO> listLecture(String memNo);
	
	//교수 정보 불러오기
	public List<MemberVO> getProf(String memNo);
	
	public List<BuildingVO> getBuildRoom();
	
	//강의실 호수 가져오기
	public List<BuildingVO> getRoomNo(String bldCode);
	
	public List<LecApplyVO> listSelLecture(LecApplyVO lecApplyVO);

	//로그인 한 교수의 연도/학기 정보 불러오기
	public List<LecApplyVO> getYrsem(String memNo);
	
	//강의계획서 평가 기준
	public List<LecApplyVO> leesCode();
}
