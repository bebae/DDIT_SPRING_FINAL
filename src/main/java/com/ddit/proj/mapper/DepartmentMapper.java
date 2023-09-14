package com.ddit.proj.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ddit.proj.vo.BuildingVO;
import com.ddit.proj.vo.DepartmentVO;

@Mapper
public interface DepartmentMapper {
	
	// insert
	int insertDepartment(DepartmentVO departmentVO);
	
	// selectVO
	DepartmentVO getdepartmentVO(String memNo);
	
	// 학과장 조회
	List<DepartmentVO> selectProvostList(String proPosYN);
	
	// 조교 조회
	List<DepartmentVO> selectTAList(String codeId);
	
	// 단과대 조회
	List<DepartmentVO> selectColList(String groupId);
	
	// 학과 리스트 조회
	List<DepartmentVO> listDepartment();
}
