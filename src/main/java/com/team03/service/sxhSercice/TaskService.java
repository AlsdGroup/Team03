package com.team03.service.sxhSercice;

import com.team03.domain.*;
import com.team03.page.PageBean;

/**
 * AlsdGo 2018年02月05日 19:08
 */
public interface TaskService {

    BaseResult<StaffParameter> selectAllStaff(String staffName, int pageIndex, int pageSize);

    BaseResult<DepParameter> selectAllDep(String depName, int pageIndex, int pageSize);

    PageBean<YjTaskParameter> selectTask(YjTaskRequestParameter yjTaskRequestParameter);
}
