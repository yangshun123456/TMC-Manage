package com.mytest.dao;

import com.mytest.entity.Admin;
import com.mytest.entity.Role;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleDao {

    /**
     * 根绝用户信息（id）查询用户角色
     * @param admin
     * @return
     */
    @Select ("select rid,rname from tc_role where rid = (select rid from tc_admin_role where aid=#{aid})")
    List<Role> selectRoleByAdmin(Admin admin);
}
