package com.team03.service.sxhSercice.impl;

import com.team03.domain.*;
import com.team03.mapper.DepDao;
import com.team03.mapper.TaskDao;
import com.team03.page.PageBean;
import com.team03.service.sxhSercice.TaskService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * AlsdGo 2018年02月05日 19:08
 */
@Service(value = "taskService")
public class TaskServiceImpl implements TaskService {

    @Resource
    private TaskDao taskDao;
    @Resource
    private DepDao depDao;

    @Override
    public BaseResult<StaffParameter> selectAllStaff(String staffName, int pageIndex, int pageSize) {
        BaseResult<StaffParameter> result = new BaseResult<>();
        StaffSqlParameter staffSqlParameter = new StaffSqlParameter();

        String staffName88 = staffName;
        if (staffName == null || staffName.equals("")) {
            staffName88 = null;
        }
        int total = taskDao.selectTotal(staffName88);

        if (total == 0) {
            return null;
        }

        PageBean<StaffParameter> pageBean = new PageBean<>(pageIndex, pageSize, total);

        staffSqlParameter.setStaffName(staffName88);
        staffSqlParameter.setPageIndex(pageBean.getStartIndex());
        staffSqlParameter.setPageSize(pageBean.getPageSize());

        List<StaffParameter> datas = taskDao.selectAll(staffSqlParameter);
        result.setTotal(total);
        result.setData(datas);
        return result;
    }

    @Override
    public BaseResult<DepParameter> selectAllDep(String depName, int pageIndex, int pageSize) {
        BaseResult<DepParameter> result = new BaseResult<>();
        DepSqlParameter depSqlParameter = new DepSqlParameter();

        String depName88 = depName;
        if (depName == null || depName.equals("")) {
            depName88 = null;
        }
        int total = depDao.selectTotal(depName88);

        if (total == 0) {
            return null;
        }

        PageBean<DepParameter> pageBean = new PageBean<>(pageIndex, pageSize, total);

        depSqlParameter.setDepName(depName88);
        depSqlParameter.setPageIndex(pageBean.getStartIndex());
        depSqlParameter.setPageSize(pageBean.getPageSize());

        List<DepParameter> datas = depDao.selectAll(depSqlParameter);

        result.setTotal(total);
        result.setData(datas);
        return result;
    }

    @Override
    public PageBean<YjTaskParameter> selectTask(YjTaskRequestParameter yjTaskRequestParameter) {

        // miniui框架 首页返回0 要加1
        int pageIndex = yjTaskRequestParameter.getPageIndex() + 1;
        int pageSize = yjTaskRequestParameter.getPageSize();

        // 仅用到后四个参数进行总数量查询
        int total = taskDao.selectTotal2(yjTaskRequestParameter);

        // 获取分页页码数据
        PageBean<YjTaskParameter> pageBean = new PageBean<>(pageIndex, pageSize, total);

        // 暂存一下 用于分页查询参数
        yjTaskRequestParameter.setPageIndex(pageBean.getStartIndex());

        // 获取结果集数组
        List<YjTaskParameter> beanList = taskDao.selectAll2(yjTaskRequestParameter);

        // 结果集打包
        pageBean.setBeanList(beanList);

        return pageBean;
    }
}
