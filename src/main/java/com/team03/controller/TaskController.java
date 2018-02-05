package com.team03.controller;

import com.team03.domain.BaseResult;
import com.team03.domain.DepParameter;
import com.team03.domain.StaffParameter;
import com.team03.domain.YjStaff;
import com.team03.service.TaskService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * AlsdGo 2018年02月05日 17:32
 */
@Controller
public class TaskController {

    @Resource
    private TaskService taskService;

    @RequestMapping(value = {"/taskInWait"})
    public String taskInWait() {
        return "taskInWait";
    }

    @RequestMapping(value = {"/taskFinished"})
    public String taskFinished() {
        return "taskFinished";
    }

    @RequestMapping(value = {"/selectStaffWindow"})
    public String selectStaffWindow() {
        return "selectStaffWindow";
    }

    @RequestMapping(value = {"/selectDepWindow"})
    public String selectDepWindow() {
        return "selectDepWindow";
    }

    /**
     * 弹出窗口 查询所有员工
     */
    @RequestMapping(value = {"/selectAllStaff"})
    @ResponseBody
    public BaseResult<StaffParameter> selectAllStaff(String staffName, int pageIndex, int pageSize) {
        BaseResult<StaffParameter> result = taskService.selectAllStaff(staffName, pageIndex + 1, pageSize);
        return result;
    }

    /**
     * 弹出窗口 查询所有部门
     */
    @RequestMapping(value = {"/selectAllDep"})
    @ResponseBody
    public BaseResult<DepParameter> selectAllDep(String depName, int pageIndex, int pageSize) {
        BaseResult<DepParameter> result = taskService.selectAllDep(depName, pageIndex + 1, pageSize);
        return result;
    }
}
