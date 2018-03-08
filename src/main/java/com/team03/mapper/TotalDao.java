package com.team03.mapper;

import com.team03.domain.PmsMac;
import com.team03.domain.PmsMacRequestParameter;
import com.team03.domain.YjTaskParameter;
import com.team03.domain.YjTaskRequestParameter;

import java.util.List;

/**
 * AlsdGo 2018年03月01日 1:30
 */
public interface TotalDao {

    List<YjTaskParameter> selectAll3(YjTaskRequestParameter yjTaskRequestParameter);

    Integer selectTotal3(YjTaskRequestParameter yjTaskRequestParameter);

    Integer selectTotal4(PmsMacRequestParameter pmsMacRequestParameter);

    List<PmsMac> selectAll4(PmsMacRequestParameter pmsMacRequestParameter);

    void deleteMac(List<String> list);

    Integer selectTotal5(String macManageStaffName);

    List<PmsMac> selectAll5(PmsMacRequestParameter pmsMacRequestParameter);

    void addMac(PmsMacRequestParameter pmsMacRequestParameter);
}
