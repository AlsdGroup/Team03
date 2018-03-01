package com.team03.service.sxhSercice;

import com.team03.domain.YjTaskParameter;
import com.team03.domain.YjTaskRequestParameter;
import com.team03.page.PageBean;

/**
 * AlsdGo 2018年03月01日 1:29
 */
public interface TotalService {

    PageBean<YjTaskParameter> selectTask(YjTaskRequestParameter yjTaskRequestParameter);

}
