package com.hanchunhui.service.impl;

import com.hanchunhui.dao.AdminDao;
import com.hanchunhui.entity.Admin;
import com.hanchunhui.service.AdminService;

import java.sql.SQLException;

public class AdminServiceImpl implements AdminService {
    private AdminDao adminDao;
    public boolean regist(Admin admin) throws SQLException {
        return adminDao.insertAdmin(admin)>0?true:false;
    }

    public boolean checkLogin(String uname, String pword) throws SQLException {
        if("".equals(uname) || uname==null){
            return false;
        }
        Admin admin = adminDao.getAdmin(uname);
        if(admin==null){
            return  false;
        }
        if(!admin.getPword().equals(pword)){
            return  false;
        }
        return true;
    }

    public Admin getAdmin(String uname) throws SQLException {
        return adminDao.getAdmin(uname);
    }
}
