package com.XJK.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("这里是servlet1");
        String username = request.getParameter("username");
        System.out.println("用户名："+ username);
        request.setAttribute("key","efwfwfewf6");
        //请求转发
        /**
         * 请求转发的特点
         * 1.浏览器地址没有变化
         * 2.是一次请求(转发操作在java操作内完成)
         * 3.共享request域的数据
         * 4.可以转发到 WEB-INF目录下
         * 5.不能出栈访问(不能访问当前工程以外的资源)
         */
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("servlet2");

        requestDispatcher.forward(request,response);

    }
}
