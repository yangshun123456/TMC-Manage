package com.mytest.entity;

import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.List;

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
    private Date createtime;
    private String updateename;
    private Date updatetime;
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
            SimpleDateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd");
            createtime1 = dateFormat.format (createtime);
        }
    }
    public void changeUpdateTime(){
        if(updatetime!=null) {
            SimpleDateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd");
            updatetime1 = dateFormat.format (updatetime);
        }
    }
    public String getCreatetime1() {
        return createtime1;
    }

    public void setCreatetime1(String createtime1) {
        this.createtime1 = createtime1;
    }

    public String getUpdatetime1() {
        return updatetime1;
    }

    public void setUpdatetime1(String updatetime1) {
        this.updatetime1 = updatetime1;
    }

    public String getRoleshow() {
        return roleshow;
    }

    public void setRoleshow(String roleshow) {
        this.roleshow = roleshow;
    }

    public Admin(String acname, String apassword) {
        this.acname = acname;
        this.apassword = apassword;
    }

    public List<Priv> getUserpriv() {
        return userpriv;
    }

    public void setUserpriv(List<Priv> userpriv) {
        this.userpriv = userpriv;
    }

    public List<Role> getUserrole() {
        return userrole;
    }

    public void setUserrole(List<Role> userrole) {
        this.userrole = userrole;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAcname() {
        return acname;
    }

    public void setAcname(String acname) {
        this.acname = acname;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }

    public String getAemail() {
        return aemail;
    }

    public void setAemail(String aemail) {
        this.aemail = aemail;
    }

    public String getAtel() {
        return atel;
    }

    public void setAtel(String atel) {
        this.atel = atel;
    }

    public String getBy001() {
        return by001;
    }

    public void setBy001(String by001) {
        this.by001 = by001;
    }

    public String getBy002() {
        return by002;
    }

    public void setBy002(String by002) {
        this.by002 = by002;
    }

    public String getBy003() {
        return by003;
    }

    public void setBy003(String by003) {
        this.by003 = by003;
    }

    public String getCreatename() {
        return createname;
    }

    public void setCreatename(String createname) {
        this.createname = createname;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public String getUpdateename() {
        return updateename;
    }

    public void setUpdateename(String updateename) {
        this.updateename = updateename;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }
}
