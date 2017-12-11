package com.hanchunhui.test;

import com.hanchunhui.dao.AdminDao;
import com.hanchunhui.dao.impl.AdminDaoImpl;
import com.hanchunhui.entity.Admin;
import org.junit.Before;
import org.junit.Test;

import java.sql.SQLException;

public class testAdmin {
    private AdminDao adminDao;
    @Before
    public void setUp() throws Exception {
        adminDao=new AdminDaoImpl();
    }
    @Test
    public void testInsert() throws SQLException {
        Admin admin = new Admin("admin","123123");
        int code = adminDao.insertAdmin(admin);
        System.out.println(code);
    }

    @Test
    public void testGet() throws SQLException {
        Admin admin = adminDao.getAdmin("admin");

        System.out.println(admin);
    }
}
