package com.bdqnsh.student.controller;

import com.bdqnsh.student.constans.ILogin;
import com.bdqnsh.student.dao.AdminMapper;
import com.bdqnsh.student.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/4/27.
 */
@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    private AdminMapper adminMapper;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping("toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("login")
    @ResponseBody
    public Integer login(String userName, String password) {
        Integer result = -1;
        Admin admin = adminMapper.selectByUserName(userName);
        if (admin == null) {
            result = ILogin.ADMIN_NOT_FOUND;
        } else if (!admin.getPassword().equals(password)) {
            result = ILogin.ADMIN_PASSWORD_MISTAKE;
        } else {
            result = ILogin.ADMIN_LOGIN_SUCCESS;
            HttpSession session = request.getSession();
            session.setAttribute("admin", admin);


        }

        return result;
    }

    @RequestMapping(value = "index")
    public String index() {
        System.out.println("..");
        return "index";
    }
    @RequestMapping(value = "signOut")
    public String signOut(){
        HttpSession session = request.getSession();
        session.removeAttribute("admin");
        return "login";
    }


}
