package com.team03.service.sxhSercice.impl;

import com.team03.domain.Test01;
import com.team03.mapper.Test01Dao;
import com.team03.service.sxhSercice.Test01Service;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "test01Service")
public class Test01ServiceImpl implements Test01Service{

    @Resource
    private Test01Dao test01Dao;

    @Override
    public List<Test01> selectTest01List() {
        return test01Dao.selectTest01List();
    }
}
