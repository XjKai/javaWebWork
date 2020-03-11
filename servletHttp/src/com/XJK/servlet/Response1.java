package com.XJK.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Response1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("xxx");
        /**
         * 请求重定向的特点
         * 1.浏览器地址有变化
         * 2.是两次次请求(重定向操作是在浏览器完成)
         * 3.不能共享request域的数据
         * 4.不能重定向到WEB-INF目录下
         * 5.可以出栈访问(可以访问当前工程以外的资源)
         */
        //response.setStatus(302);
        //response.setHeader("Location","/servletHttp/response2");
        response.sendRedirect("/servletHttp/response2");
    }
}
