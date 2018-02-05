package com.team03.controller.jxd_controller;

import com.team03.domain.Test01;
import com.team03.service.Test01Service;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by jbtms940317 on 18/2/5.
 */
@Controller
public class jxd_controller {

    @RequestMapping(value = {"/ProjectBasicInfor"})
    public String ProjectBasicInfor() {
        return "Module01_JXD/ProjectBasicInfor";
    }

    @RequestMapping(value = {"/ProjectOtherInfor"})
    public String ProjectOtherInfor() {
        return "Module01_JXD/ProjectOtherInfor";
    }
    @RequestMapping(value = {"/PSM10"})
    public String PSM10() {
        return "Module01_JXD/PSM10";
    }
    @RequestMapping(value = {"/DepartmentManager"})
    public String DepartmentManager() {
        return "Module01_JXD/DepartmentManager";
    }
    @RequestMapping(value = {"/Engineer"})
    public String Engineer() {
        return "Module01_JXD/Engineer";
    }
}
