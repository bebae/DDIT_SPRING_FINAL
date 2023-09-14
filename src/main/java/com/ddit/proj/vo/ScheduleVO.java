package com.ddit.proj.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ScheduleVO {
    private String schCode;
    private String memNo;
    private String schTtl;
    private String schDt;
    private String schSt;
    private String schEt;
    private String codeSchSe;
    private String codeSchMem;
    private String schDelYn;
    private String uMemNo;
    private String uSchUpdde;
    private String memNm;

    public ScheduleVO(String memNo, String schTtl, String schSt, String schEt, String codeSchSe, String codeSchMem) {
        this.memNm = memNo;
        this.schTtl = schTtl;
        this.schSt = schSt;
        this.schEt = schEt;
        this.codeSchSe = codeSchSe;
        this.codeSchMem = codeSchMem;
    }
}
