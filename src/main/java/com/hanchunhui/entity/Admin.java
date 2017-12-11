package com.hanchunhui.entity;

import java.util.Date;

public class Admin {
    private int id;
    private String uname;
    private String pword;
    private Date creatTime;

    public Admin(String uname, String pword) {
        super();
        this.id = id;
        this.uname = uname;
        this.pword = pword;
    }

    public Admin(){
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", uname='" + uname + '\'' +
                ", pword='" + pword + '\'' +
                ", creatTime=" + creatTime +
                '}';
    }
}
