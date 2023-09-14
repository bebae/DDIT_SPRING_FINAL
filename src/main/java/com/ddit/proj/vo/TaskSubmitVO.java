package com.ddit.proj.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TaskSubmitVO {
	
	private String tsubCode;
	private int taskCode;
	private String memNo;
	private Date tsubDt;
	private String tsubCon;
	private int codeTsubScore;
	private Date tsubUpdde;
}
