package com.mytest.service.impl;

import com.mytest.dao.AdminDao;
import com.mytest.dao.PrivDao;
import com.mytest.dao.RoleDao;
import com.mytest.entity.Admin;
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
    public int updateAdmin(Admin admin, int rid) {
        return 0;
    }

    @Override
    public Admin selectAdminAndRoleById(int aid) {
        return null;
    }

    @Override
    public List<Admin> selectAdminByRname(String rname) {
        return null;
    }

    @Override
    public int deleteAdmin(int aid) {
        return 0;
    }

    @Override
    public int insertAdmin(Admin admin) {
        return 0;
    }

    @Override
    public List<Admin> selectAlluer() {
        return null;
    }

    @Override
    public Admin selectAdmin(Admin admin) {
        Admin admin1=adminDao.selectByIdAndPsw (admin);
        List<Priv> privs=privDao.selectPrivByAdmin (admin1);
        List<Role> roles=roleDao.selectRoleByAdmin (admin1);
        admin1.setUserpriv (privs);
        admin1.setUserrole (roles);
        admin1.changeRole ();
        admin1.changeCreateTime ();
        admin1.changeUpdateTime ();
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
