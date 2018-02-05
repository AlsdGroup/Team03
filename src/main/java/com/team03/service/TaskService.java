package com.team03.service;

import com.team03.domain.BaseResult;
import com.team03.domain.DepParameter;
import com.team03.domain.StaffParameter;

/**
 * AlsdGo 2018年02月05日 19:08
 */
public interface TaskService {

    BaseResult<StaffParameter> selectAllStaff(String staffName, int pageIndex, int pageSize);

    BaseResult<DepParameter> selectAllDep(String depName, int pageIndex, int pageSize);
}
