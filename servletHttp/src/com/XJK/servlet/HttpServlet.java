package com.XJK.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class HttpServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("URI:" + request.getRequestURI());
        System.out.println("URL:" + request.getRequestURL());
        System.out.println("客户端IP地址：" + request.getRemoteHost());
        System.out.println("User-Agent"+request.getHeader("User-Agent"));
        System.out.println("请求方式：" + request.getMethod());


    }
}
