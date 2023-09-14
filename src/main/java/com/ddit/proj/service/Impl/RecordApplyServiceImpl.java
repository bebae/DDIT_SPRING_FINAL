package com.ddit.proj.service.Impl;

import com.ddit.proj.mapper.RecordApplyMapper;
import com.ddit.proj.service.RecordApplyService;
import com.ddit.proj.vo.RecordApplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordApplyServiceImpl implements RecordApplyService{


    @Autowired
    private RecordApplyMapper mapper;

    @Override
    public RecordApplyVO getRecordApply(RecordApplyVO recordApplyVO) {
        return mapper.getRecordApply(recordApplyVO);
    }

    @Override
    public List<RecordApplyVO> getAllRecordApply() {
        return mapper.getAllRecordApply();
    }

    @Override
    public int insertRecordApply(RecordApplyVO recordApply) {
        return mapper.insertRecordApply(recordApply);
    }

    @Override
    public int updateRecordApply(RecordApplyVO recordApply) {
        return mapper.updateRecordApply(recordApply);
    }

    @Override
    public int deleteRecordApply(RecordApplyVO recordApply) {
        return mapper.deleteRecordApply(recordApply);
    }

    @Override
    public String recEdeMax() {
        return mapper.recEdeMax();
    }
}
