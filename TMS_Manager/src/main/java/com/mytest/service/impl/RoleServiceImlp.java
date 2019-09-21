package com.mytest.service.impl;


import com.mytest.dao.PrivDao;
import com.mytest.dao.RoleDao;
import com.mytest.entity.Priv;
import com.mytest.entity.Role;
import com.mytest.entity.Role_Priv;
import com.mytest.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class RoleServiceImlp implements RoleService {

    @Autowired
    RoleDao roleDao=null;
    @Autowired
    PrivDao privDao=null;

    @Override
    public List<Role> selectAllRole() {
        List<Role> roles=roleDao.selectAllRole ();
        return roles;
    }

    @Override
    public Role selectRoleBySname(String rname) {
        Role role=new Role ();
        role.setRname (rname);
        Role role1=roleDao.selectRoleAndPrivByRname (role);
        return role1;
    }

    @Override
    public int deleteRole(Role role) {
        int a=roleDao.deleteRole (role);
        int b=roleDao.deleteRoleAndPriv (role);
        return (a+b);
    }


    @Override
    public int insertRole(Role role) {
        //查询数据库是否有这个Role的rname
        Role role1=roleDao.selectRoleAndPrivByRname (role);
        if(role1!=null){
            if(role1.getRname ()!=null) return 0;
            return 0;
        }
        List<Priv> privs=role.getRolepriv ();
        //存放关联信息
        List<Role_Priv> connect=new ArrayList<> ();
        String ranme=role.getRname ();
        //插入角色信息
        int a=roleDao.insertRole (role);
        int id=roleDao.selectRoleAndPrivByRname (role).getRid ();
        //将关联信息存入集合
        for (Priv priv : privs) {
            Role_Priv role_priv=new Role_Priv (id,priv.getPid ());
            connect.add (role_priv);
        }
        //插入关联信息
        int b=roleDao.insertRoleAndPriv (connect);
        return (a+b);
    }

    @Override
    public int updateRolePriv(Role role,String pastrname) {
        List<Priv> privs=role.getRolepriv ();
        //存放关联信息
        List<Role_Priv> connect=new ArrayList<> ();
        //存放原来的role信息
        Role role1=new Role ();
        role1.setRname (pastrname);
        //根据原来的rname查询到的Role信息
        Role role2 = roleDao.selectRoleAndPrivByRname (role1);
        //将rid存入需要修改的Role信息
        role.setRid (role2.getRid ());
        //执行sql操作
        int a=roleDao.updateRole (role);
        int b=roleDao.deleteRoleAndPriv (role);
        //将关联信息存入集合
        for (Priv priv : privs) {
            Role_Priv role_priv=new Role_Priv (role.getRid (),priv.getPid ());
            connect.add (role_priv);
        }
        //插入关联信息
        int c=roleDao.insertRoleAndPriv (connect);
        return (a+b+c);
    }

    @Override
    public Role selectRolePriv(Role role) {
        Role role1=roleDao.selectRoleAndPrivByRname (role);
        List<Priv> list=privDao.selectPriv (role1);
        role1.setRolepriv (list);
        return role1;
    }
}
