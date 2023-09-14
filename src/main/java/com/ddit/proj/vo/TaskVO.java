package com.ddit.proj.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class TaskVO {
	
	private String taskCode;
	private int lecCode;
	private String taskNm;
	private String taskCon;
	private String taskDe;
	private String taskDead;
	private int taskScore;
	private String taskDelYn;
	private String taskUpdde;
	private String taskDeadYn;
	private String fileId;
	
	//강의명,강의코드
	private String lecaNm;
}
