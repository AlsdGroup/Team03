package com.team03.controller;

import com.team03.domain.Test01;
import com.team03.service.Test01Service;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class Test01Controller {

    @Resource
    private Test01Service test01Service;
    private List<Test01> test01List;

    @RequestMapping(value = {"/index"})
    public String index() {
        return "index";
    }

    @RequestMapping(value = {"/firstPage"})
    public String firstPage() {
        return "firstPage";
    }

    @RequestMapping(value = {"", "/"})
    public String login() {
        return "login";
    }

    @RequestMapping(value = {"/test01"})
    public String test01() {

        test01List = test01Service.selectTest01List();

        return "test01";
    }

    public List<Test01> getTest01List() {
        return test01List;
    }

    public void setTest01List(List<Test01> test01List) {
        this.test01List = test01List;
    }
}
