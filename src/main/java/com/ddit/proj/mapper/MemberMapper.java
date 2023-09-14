package com.ddit.proj.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ddit.proj.vo.AuthVO;
import com.ddit.proj.vo.MemberVO;

@Mapper
public interface MemberMapper {
	// Get List
	//<select id="listMember" resultType="memberVO">
	public List<MemberVO> listMember(Map<String, Object> map);
	//<select id="listAuth" resultType="AuthVO">
	public List<AuthVO> listAuth();
	
	//Get One
	//<select id="getMember" parameterType="MemberVO" resultType="MemberVO">
	public MemberVO getMember(MemberVO memberVO);
	//<select id="getAuth" parameterType="AuthVO" resultType="AuthVO">
	public List<AuthVO> getAuth(AuthVO authVO);
	
	//insert
	//<insert id="insertMember" parameterType="MemberVO">
	public int insertMember(MemberVO memberVO);
	//새로운 권한 추가, 사용자에게 권한을 부여
	//<insert id="addAuth" parameterType="AuthVO">
	public int addAuth(AuthVO authVO);
	
	//update
	//<update id="updateMember" parameterType="MemberVO">
	public int updateMember(MemberVO memberVO);
	
	//delete
	//<delete id="deleteMember" parameterType="String">
	public int deleteMember(String memNo);
	//<delete id="deleteAuth" parameterType="AuthVO">
	public int deleteAuth(AuthVO authVO);
	
	//Get member with auth
	//<select id="read" resultMap="memberMap" parameterType="String">
	public MemberVO read(String memNo);
	
	//패스워드 인코더
	public int pwUpdateAll(String password);
	//MemberVO memberVO = this.memberMapper.detail(username);
	public MemberVO detail(String username);
	
	//페이징
	//public List<MemberVO> listMemberPage(Map<String, Object> map);
	
	public int getMemberTotal(Map<String, Object> map);
}
