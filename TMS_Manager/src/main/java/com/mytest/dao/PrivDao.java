package com.mytest.dao;

import com.mytest.entity.Admin;
import com.mytest.entity.Priv;
import com.mytest.entity.Role;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PrivDao {

    /**
     * 查询所有权限
     * @return
     */
    @Select ("select pid,pclass,purl,by001 from tc_priv ")
    List<Priv> selectAllPriv();

    /**
     * 查询用户的权限（通过aid）
     * @param admin
     * @return
     */
    @Select ("select pid,pclass,purl,by001 from tc_priv where pid in (select pid from tc_role_priv where rid=(select rid from tc_admin_role where aid=#{aid}))")
    List<Priv> selectPrivByAdmin(Admin admin);

    /**
     * 查询每个角色的权限(通过rid)
     * @param role
     * @return
     */
    @Select ("select tp.pid,pclass,purl,by001 from tc_priv tp,tc_role_priv trp where trp.pid=tp.pid and trp.rid=#{rid}")
    List<Priv> selectPriv(Role role);
}
