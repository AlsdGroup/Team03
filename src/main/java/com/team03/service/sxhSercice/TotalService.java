package com.team03.service.sxhSercice;

import com.team03.domain.*;
import com.team03.page.PageBean;

/**
 * AlsdGo 2018年03月01日 1:29
 */
public interface TotalService {

    PageBean<YjTaskParameter> selectTask(YjTaskRequestParameter yjTaskRequestParameter);

    PageBean<PmsMac> selectMac(PmsMacRequestParameter pmsMacRequestParameter);

    void deleteMac(PmsMacRequestParameter pmsMacRequestParameter);

    BaseResult<PmsMac> selectAllMac(String macManageStaffName, Integer pageIndex, Integer pageSize);

    void addMac(PmsMacRequestParameter pmsMacRequestParameter);
}
