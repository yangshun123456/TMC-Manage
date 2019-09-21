package com.mytest.dao;

import com.mytest.entity.Admin;
import com.mytest.entity.Priv;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrivDao {

    /**
     * 查询用户的权限
     * @param admin
     * @return
     */
    @Select ("select pclass,purl,by001 from tc_priv where pid in (select pid from tc_role_priv where rid=(select rid from tc_admin_role where aid=#{aid}))")
    List<Priv> selectPrivByAdmin(Admin admin);
}
