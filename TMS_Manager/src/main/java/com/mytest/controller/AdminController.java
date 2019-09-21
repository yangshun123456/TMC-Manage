package com.mytest.controller;

import com.mytest.entity.Admin;
import com.mytest.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    AdminService adminService=null;

    @RequestMapping("/login")
    public String login(Admin admin, HttpServletRequest request){
        request.getSession ().setAttribute ("PATH_WAY",request.getContextPath ());
        Admin admin1=adminService.selectAdmin (admin);
        if(admin1.getAcname ()==null){
            return "error";
        }
        request.getSession ().setAttribute ("admin",admin1);
        return "index";
    }

    @RequestMapping("/changePaw")
    public void password(HttpServletRequest request,PrintWriter out){
        String oldpsw=request.getParameter ("old_password");
        String newpsw=request.getParameter ("new_password");
        String newpsw1=request.getParameter ("new_password1");
        Admin admin=(Admin)request.getSession ().getAttribute ("admin");

        try {
            if ("".equals (oldpsw) || oldpsw == null) {
                out.print ("sadas");
            } else if (!newpsw.equals (newpsw1)) {
                out.print ("两次密码输入不相同");
            } else if (oldpsw.equals (admin.getApassword ())) {
                admin.setApassword (newpsw);
                boolean a = adminService.updatePassword (admin);
                if (a) {
                    out.print ("修改成功");
                } else {
                    out.print ("修改失败");
                }
            }
        }finally {
            out.close ();
        }
    }
    @RequestMapping("/userMessage")
    public void userMessage(Admin admin,HttpSession session,PrintWriter pw){
        Admin admin1= (Admin) session.getAttribute ("admin");
        admin.setAid (admin1.getAid ());
        boolean success=adminService.updateMessage (admin);
        try {
            if (success) {
                pw.print ("修改成功");
            }else {
                pw.print ("修改失败");
            }
        }finally {
            pw.close ();
        }
    }

}
