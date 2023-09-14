package com.ddit.proj.vo;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AttenadenceVO {
	private Date atenDe;
	private String lecCode;
	private String memNo;
	private String codeAtenSe;
	private String atenYn;
	private String atenRsn;
	private String atenPruf;
		private String lecaNm;
		private int stuYr;
		private String colNm;
		private String depNm;
		private String memNm;
		private String memTel;
		
		// cnt
		private int atenCome;		//출석
		private int atenLate;		//지각
		private int atenEarlyLeave;	//조퇴
		private int atenAbsent;		//결석
		private int atenOfiAbsent;	//공결
		
}
