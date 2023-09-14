package com.ddit.proj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddit.proj.vo.BuildingVO;
import com.ddit.proj.vo.LecApplyVO;
import com.ddit.proj.vo.LecNoticeVO;
import com.ddit.proj.vo.LectureVO;
import com.ddit.proj.vo.MemberVO;

@Mapper
public interface LectureMapper {
	
	// 강의 계획서 목록 불러오기
	public List<LectureVO> listLecture(String memNo);
	
	//교수 정보 불러오기
	public List<MemberVO> getProf(String memNo);
	
	//강의자료(강의게시판)
	List<LecNoticeVO> listLecNotice();
	
	List<LecNoticeVO> getLecNoticeVO(String lecCode);
	
	//건물,강의실 불러오기
	List<BuildingVO> getBuildRoom();
	
	//강의실 호수 가져오기
	List<BuildingVO> getRoomNo(String bldCode);
	
	//셀렉별 리스트 불러오기
	public List<LecApplyVO> listSelLecture(LecApplyVO lecApplyVO);
	
	//로그인 한 교수의 연도/학기 정보 불러오기
	//<select id="getYrsem" parameterType="String" resultType="LecApplyVO">
	public List<LecApplyVO> getYrsem(String memNo);
	
	//강의계획서 평가 기준
	public List<LecApplyVO> leesCode();
}
