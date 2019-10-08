package com.mytest.controller;

import com.mytest.dao.AdminDao;
import com.mytest.entity.Admin;
import com.mytest.entity.Role;
import com.mytest.service.AdminService;
import com.mytest.service.RoleService;
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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService = null;

    @Autowired
    RoleService roleService = null;

    @RequestMapping("/login")
    public String login(Admin admin, HttpServletRequest request) {
        request.getSession ().setAttribute ("PATH_WAY", request.getContextPath ());
        Admin admin1 = adminService.selectAdmin (admin);
        if (admin1.getAcname () == null) {
            return "error";
        }
        request.getSession ().setAttribute ("admin", admin1);
        return "index";
    }

    @RequestMapping("/changePaw")
    public void password(HttpServletRequest request, PrintWriter out) {
        String oldpsw = request.getParameter ("old_password");
        String newpsw = request.getParameter ("new_password");
        String newpsw1 = request.getParameter ("new_password1");
        Admin admin = (Admin) request.getSession ().getAttribute ("admin");

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
        } finally {
            if (out != null) out.close ();
        }
    }

    @RequestMapping("/userMessage")
    public void userMessage(Admin admin, HttpSession session, PrintWriter pw) {
        Admin admin1 = (Admin) session.getAttribute ("admin");
        admin.setAid (admin1.getAid ());
        boolean success = adminService.updateMessage (admin);
        try {
            if (success) {
                pw.print ("修改成功");
            } else {
                pw.print ("修改失败");
            }
        } finally {
            if (pw != null) pw.close ();
        }
    }

    @RequestMapping("/toadd")
    public String toAddView(Model model) {
        List<Role> roles = roleService.selectAllRole ();
        model.addAttribute ("role", roles);
        return "admin/admin_add";
    }

    @RequestMapping("/addAdmin")
    public void addAdmin(HttpServletRequest request, Admin admin1, @RequestParam("apassword1") String apassword1, PrintWriter pw) {
        //获取操作者信息
        Admin admin = (Admin) request.getSession ().getAttribute ("admin");
        //获取角色信息
        String[] rid = request.getParameterValues ("roleall");
        //判断处理
        try {
            if (admin1.getAname () == "" || admin1.getAcname () == "" || admin1.getApassword () == "") {
                pw.print ("名字，用户名，密码不能为空");
                return;
            } else if (rid == null) {
                pw.print ("角色不能为空");
                return;
            } else if (rid.length == 0) {
                pw.print ("角色不能为空");
                return;
            } else if (!admin1.getApassword () .equals ( apassword1)) {
                pw.print ("两次密码输入不一致");
                return;
            }

            List<Role> list = new ArrayList<> ();
            for (String s : rid) {
                Role role = new Role ();
                role.setRid (Integer.parseInt (s));
                list.add (role);
            }
            //插入处理
            admin1.setCreatename (admin.getAname ());
            admin1.setCreatetime (new Timestamp (new Date ().getTime ()));
            admin1.setUserrole (list);
            int i = adminService.insertAdmin (admin1);
            if(i<2){
                pw.print ("插入未成功");
                return;
            }else{
                pw.print ("插入成功");
            }
        } finally {
            if (pw != null) pw.close ();
        }
    }

    @RequestMapping("/deleteAdmin")
    public String deleteAdmin(Admin admin){
        int i=adminService.deleteAdmin (admin);
        return "redirect:/toadmin";
    }

    @RequestMapping("/toUpdate")
    public String toUpdate(Admin admin, Model model){
        Admin admin1=adminService.selectAdminAndRoleById (admin);
        List<Role> list=roleService.selectAllRole ();
        model.addAttribute ("updateadmin",admin1);
        model.addAttribute ("rolelist",list);
        return "admin/admin_modi";
    }

    @RequestMapping("/updateAdmin")
    public String updateAdmin(Admin admin,HttpServletRequest request){
        System.out.println (123465);
        List<Role> list=new ArrayList<> ();
        //获取角色信息
        String[] role=request.getParameterValues ("check");
        for (String s : role) {
            Role role1=new Role ();
            role1.setRid (Integer.parseInt (s));
            list.add (role1);
        }
        admin.setUserrole (list);
        int i=adminService.updateAdmin (admin);
        return "redirect:/toadmin";
    }

}
