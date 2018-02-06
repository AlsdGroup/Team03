package com.team03.controller.sxhController;

import com.team03.domain.YjStaff;
import com.team03.service.sxhSercice.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Resource
    private LoginService loginService;

    @RequestMapping(value = {"/firstPage"})
    public String firstPage() {
        return "firstPage";
    }

    @RequestMapping(value = {"", "/"})
    public String login() {
        return "login/login";
    }

    @RequestMapping(value = {"/login"})
    public String login(YjStaff yjStaff, HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        YjStaff yjStaffLogin = loginService.login(yjStaff);

        if (yjStaffLogin == null) {
            session.setAttribute("loginMsg", "用户名不存在");
            return "login/login";
        } else {
            if (yjStaffLogin.getStaffPwd().equals(yjStaff.getStaffPwd())) {
                session.setAttribute("login", yjStaffLogin);
                session.setAttribute("loginMsg", "登录成功");
                return "main";
            } else {
                session.setAttribute("loginMsg", "密码错误");
                return "login/login";
            }
        }
    }

    @RequestMapping(value = {"/logout"})
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        session.removeAttribute("login");
        session.removeAttribute("loginMsg");
        return "login/login";
    }


}
