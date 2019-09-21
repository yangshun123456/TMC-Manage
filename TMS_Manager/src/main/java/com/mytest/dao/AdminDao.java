package com.mytest.dao;

import com.mytest.entity.Admin;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {
    /**
     * 查询所有用户
     *
     * @return
     */
//    @Results({
//            @Result()
//    })
//    @Select("select * from tc_admin")
//    List<Admin> selectall();

    /**
     * 根据id和密码查询用户
     *
     * @param admin
     * @return
     */
    @Select("select * from tc_admin where acname=#{acname} and apassword=#{apassword}")
    Admin selectByIdAndPsw(Admin admin);

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

}
