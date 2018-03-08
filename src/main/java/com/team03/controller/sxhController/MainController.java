package com.team03.controller.sxhController;

import com.team03.domain.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping(value = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping("/unauthor")
    public String unauthor() {
        return "unauthor";
    }

    @RequestMapping("/submitLogin")
    public String submitLogin(User user){

        System.out.println("表单提交的参数"+ user);

        /*1.获得当前的Subject用户对象*/
        Subject currentUser = SecurityUtils.getSubject();
        /*2.创建用户名/密码的token令牌*/
        UsernamePasswordToken token = new UsernamePasswordToken(user.getUserName(),user.getPassword());
        /*3.执行shiro认证*/
        try{
            currentUser.login(token);
        }catch(AuthenticationException e){
            e.printStackTrace();
            System.out.println("认证失败");
            return "login/login";
        }
        return "home";
    }

}
