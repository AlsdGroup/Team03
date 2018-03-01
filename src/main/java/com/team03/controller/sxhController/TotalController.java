package com.team03.controller.sxhController;

import com.team03.domain.YjTaskParameter;
import com.team03.domain.YjTaskRequestParameter;
import com.team03.page.PageBean;
import com.team03.service.sxhSercice.LoginService;
import com.team03.service.sxhSercice.TotalService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

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

    /**
     * 主要逻辑 综合查询任务
     */
    @RequestMapping(value = {"/selectTotalTask"}, method = RequestMethod.POST)
    @ResponseBody
    public PageBean<YjTaskParameter> selectTask(@RequestBody YjTaskRequestParameter yjTaskRequestParameter) {
        PageBean<YjTaskParameter> pageBean = totalService.selectTask(yjTaskRequestParameter);
        return pageBean;
    }


}
