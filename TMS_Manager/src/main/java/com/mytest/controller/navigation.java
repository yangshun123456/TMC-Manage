package com.mytest.controller;

import com.mytest.entity.Admin;
import com.mytest.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class navigation {
    @Autowired
    AdminService adminService = null;

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/role")
    public String role() {
        return "role/role_list";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "admin/admin_list";
    }

    @RequestMapping("/information")
    public String user(HttpSession session, Model model) {
        Admin admin = (Admin) session.getAttribute ("admin");
        Admin admin1=adminService.selectAdmin (admin);
        model.addAttribute ("admin1",admin1);
        return "user/user_info";
    }

    @RequestMapping("/password")
    public String password() {
        return "user/user_modi_pwd";
    }

}
