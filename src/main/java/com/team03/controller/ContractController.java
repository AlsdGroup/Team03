package com.team03.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hxd on 18/2/5.
 */
@Controller
public class ContractController {



    @RequestMapping(value = {"/declare"})
    public String declare() {

        return "Module02/declare";
    }

    @RequestMapping(value = {"/PSM10"})
    public String PSM10() {

        return "Module02/PSM10";
    }
    @RequestMapping(value = {"/pendingtask"})
    public String PendingTask() {

        return "Module02/pendingtask";
    }
}
