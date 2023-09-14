package com.ddit.proj.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.DepartmentMapper;
import com.ddit.proj.service.DepartmentService;
import com.ddit.proj.vo.BuildingVO;
import com.ddit.proj.vo.DepartmentVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentMapper departmentMapper;

	// 학과장 조회
	@Override
	public List<DepartmentVO> selectProvostList(String proPosYN) {
		return departmentMapper.selectProvostList(proPosYN);
	}
	
	// 조교 조회
	@Override
	public List<DepartmentVO> selectTAList(String codeId) {
		return departmentMapper.selectTAList(codeId);
	}
	
	// 단과대 조회
	@Override
	public List<DepartmentVO> selectColList(String groupId) {
		return departmentMapper.selectColList(groupId);
	}
	
	// 학과 등록
	@Override
	public int insertDepartment(DepartmentVO departmentVO) {
		return departmentMapper.insertDepartment(departmentVO);
	}

	// selectVO
	@Override
	public DepartmentVO getDepartmentVO(String memNo) {
		return departmentMapper.getdepartmentVO(memNo);
	}

	
	// 학과 리스트 조회
	@Override
	public List<DepartmentVO> listDepartment() {
		return departmentMapper.listDepartment();
	}

}
