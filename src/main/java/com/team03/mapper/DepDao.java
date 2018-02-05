package com.team03.mapper;

import com.team03.domain.DepParameter;
import com.team03.domain.DepSqlParameter;

import java.util.List;

/**
 * AlsdGo 2018年02月05日 20:21
 */
public interface DepDao {

    List<DepParameter> selectAll(DepSqlParameter depSqlParameter);

    Integer selectTotal(String depName);

}
