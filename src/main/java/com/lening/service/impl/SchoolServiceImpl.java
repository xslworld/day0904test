package com.lening.service.impl;

import com.lening.mapper.SchoolMapper;
import com.lening.entity.School;
import com.lening.service.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoolServiceImpl implements SchoolService {
    @Autowired
    private SchoolMapper schoolMapper;

    @Override
    public List<School> getS() {
        List<School> list = schoolMapper.getS();
        return list;
    }
}
