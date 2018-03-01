package com.team03.controller.sxhController;

import com.team03.domain.*;
import com.team03.page.PageBean;
import com.team03.service.sxhSercice.TaskService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * AlsdGo 2018年02月05日 17:32
 */
@Controller
public class TaskController {

    @Resource
    private TaskService taskService;

    @RequestMapping(value = {"/taskInWait"})
    public String taskInWait() {
        return "task/taskInWait";
    }

    @RequestMapping(value = {"/taskFinished"})
    public String taskFinished() {
        return "task/taskFinished";
    }

    @RequestMapping(value = {"/selectStaffWindow"})
    public String selectStaffWindow() {
        return "utils/selectStaffWindow";
    }

    @RequestMapping(value = {"/selectDepWindow"})
    public String selectDepWindow() {
        return "utils/selectDepWindow";
    }

    @RequestMapping(value = {"/printPreview"})
    public String printPreview() {
        return "utils/printPreview";
    }

    /**
     * 弹出窗口 查询所有员工
     */
    @RequestMapping(value = {"/selectAllStaff"})
    @ResponseBody
    public BaseResult<StaffParameter> selectAllStaff(String staffName, Integer pageIndex, Integer pageSize) {
        BaseResult<StaffParameter> result = taskService.selectAllStaff(staffName, pageIndex + 1, pageSize);
        return result;
    }

    /**
     * 弹出窗口 查询所有部门
     */
    @RequestMapping(value = {"/selectAllDep"})
    @ResponseBody
    public BaseResult<DepParameter> selectAllDep(String depName, Integer pageIndex, Integer pageSize) {
        BaseResult<DepParameter> result = taskService.selectAllDep(depName, pageIndex + 1, pageSize);
        return result;
    }

    /**
     * 主要逻辑 查询任务
     */
    @RequestMapping(value = {"/selectTask"}, method = RequestMethod.POST)
    @ResponseBody
    public PageBean<YjTaskParameter> selectTask(@RequestBody YjTaskRequestParameter yjTaskRequestParameter) {
        PageBean<YjTaskParameter> pageBean = taskService.selectTask(yjTaskRequestParameter);
        return pageBean;
    }

}
