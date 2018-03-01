package com.team03.mapper;

import com.team03.domain.YjTaskParameter;
import com.team03.domain.YjTaskRequestParameter;

import java.util.List;

/**
 * AlsdGo 2018年03月01日 1:30
 */
public interface TotalDao {

    List<YjTaskParameter> selectAll3(YjTaskRequestParameter yjTaskRequestParameter);

    Integer selectTotal3(YjTaskRequestParameter yjTaskRequestParameter);

}
