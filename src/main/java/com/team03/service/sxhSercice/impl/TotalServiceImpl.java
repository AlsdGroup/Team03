package com.team03.service.sxhSercice.impl;

import com.team03.domain.*;
import com.team03.mapper.TotalDao;
import com.team03.page.PageBean;
import com.team03.service.sxhSercice.TotalService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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

    @Override
    public PageBean<PmsMac> selectMac(PmsMacRequestParameter pmsMacRequestParameter) {
        // miniui框架 首页返回0 要加1 没用框架就不加
        int pageIndex = pmsMacRequestParameter.getPageIndex();
        int pageSize = pmsMacRequestParameter.getPageSize();
        String macManageStaffNo88 = pmsMacRequestParameter.getMacManageStaffNo();
        System.out.println("8888"+macManageStaffNo88+"9999");
        System.out.println("8888"+macManageStaffNo88+"9999");
        System.out.println("8888"+macManageStaffNo88+"9999");
        System.out.println("8888"+macManageStaffNo88+"9999");
        System.out.println("8888"+macManageStaffNo88+"9999");
        System.out.println("8888"+macManageStaffNo88+"9999");
        if (macManageStaffNo88 == null || macManageStaffNo88.equals("")) {
            macManageStaffNo88 = null;
        }
        pmsMacRequestParameter.setMacManageStaffNo(macManageStaffNo88);
        //
        int total = totalDao.selectTotal4(pmsMacRequestParameter);
        // 获取分页页码数据
        PageBean<PmsMac> pageBean = new PageBean<>(pageIndex, pageSize, total);
        // 没有数据返回空pagebean
        if(total==0){
            return pageBean;
        }
        // 暂存一下 用于分页查询参数
        pmsMacRequestParameter.setPageIndex(pageBean.getStartIndex());
        // 获取结果集数组
        List<PmsMac> beanList = totalDao.selectAll4(pmsMacRequestParameter);
        // 结果集打包
        pageBean.setBeanList(beanList);
        return pageBean;
    }

    @Override
    public void deleteMac(PmsMacRequestParameter pmsMacRequestParameter) {
        String macId = pmsMacRequestParameter.getMacId();
        String macId2 = macId.substring(1,macId.length());
        List<String> list = Arrays.asList(macId2.split("@"));
        totalDao.deleteMac(list);
    }

    @Override
    public BaseResult<PmsMac> selectAllMac(String macManageStaffName, Integer pageIndex, Integer pageSize) {
        BaseResult<PmsMac> result = new BaseResult<>();
        PmsMacRequestParameter pmsMacRequestParameter = new PmsMacRequestParameter();
        String macManageStaffName88 = macManageStaffName;
        if (macManageStaffName == null || macManageStaffName.equals("")) {
            macManageStaffName88 = null;
        }
        int total = totalDao.selectTotal5(macManageStaffName88);
        if (total == 0) {
            return null;
        }
        PageBean<PmsMac> pageBean = new PageBean<>(pageIndex, pageSize, total);
        pmsMacRequestParameter.setMacManageStaffName(macManageStaffName88);
        pmsMacRequestParameter.setPageIndex(pageBean.getStartIndex());
        pmsMacRequestParameter.setPageSize(pageBean.getPageSize());

        List<PmsMac> datas = totalDao.selectAll5(pmsMacRequestParameter);
        result.setTotal(total);
        result.setData(datas);
        return result;
    }

    @Override
    public void addMac(PmsMacRequestParameter pmsMacRequestParameter) {
        String macId = UUID.randomUUID().toString().replace("-", "");
        pmsMacRequestParameter.setMacId(macId);
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        pmsMacRequestParameter.setCreateDate(sdf.format(d));
        totalDao.addMac(pmsMacRequestParameter);
    }

}
