package com.ddit.proj.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LectureVO {
	
	private String lecCode;
	private int subCode;
	private String lecaId;
	private String lecStatYn;
	private int lecHcnt;
	private String lecYn;
	private String lecDelYn;
	private int roomNo;
	private String bldCode;
	private int lecClsNm;
	
	//1 : N
	private List<LectureDetailVO> lectureDetailVO;
}
