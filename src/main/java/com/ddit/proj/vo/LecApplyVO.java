package com.ddit.proj.vo;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LecApplyVO {
	
	private String lecaId;
	private String memNo;
	private String subCode;
	private int lecaYr;
	private int lecaSem;
	private String lecaNm;
	private String lecaSeCode;
	private int lecaTrg;
	private int lecaCrd;
	private int lecaTime;
	private int lecaCap;
	private Date lecaDt;
	private String lecaStdCode;
	private String lecaYn;
	
	//강의계획서 평가 기준
	private String codeId;
	private String codeNm;
	
	//1 : N
	private List<LectureVO> lectureVOList;
	
}
