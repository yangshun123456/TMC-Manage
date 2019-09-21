package com.mytest.entity;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.util.List;

@Data
@Component
public class Role {
    private int rid;
    private String rname;

    private String by001;
    private String by002;
    private String by003;

    private String createname;
    private Timestamp createtime;
    private String updatename;
    private Timestamp updatetime;

    private String privstring="";
    private List<Priv> rolepriv;
//    private List<Priv> privid;

    public Role() {

    }

    @Override
    public String toString() {
        return "Role{" +
                "rid=" + rid +
                ", rname='" + rname + '\'' +
                ", by001='" + by001 + '\'' +
                ", by002='" + by002 + '\'' +
                ", by003='" + by003 + '\'' +
                ", createname='" + createname + '\'' +
                ", createtime=" + createtime +
                ", updateename='" + updatename + '\'' +
                ", updatetime=" + updatetime +
                ", privstring='" + privstring + '\'' +
                ", rolepriv=" + rolepriv +
                '}';
    }

    /**
     * 将角色权限转成一个String字符串
     */
    public void change(){
        if (rolepriv!=null) {
            for (int i = 0; i < rolepriv.size (); i++) {
                if (i < rolepriv.size () - 1) {
                    privstring = privstring + rolepriv.get (i).getBy001 () + "、";
                } else {
                    privstring = privstring + rolepriv.get (i).getBy001 ();
                }
            }
        }
    }




}
