package com.team03.mapper;

import com.team03.domain.StaffParameter;
import com.team03.domain.StaffSqlParameter;

import java.util.List;

/**
 * AlsdGo 2018年02月05日 19:08
 */
public interface TaskDao {

    List<StaffParameter> selectAll(StaffSqlParameter staffSqlParameter);

    Integer selectTotal(String staffName);

}
