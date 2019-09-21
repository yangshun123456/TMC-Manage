package com.mytest.entity;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Data
@Component
public class Admin {
    private int aid;
    private String aname;
    private String acname;
    private String apassword;
    private String aemail;
    private String atel;

    private String by001;
    private String by002;
    private String by003;

    private String createname;
    private Timestamp createtime;
    private String updateename;
    private Timestamp updatetime;
    private String createtime1;
    private String updatetime1;

    private List<Priv> userpriv;
    private List<Role> userrole;

    private String roleshow="";

    public Admin() {
    }

    public void changeRole(){
        for(int i=0;i<userrole.size ();i++){
            if(i<userrole.size ()-1){
                roleshow+=userrole.get (i).getRname ()+",";
            }else{
                roleshow=roleshow+userrole.get (i).getRname ()+"";
            }
        }
    }

    @Override
    public String toString() {
        return "Admin{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", acname='" + acname + '\'' +
                ", apassword='" + apassword + '\'' +
                ", aemail='" + aemail + '\'' +
                ", atel='" + atel + '\'' +
                ", by001='" + by001 + '\'' +
                ", by002='" + by002 + '\'' +
                ", by003='" + by003 + '\'' +
                ", createname='" + createname + '\'' +
                ", createtime=" + createtime +
                ", updateename='" + updateename + '\'' +
                ", updatetime=" + updatetime +
                ", createtime1='" + createtime1 + '\'' +
                ", updatetime1='" + updatetime1 + '\'' +
                ", userpriv=" + userpriv +
                ", userrole=" + userrole +
                ", roleshow='" + roleshow + '\'' +
                '}';
    }

    public void changeCreateTime(){
        if(createtime!=null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd hh-mm-ss");
            createtime1 = dateFormat.format (createtime);
        }
    }
    public void changeUpdateTime(){
        if(updatetime!=null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd hh-mm-ss");
            updatetime1 = dateFormat.format (updatetime);
        }
    }

}
