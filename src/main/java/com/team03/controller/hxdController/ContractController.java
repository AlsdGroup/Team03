package com.team03.controller.hxdController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hxd on 18/2/5.
 */
@Controller
public class ContractController {


    @RequestMapping(value = {"/declare"})
    public String declare() {

        return "module02/declare";
    }

    @RequestMapping(value = {"/pendingtask"})
    public String PendingTask() {

        return "module02/pendingtask";
    }

    @RequestMapping(value = {"/examination"})
    public String Examination() {

        return "module02/examination";
    }

    @RequestMapping(value = {"/task"})
    public String Task() {

        return "module02/task";
    }

}
