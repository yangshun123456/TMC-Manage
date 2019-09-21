package com.mytest.service.impl;

import com.mytest.entity.Admin;
import com.mytest.entity.Priv;
import com.mytest.service.PrivService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PrivServiceImlp implements PrivService {

    @Override
    public List<Priv> selectPriv(Admin admin) {
        return null;
    }

    @Override
    public List<Priv> selectPrivIdByNames(List<Priv> list) {
        return null;
    }
}
