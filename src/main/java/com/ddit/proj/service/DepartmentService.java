package com.ddit.proj.service;

import java.util.List;

import com.ddit.proj.vo.BuildingVO;
import com.ddit.proj.vo.DepartmentVO;

public interface DepartmentService {
	
	// 학과장 조회
	List<DepartmentVO> selectProvostList(String proPosYN);
	
	// 조교 조회
	List<DepartmentVO> selectTAList(String codeId);
	
	// 단과대 조회
	List<DepartmentVO> selectColList(String groupId);
	
	// 학과 등록
	int insertDepartment(DepartmentVO departmentVO);
	
	// selectVO
	DepartmentVO getDepartmentVO(String memNo);
	
	// 학과 리스트 조회
	List<DepartmentVO> listDepartment();
}
