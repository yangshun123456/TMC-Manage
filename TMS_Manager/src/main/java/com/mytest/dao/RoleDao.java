package com.mytest.dao;

import com.mytest.entity.Admin;
import com.mytest.entity.Admin_Role;
import com.mytest.entity.Role;
import com.mytest.entity.Role_Priv;
import org.apache.ibatis.annotations.*;
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

    /**
     * 根据角色的rname查询角色和权限信息
     * @param role
     * @return
     */
    @Results({
            @Result(property = "rid",column = "rid"),
            @Result(property = "rname",column = "rname"),
            @Result(property = "rolepriv",column = "rid",many = @Many(select = "com.mytest.dao.PrivDao.selectPriv"))
    })
    @Select ("select rid,rname from tc_role where rname=#{rname}")
    Role selectRoleAndPrivByRname(Role role);

    /**
     * 查询所有的角色
     * @return int
     */

    @Results({
            @Result(property = "rid",column = "rid"),
            @Result(property = "rname" ,column = "rname"),
            @Result(property = "rolepriv",column = "rid",many = @Many(select = "com.mytest.dao.PrivDao.selectPriv"))
    })
    @Select ("select rid,rname from tc_role")
    List<Role> selectAllRole();


    /**
     * 插入新角色
     * @param role
     * @return int
     */
    @Insert ("insert into tc_role(rname,createname,createtime) values(#{rname},#{createname},#{createtime})")
    int insertRole(Role role);


    /**
     * 插入到关联表中
     * @return
     */
    @Insert ({
            "<script>",
            "insert into tc_role_priv(rid,pid) values",
            "<foreach collection='list' item='mylist' separator=','>",
                "(#{mylist.rid},#{mylist.pid})",
            "</foreach>",
            "</script>"
    })
    int insertRoleAndPriv(List<Role_Priv> list);

    /**
     * 修改角色rname
     * @return
     */
    @Update ("update tc_role set rname=#{rname},updatename=#{updatename},updatetime=#{updatetime} where rname=#{rname}")
    int updateRole(Role role);

    /**
     * 删除角色权限关联表中有rid的行
     * @param role
     * @return
     */
    @Delete ("delete from tc_role_priv where rid=#{rid}")
    int deleteRoleAndPriv(Role role);

    /**
     * 删除一个角色
     * @param role
     * @return
     */
    @Delete ("delete from tc_role where rid=#{rid}")
    int deleteRole(Role role);

    /**
     * 插入关联表
     * @param list
     * @return
     */
    @Insert ({
            "<script>",
            "insert into tc_admin_role(aid,rid) values",
            "<foreach collection='list' item='mylist' separator=','>",
            "(#{mylist.aid},#{mylist.rid})",
            "</foreach>",
            "</script>"
    })
    int insertAdminAndRole(List<Admin_Role> list);

    /**
     * 删除关联表信息
     * @param admin
     * @return
     */
    @Delete ("delete from tc_admin_role where aid=#{aid}")
    int deleteAdminAndRole(Admin admin);
}
