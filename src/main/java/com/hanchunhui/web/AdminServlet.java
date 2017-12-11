package com.hanchunhui.web;

import com.hanchunhui.service.AdminService;
import com.hanchunhui.service.impl.AdminServiceImpl;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class AdminServlet extends HttpServlet {
    private AdminService adminService;

    public void init() {
        adminService = new AdminServiceImpl();
    }

    public void doPost(HttpServletRequest req,HttpServletResponse resp){
//        String url = req.getRequestURI();
//        String action = url.substring(url.lastIndexOf("/")+1,url.length());
        try {
            login(req, resp);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException {
        String username = req.getParameter("uname");
        String password = req.getParameter("pword");
        System.out.println("123321");
        if(username == null||"".equals(username)||password==null||"".equals(password)){
            resp.getWriter().print("login fail2");

        }


        boolean success = adminService.checkLogin(username, password);
        if(success){
            resp.sendRedirect("www.baidu.com");
        }else{
            resp.getWriter().print("password wrong"+username+" "+password);

        }
    }
}
