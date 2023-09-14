package com.ddit.proj.vo;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
public class MemberVO {
	private int rnum;
	private String memNo; //사용자번호
	private String memPass; //비밀번호
	private String memDelYn; //삭제여부
	private String memNm; //한글명
	private String memNme; //영어명
	private String memTel; //전화번호
	private String memTel2; //비상연락처
	private int    memZip; //우편번호
	private String memAddr1; //기본주소
	private String memAddr2; //상세주소
	private String memPic; //증명사진_경로
	private String memDepo; //예금주
	private String memBankCode; //공통코드_은행코드
	private String memMl; //이메일
	private String memBir; //생년월일
	
	//1 : N
	private List<AuthVO> authVOList;
	//1 : 1
	private List<ProfessorVO> professorVO;
	
	private List<DepartmentVO> departmentVO;
	
}
