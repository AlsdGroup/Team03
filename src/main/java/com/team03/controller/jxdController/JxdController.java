package com.team03.controller.jxdController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by jbtms940317 on 18/2/5.
 */
@Controller
public class JxdController {

    @RequestMapping(value = {"/projectBasicInfor"})
    public String ProjectBasicInfor() {
        return "module01/projectBasicInfor";
    }

    @RequestMapping(value = {"/projectOtherInfor"})
    public String ProjectOtherInfor() {
        return "module01/projectOtherInfor";
    }

    @RequestMapping(value = {"/departmentManager"})
    public String DepartmentManager() {
        return "module01/departmentManager";
    }
    @RequestMapping(value = {"/engineer"})
    public String Engineer() {
        return "module01/engineer";
    }
}
