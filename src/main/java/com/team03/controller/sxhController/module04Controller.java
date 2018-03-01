package com.team03.controller.sxhController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * AlsdGo 2018年03月01日 1:51
 */
@Controller
public class module04Controller {

    @RequestMapping(value = {"/approval"})
    public String approval() {
        return "module04/approval";
    }

    @RequestMapping(value = {"/rdmsProjBase"})
    public String rdmsProjBase() {
        return "module04/rdmsProjBase";
    }

    @RequestMapping(value = {"/taskInWait04"})
    public String taskInWait() {
        return "module04/taskInWait";
    }

    @RequestMapping(value = {"/taskFinished04"})
    public String taskFinished() {
        return "module04/taskFinished";
    }

}
