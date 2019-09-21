package com.mytest.entity;

import org.springframework.stereotype.Component;

import java.sql.Date;
import java.util.List;

@Component
public class Role {
    private int rid;
    private String rname;

    private String by001;
    private String by002;
    private String by003;

    private String createname;
    private Date createtime;
    private String updateename;
    private Date updatetime;

    private String privstring="";
    private List<Priv> rolepriv;
    private List<Priv> privid;

    public Role() {

    }
    public void change(){
        for(int i=0;i<rolepriv.size ();i++){
            if(i<rolepriv.size ()-1){
                privstring=privstring+rolepriv.get (i).getBy001 ()+"、";
            }else {
                privstring=privstring+rolepriv.get (i).getBy001 ();
            }
        }
    }

    public List<Priv> getPrivid() {
        return privid;
    }

    public void setPrivid(List<Priv> privid) {
        this.privid = privid;
    }

    public String getPrivstring() {
        return privstring;
    }

    public void setPrivstring(String privstring) {
        this.privstring = privstring;
    }

    public List<Priv> getRolepriv() {
        return rolepriv;
    }

    public void setRolepriv(List<Priv> rolepriv) {
        this.rolepriv = rolepriv;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
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
