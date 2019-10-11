package com.mytest.service.impl;

import com.mytest.dao.AdminDao;
import com.mytest.dao.PrivDao;
import com.mytest.dao.RoleDao;
import com.mytest.entity.Admin;
import com.mytest.entity.Admin_Role;
import com.mytest.entity.Priv;
import com.mytest.entity.Role;
import com.mytest.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.ArrayList;
import java.util.List;

@Service
public class AdminServiceImlp implements AdminService {

    @Autowired
    AdminDao adminDao=null;
    @Autowired
    PrivDao privDao=null;
    @Autowired
    RoleDao roleDao=null;

    @Override
    public int updateAdmin(Admin admin) {
        //获取角色信息
        List<Admin_Role> list1=new ArrayList<> ();
        List<Role> list=admin.getUserrole ();
        for (Role role : list) {
            Admin_Role admin_role=new Admin_Role (admin.getAid (),role.getRid ());
            list1.add (admin_role);
        }

        //执行修改操作
        int i=adminDao.updateAdmin (admin);
        int k=roleDao.deleteAdminAndRole (admin);
        int j=roleDao.insertAdminAndRole (list1);

        return i+k+j;
    }

    @Override
    public Admin selectAdminAndRoleById(Admin admin) {
        Admin admin1=adminDao.selectAdmin (admin);
        return admin1;
    }

    @Override
    public List<Admin> selectAdminByRname(String rname) {
        return null;
    }

    @Override
    public int deleteAdmin(Admin admin) {
        int i=adminDao.deleteAdmin (admin);
        int k=roleDao.deleteAdminAndRole (admin);
        return i+k;
    }

    @Override
    public int insertAdmin(Admin admin) {
        int i=0,k=0;
        //插入用户
        i=adminDao.insertAdmin (admin);
        //查询用户id
        Admin admin1 = adminDao.selectAdminByAcname (admin) ;
        List<Role> list=admin.getUserrole ();
        //插入关联信息
        List<Admin_Role> admin_roles=new ArrayList<> ();
        for (Role role : list) {
            Admin_Role admin_role=new Admin_Role (admin1.getAid (),role.getRid ());
            admin_roles.add (admin_role);
        }
        //插入信息
        k=roleDao.insertAdminAndRole (admin_roles);
        return i+k;
    }

    @Override
    public List<Admin> selectAlluer() {
        List<Admin> list=adminDao.selectall ();
        for (Admin admin : list) {
            admin.changeRole ();
            admin.changeUpdateTime ();
            admin.changeCreateTime ();
        }
        return list;
    }

    @Override
    public Admin selectAdmin(Admin admin) {
        Admin admin1=adminDao.selectByIdAndPsw (admin);
        List<Priv> privs=privDao.selectPrivByAdmin (admin1);
        List<Role> roles=roleDao.selectRoleByAdmin (admin1);

        if(admin1!=null) {
            if (privs != null && privs.size () != 0) admin1.setUserpriv (privs);
            if (roles != null && roles.size () != 0) admin1.setUserrole (roles);
            admin1.changeRole ();
            admin1.changeCreateTime ();
            admin1.changeUpdateTime ();
        }
        return admin1;
    }

    @Override
    public boolean updatePassword(Admin admin) {
        int i=adminDao.updatePassword (admin);
        if(i!=0) return true;
        return false;
    }

    @Override
    public List<Role> selectRole(int aid) {
        return null;
    }

    @Override
    public boolean updateMessage(Admin admin) {
        int i=adminDao.updateInformation (admin);
        if(i!=0) return true;
        return false;
    }
}
