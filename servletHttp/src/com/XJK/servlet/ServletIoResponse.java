package com.XJK.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ServletIoResponse extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(response.getCharacterEncoding());

        // response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-Type","text/html; charset=UTF-8");

        //response.setContentType("text/html; charset=UTF-8");

        PrintWriter writer = response.getWriter();
        System.out.println(response.getCharacterEncoding());
        writer.println("惩罚为辅");
    }
}
