package com.hanchunhui.service;

import com.hanchunhui.entity.Admin;

import java.sql.SQLException;

public interface AdminService {
    boolean regist(Admin admin) throws SQLException;

    boolean checkLogin(String uname, String pword) throws SQLException;

    Admin getAdmin(String uname) throws SQLException;
}
