package com.hanchunhui.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class dbUtil {
    private static Connection conn;

    private static String DB_DRIVER;
    private static String DB_USER;
    private static String DB_PASSWORD;
    private static String DB_URL;



    static {
        // 加载数据库配置文件
        try {
            InputStream ins = dbUtil.class.getResourceAsStream("/db.properties");
            Properties prop = new Properties();

            prop.load(ins);
            // 加载数据库驱动
            DB_DRIVER=prop.getProperty("db_driver");
            DB_URL = prop.getProperty("db_url");
            DB_USER = prop.getProperty("db_username");
            DB_PASSWORD = prop.getProperty("db_password");
            Class.forName(DB_DRIVER);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static Connection getConnection(){
        Connection conn =null;
        try {
            conn= DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return conn;
    }

    public static void close(Connection conn){
        try {
            conn.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
