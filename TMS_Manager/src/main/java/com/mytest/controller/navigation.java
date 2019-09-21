package com.mytest.controller;

import com.mytest.entity.Admin;
import com.mytest.entity.Role;
import com.mytest.service.AdminService;
import com.mytest.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 导航栏的控制类
 */
@Controller
public class navigation {
    @Autowired
    AdminService adminService = null;
    @Autowired
    RoleService roleService;

    @RequestMapping("/start")
    public String start(){
        return "/login1";
    }

    @RequestMapping("/toindex")
    public String index() {
        return "index";
    }

    @RequestMapping("/torole")
    public String role(Model model) {
        List<Role> roles=roleService.selectAllRole ();
        for (Role role : roles) {
            role.change ();
        }
        model.addAttribute ("rolelist",roles);
        return "role/role_list";
    }

    @RequestMapping("/toadmin")
    public String admin(Model model) {
        List<Admin> admins = adminService.selectAlluer ();
        model.addAttribute ("adminlist",admins);
        System.out.println (admins);
        return "admin/admin_list";
    }

    @RequestMapping("/toinformation")
    public String user(HttpSession session, Model model) {
        Admin admin = (Admin) session.getAttribute ("admin");
        Admin admin1=adminService.selectAdmin (admin);
        model.addAttribute ("admin1",admin1);
        return "user/user_info";
    }

    @RequestMapping("/topassword")
    public String password() {
        return "user/user_modi_pwd";
    }

    @RequestMapping("/quit")
    public String quit(HttpSession session){
        session.invalidate ();
        return "login1";
    }

}
