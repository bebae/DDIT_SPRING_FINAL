package com.ddit.proj.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ddit.proj.mapper.MemberMapper;
import com.ddit.proj.service.MemberService;
import com.ddit.proj.vo.AuthVO;
import com.ddit.proj.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;

//	@Override
//	public List<MemberVO> listMember() {
//		return memberMapper.listMember();
//	}
	
	@Override
	public List<MemberVO> listMember(Map<String, Object> map) {
		return memberMapper.listMember(map);
	}

	@Override
	public List<AuthVO> listAuth() {
		return memberMapper.listAuth();
	}

	@Override
	public MemberVO getMember(MemberVO memberVO) {
		return memberMapper.getMember(memberVO);
	}

	@Override
	public List<AuthVO> getAuth(AuthVO authVO) {
		return memberMapper.getAuth(authVO);
	}

	@Override
	public int insertMember(MemberVO memberVO) {
		//사용자 등록
		int result = memberMapper.insertMember(memberVO);
		
		return result;
	}

	@Override
	public int addAuth(AuthVO authVO) {
		
		return memberMapper.addAuth(authVO);
	}

	@Override
	public int updateMember(MemberVO memberVO) {
		
		return memberMapper.updateMember(memberVO);
	}

	@Override
	public int deleteMember(String memNo) {
		
		return memberMapper.deleteMember(memNo);
	}

	@Override
	public int deleteAuth(AuthVO authVO) {
		
		return memberMapper.deleteAuth(authVO);
	}

	@Override
	public MemberVO read(String memNo) {
		return memberMapper.read(memNo);
	}
/*
	@Override
	public int pwUpdateAll(String password) {
		return memberMapper.pwUpdateAll(password);
	}
*/



//	@Override
//	public List<MemberVO> listMemberPage(java.util.Map<String, Object> map) {
//		return memberMapper.listMemberPage(map);
//	}


	@Override
	public int getMemberTotal(Map<String, Object> map) {
		return memberMapper.getMemberTotal(map);
	}



}
