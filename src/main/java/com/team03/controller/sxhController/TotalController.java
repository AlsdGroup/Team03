package com.team03.controller.sxhController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.team03.domain.*;
import com.team03.page.PageBean;
import com.team03.service.sxhSercice.LoginService;
import com.team03.service.sxhSercice.TotalService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * AlsdGo 2018年03月01日 1:26
 */
@Controller
public class TotalController {

    @Resource
    private TotalService totalService;

    @RequestMapping(value = {"/bimsStore"})
    public String bimsStore() {
        return "total/bimsStore";
    }

    @RequestMapping(value = {"/mac"})
    public String mac() {
        return "total/mac";
    }

    @RequestMapping(value = {"/rayUser"})
    public String rayUser() {
        return "total/rayUser";
    }

    @RequestMapping(value = {"/room"})
    public String room() {
        return "total/room";
    }

    @RequestMapping(value = {"/totalManagement"})
    public String totalManagement() {
        return "total/totalManagement";
    }

    @RequestMapping(value = {"/selectMacStaffWindow"})
    public String selectMacStaffWindow() {
        return "utils/selectMacStaffWindow";
    }
    @RequestMapping(value = {"/addMacStaffWindow"})
    public String addMacStaffWindow() {
        return "utils/addMacStaffWindow";
    }
    /**
     * 主要逻辑 综合查询任务
     */
    @RequestMapping(value = {"/selectTotalTask"}, method = RequestMethod.POST)
    @ResponseBody
    public PageBean<YjTaskParameter> selectTask(@RequestBody YjTaskRequestParameter yjTaskRequestParameter) {
        PageBean<YjTaskParameter> pageBean = totalService.selectTask(yjTaskRequestParameter);
        return pageBean;
    }
    /**
     * 弹出窗口 查询所有机组信息
     */
    @RequestMapping(value = {"/selectAllMac"})
    @ResponseBody
    public BaseResult<PmsMac> selectAllMac(String macManageStaffName, Integer pageIndex, Integer pageSize) {
        BaseResult<PmsMac> result = totalService.selectAllMac(macManageStaffName, pageIndex + 1, pageSize);
        return result;
    }
    /**
     * 主要逻辑 查询机组
     */
    @RequestMapping(value = {"/selectMac"}, method = RequestMethod.POST)
    @ResponseBody
    public PageBean<PmsMac> selectMac(@RequestBody PmsMacRequestParameter pmsMacRequestParameter) {
        PageBean<PmsMac> pageBean = totalService.selectMac(pmsMacRequestParameter);
        return pageBean;
    }

    /**
     * 根据id删除机组
     */
    @RequestMapping(value = {"/deleteMac"}, method = RequestMethod.POST)
    @ResponseBody
    public String deleteMac(@RequestBody PmsMacRequestParameter pmsMacRequestParameter) throws JsonProcessingException {
        totalService.deleteMac(pmsMacRequestParameter);
        ObjectMapper mapper = new ObjectMapper();
        String result = mapper.writeValueAsString("8888");
        return result;
    }

    /**
     * 根据数据添加机组
     */
    @RequestMapping(value = {"/addMac"}, method = RequestMethod.POST)
    @ResponseBody
    public String addMac(@RequestBody PmsMacRequestParameter pmsMacRequestParameter) throws JsonProcessingException {
        totalService.addMac(pmsMacRequestParameter);
        ObjectMapper mapper = new ObjectMapper();
        String result = mapper.writeValueAsString("8888");
        return result;
    }

}
