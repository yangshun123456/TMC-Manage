package com.mytest.service;

import com.mytest.entity.Role;
import java.util.List;

public interface RoleService {
    /**
     * 查询所有角色
     * @return
     */
    List<Role> selectAllRole();
    /**
     * 查询根据sname查询role信息
     * @param rname
     * @return
     */
    Role selectRoleBySname(String rname);

    /**
     * 通过角色id删除角色
     * @param role
     * @return
     */
    int deleteRole(Role role);


    /**
     * 查询指定角色的权限(使用id)
     * @param role
     * @return
     */
    Role selectRolePriv(Role role);

    /**
     *新增角色
     * @param role
     * @return
     */
    int insertRole(Role role);

    /**
     * 修改角色权限
     * @param role
     * @return
     */
    int updateRolePriv(Role role,String pastrname);
}
