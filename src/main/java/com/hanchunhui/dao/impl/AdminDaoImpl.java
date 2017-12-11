package com.hanchunhui.dao.impl;

import com.hanchunhui.dao.AdminDao;
import com.hanchunhui.entity.Admin;
import com.hanchunhui.util.dbUtil;

import java.io.DataInputStream;
import java.sql.*;

public class AdminDaoImpl implements AdminDao {
    public Admin getAdmin(String uname) throws SQLException {
        Admin admin=null;
        Connection conn= dbUtil.getConnection();
        String sql = "select uname,pword,createTime from admin where uname=?";
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setString(1,uname);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            admin=new Admin();
            admin.setUname(rs.getString("uname"));
            admin.setPword(rs.getString("pword"));
            Timestamp timestamp = rs.getTimestamp("createTime");
            Date createTime = new Date(timestamp.getTime());
            admin.setCreatTime(createTime);
        }
        dbUtil.close(conn);
        return admin;
    }

    public int insertAdmin(Admin admin) throws SQLException {
        Connection conn=dbUtil.getConnection();
        String sql="insert ignore into admin(uname,pword) value(?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1,admin.getUname());
        ps.setString(2,admin.getPword());
        int code=ps.executeUpdate();
        dbUtil.close(conn);
        return code;
    }
}
