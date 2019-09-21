package com.mytest.service;

import com.mytest.entity.Admin;
import com.mytest.entity.Priv;

import java.util.List;

public interface PrivService {
    /**
     * 查询用户的权限
     * @param admin
     * @return
     */
    List<Priv> selectPriv(Admin admin);

    /**
     * 查询权限的pid 通过 name
     * @param list
     * @return
     */
    List<Priv> selectPrivIdByNames(List<Priv> list);
}
