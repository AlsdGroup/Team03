package com.team03.service.sxhSercice.impl;

import com.team03.domain.YjTaskParameter;
import com.team03.domain.YjTaskRequestParameter;
import com.team03.mapper.TotalDao;
import com.team03.page.PageBean;
import com.team03.service.sxhSercice.TotalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * AlsdGo 2018年03月01日 1:29
 */
@Service(value = "totalService")
public class TotalServiceImpl implements TotalService{

    @Resource
    private TotalDao totalDao;

    @Override
    public PageBean<YjTaskParameter> selectTask(YjTaskRequestParameter yjTaskRequestParameter) {
        // miniui框架 首页返回0 要加1 没用框架就不加
        int pageIndex = yjTaskRequestParameter.getPageIndex();
        int pageSize = yjTaskRequestParameter.getPageSize();
        // 仅用到后六个参数进行总数量查询
        int total = totalDao.selectTotal3(yjTaskRequestParameter);
        // 获取分页页码数据
        PageBean<YjTaskParameter> pageBean = new PageBean<>(pageIndex, pageSize, total);
        // 没有数据返回空pagebean
        if(total==0){
            return pageBean;
        }
        // 暂存一下 用于分页查询参数
        yjTaskRequestParameter.setPageIndex(pageBean.getStartIndex());
        // 获取结果集数组
        List<YjTaskParameter> beanList = totalDao.selectAll3(yjTaskRequestParameter);
        // 结果集打包
        pageBean.setBeanList(beanList);
        return pageBean;
    }

}
