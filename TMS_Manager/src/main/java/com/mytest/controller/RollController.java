package com.mytest.controller;

import com.mytest.entity.Admin;
import com.mytest.entity.Priv;
import com.mytest.entity.Role;
import com.mytest.service.PrivService;
import com.mytest.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 角色管理的控制类
 */
@Controller
@RequestMapping("/role")
public class RollController {

    @Autowired
    RoleService roleServie=null;

    @Autowired
    PrivService privService=null;
    @RequestMapping("/add")
    public String toAdd(Role role, Model model){
        List<Priv> allpriv=privService.selectAllPriv ();
        model.addAttribute ("allpriv",allpriv);
        return "role/role_add";

    }

    @RequestMapping("/update")
    public String toUpdate(Role role, Model model){
        List<Priv> allpriv=privService.selectAllPriv ();
        model.addAttribute ("allpriv",allpriv);
        Role role1 = roleServie.selectRolePriv (role);
        model.addAttribute ("role1",role1);
        return "role/role_modi";
    }

    @RequestMapping("/insertRole")
    public void inserRole(HttpServletRequest request, Role role, PrintWriter pw){
        if("".equals (role.getRname ())){
            pw.print ("用户名不能为空");
            pw.close ();
            return;
        }
        String[] priv=request.getParameterValues ("choose");
        List<Priv> privs=new ArrayList<> ();
        for (String s : priv) {
            int pid=Integer.valueOf (s);
            Priv priv1=new Priv ();
            priv1.setPid (pid);
            privs.add (priv1);
        }
        Admin admin=(Admin)request.getSession ().getAttribute ("admin");
        role.setCreatename (admin.getAname ());
        role.setCreatetime (new Timestamp (new Date ().getTime ()));
        role.setRolepriv (privs);
        int i=roleServie.insertRole (role);
        if(i>=2){
            pw.print ("添加成功");
        }else if(i==0){
            pw.print ("用户名已经存在");
        }else {
            pw.print ("添加失败");
        }
        pw.close ();
    }

    @RequestMapping("/updateRole")
    public String updateRole(HttpServletRequest request, Role role, @RequestParam("pastrname") String pastrname){
        String[] priv=request.getParameterValues ("choose");
        List<Priv> privs=new ArrayList<> ();
        for (String s : priv) {
            int pid=Integer.valueOf (s);
            Priv priv1=new Priv ();
            priv1.setPid (pid);
            privs.add (priv1);
        }
        Admin admin=(Admin)request.getSession ().getAttribute ("admin");
        role.setUpdatename (admin.getAname ());
        role.setUpdatetime (new Timestamp (new Date ().getTime ()));
        role.setRolepriv (privs);
        int i=roleServie.updateRolePriv (role,pastrname);
        return "role/role_list";
    }

    @RequestMapping("/deleteRole")
    public String deleteRole(Role role){
        int i=roleServie.deleteRole (role);
        return "redirect:/torole";
    }

}
