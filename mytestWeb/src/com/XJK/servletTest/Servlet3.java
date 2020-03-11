package com.XJK.servletTest;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet3 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //获取ServletContext对象
        ServletContext context = getServletConfig().getServletContext();
        //获取web.xml里面设置的参数
        String username = context.getInitParameter("username");
        String password = context.getInitParameter("password");
        System.out.println("username:" + username);
        System.out.println("password:" + password);
        //  /工程名
        System.out.println("当前工程路径：" + context.getContextPath());

        //映射到idellj代码的web目录
        //http://ip:port/工程名
        System.out.println("当前工程部署在服务器硬盘上的绝对路径：" + context.getRealPath("/test.html"));

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
