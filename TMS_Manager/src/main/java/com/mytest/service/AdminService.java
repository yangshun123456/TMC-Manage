package com.mytest.service;

import com.mytest.entity.Admin;
import com.mytest.entity.Role;

import java.util.List;

public interface AdminService {
    /**
     * 修改用户信息
     * @param admin
     * @param rid
     * @return
     */
    int updateAdmin(Admin admin, int rid);
    /**
     * 查询用户的权限以及信息使用（aid）
     * @param aid
     * @return
     */
    Admin selectAdminAndRoleById(int aid);
    /**
     * 根据rname查询用户的信息
     * @param rname
     * @return
     */
    List<Admin> selectAdminByRname(String rname);
    /**
     * 通过一个用户id删除用户
     * @param aid
     * @return
     */
    int deleteAdmin(int aid);
    /**
     * 插入一个用户
     * @param admin
     * @return
     */
    int insertAdmin(Admin admin);
    /**
     * 查询所有用户的信息
     * @return
     */
    List<Admin> selectAlluer();
    /**
     * 查询一个用户的信息
     * @param admin
     * @return
     */
     Admin selectAdmin(Admin admin);

    /**
     * 修改用户密码
     * @param admin
     * @return
     */
     boolean updatePassword(Admin admin);

    /**
     * 查询用户角色
     * @param aid
     * @return
     */
     List<Role> selectRole(int aid);

    /**
     * 修改用户信息
     * @param admin
     * @return
     */
     boolean updateMessage(Admin admin);
}
