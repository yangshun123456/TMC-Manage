package com.mytest.dao;

import com.mytest.entity.Admin;
import com.mytest.entity.Admin_Role;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {
    /**
     * 查询所有用户
     *
     * @return
     */
    @Results({
            @Result(property = "aid",column = "aid"),
            @Result(property = "userrole",column = "aid",one = @One(select = "com.mytest.dao.RoleDao.selectRoleByAdmin")),
            @Result(property = "userpriv",column = "aid",many = @Many(select = "com.mytest.dao.PrivDao.selectPrivByAdmin"))
    })
    @Select("select * from tc_admin")
    List<Admin> selectall();

    /**
     * 查询所有用户
     *
     * @return
     */
    @Results({
            @Result(property = "aid",column = "aid"),
            @Result(property = "userrole",column = "aid",one = @One(select = "com.mytest.dao.RoleDao.selectRoleByAdmin")),
            @Result(property = "userpriv",column = "aid",many = @Many(select = "com.mytest.dao.PrivDao.selectPrivByAdmin"))
    })
    @Select("select * from tc_admin where aid=#{aid}")
    Admin selectAdmin(Admin admin);

    /**
     * 根据id和密码查询用户
     *
     * @param admin
     * @return
     */
    @Select("select * from tc_admin where acname=#{acname} and apassword=#{apassword}")
    Admin selectByIdAndPsw(Admin admin);

    /**
     * 根据用户名查询用户
     * @param admin
     * @return
     */
    @Select("select * from tc_admin where acname=#{acname}")
    Admin selectAdminByAcname(Admin admin);

    /**
     * 修改用户密码
     *
     * @param admin
     */
    @Update("update tc_admin set apassword=#{apassword} where aid=#{aid}")
    int updatePassword(Admin admin);

    /**
     * 修改用户信息（根据aid）
     * @param admin
     * @return
     */
    @Update ("update tc_admin set aname=#{aname},atel=#{atel},aemail=#{aemail} where aid=#{aid}")
    int updateInformation(Admin admin);

    /**
     * 插入用户信息
     * @param admin
     * @return
     */
    @Insert ("insert into tc_admin(aname,acname,apassword,by001,atel,aemail,createname,createtime) values(#{aname},#{acname},#{apassword},#{by001},#{atel},#{aemail},#{createname},#{createtime})")
    int insertAdmin(Admin admin);

    /**
     * 删除一个用户
     * @param admin
     * @return
     */
    @Delete ("delete from tc_admin where aid=#{aid}")
    int deleteAdmin(Admin admin);

    /**
     * 修改用户信息
     * @param admin
     * @return
     */
    @Update ("update tc_admin set aname=#{aname},atel=#{atel},aemail=#{aemail} where aid=#{aid}")
    int updateAdmin(Admin admin);



}
