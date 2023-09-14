package com.ddit.proj.mapper;

import com.ddit.proj.vo.RecordApplyVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RecordApplyMapper {
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

    String recEdeMax();
}
