package com.ddit.proj.service;

import com.ddit.proj.vo.RecordApplyVO;

import java.util.List;

public interface RecordApplyService {
    // RecordApply CRUD

    // one select
    RecordApplyVO getRecordApply(RecordApplyVO recordApplyVO);

    // all select
    List<RecordApplyVO> getAllRecordApply();

    // insert
    int insertRecordApply(RecordApplyVO recordApply);

    // update
    int updateRecordApply(RecordApplyVO recordApply);

    // delete
    int deleteRecordApply(RecordApplyVO recordApply);

    // 신청 시 승인된 마지막 날짜 SELECT
    String recEdeMax();

}
