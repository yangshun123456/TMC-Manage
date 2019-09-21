package com.mytest.service.impl;


import com.mytest.entity.Role;
import com.mytest.service.RoleService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImlp implements RoleService {


    @Override
    public List<Role> selectAllRole() {
        return null;
    }

    @Override
    public Role selectRoleId(String rname) {
        return null;
    }

    @Override
    public boolean deleteRole(int rid) {
        return false;
    }

    @Override
    public List<Role> selectRolePriv() {
        return null;
    }

    @Override
    public boolean updateRolePriv(Role role) {
        return false;
    }

    @Override
    public boolean insertRole(Role role) {
        return false;
    }

    @Override
    public Role selectRolePriv(Role role) {
        return null;
    }
}
