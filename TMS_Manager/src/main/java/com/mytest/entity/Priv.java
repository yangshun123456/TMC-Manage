package com.mytest.entity;

import org.springframework.stereotype.Component;

import java.sql.Date;

@Component
public class Priv {
    private int pid;
    private String pclass;
    private String purl;

    private String by001;//代表权限名字
    private String by002;
    private String by003;

    private String createname;
    private Date createtime;
    private String updateename;
    private Date updatetime;

    public Priv() {
    }

    public Priv(String pclass, String purl) {
        this.pclass = pclass;
        this.purl = purl;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getPclass() {
        return pclass;
    }

    public void setPclass(String pclass) {
        this.pclass = pclass;
    }

    public String getPurl() {
        return purl;
    }

    public void setPurl(String purl) {
        this.purl = purl;
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
