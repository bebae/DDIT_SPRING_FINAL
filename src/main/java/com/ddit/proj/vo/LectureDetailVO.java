package com.ddit.proj.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LectureDetailVO {
	private String lecCode;
	private String lecdWeek;
	private int lecdSt;
	private int lecdEt;
}
