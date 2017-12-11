package com.hanchunhui.dao;

import com.hanchunhui.entity.Admin;

import java.sql.SQLException;

public interface AdminDao {
    Admin getAdmin(String uname) throws SQLException;
    int insertAdmin(Admin admin) throws SQLException;
}
