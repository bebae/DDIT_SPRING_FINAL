package com.ddit.proj.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LecNoticeVO {
	private String lecnCode;
	private int lecCode;
	private String lecnCataCode;
	private String lecnTtl;
	private String lecnCon;
	private String lecnDe;
	private String lecnUpdde;
	private String fileId;
	
	//과목
	private String subNm;
}
