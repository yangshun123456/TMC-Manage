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
     * 查询名字的id
     * @param rname
     * @return
     */
    Role selectRoleId(String rname);

    /**
     * 通过角色id删除角色
     * @param rid
     * @return
     */
    boolean deleteRole(int rid);
    /**
     * 查询所有角色的所有权限
     * @param
     * @return
     */
    List<Role> selectRolePriv();

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
    boolean insertRole(Role role);

    /**
     * 修改角色权限
     * @param role
     * @return
     */
    boolean updateRolePriv(Role role);
}
