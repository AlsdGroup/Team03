package com.team03.controller;

import com.team03.domain.YjStaff;
import com.team03.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Resource
    private LoginService loginService;

    @RequestMapping(value = {"/login"})
    public String login(YjStaff yjStaff, HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        YjStaff yjStaffLogin = loginService.login(yjStaff);

        if(yjStaffLogin == null){
            session.setAttribute("loginMsg","用户名不存在");
            return "login";
        }else{
            if(yjStaffLogin.getStaffPwd().equals(yjStaff.getStaffPwd())){
                session.setAttribute("login",yjStaffLogin);
                session.setAttribute("loginMsg","登录成功");
                return "test01";
            }else{
                session.setAttribute("loginMsg","密码错误");
                return "login";
            }
        }
    }



}