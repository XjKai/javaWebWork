package com.XJK.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionServlet extends BaseServlet {

    /**
     * 创建session
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void createSession(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-Type","text/html; charset=UTF-8");
       //创建session会话
        HttpSession session = request.getSession();
        //获取sessionID
        String id = session.getId();

        //是否为新创建出来的
        boolean isNew = session.isNew();
        response.getWriter().write("session ID:"+id);
        response.getWriter().write("是否为新创建："+ isNew);
    }

    /**
     * 向session中保存数据
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void setSessionAttribute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-Type","text/html; charset=UTF-8");
        request.getSession().setAttribute("key","value");

    }

    /**
     * 获取session数据
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void getSessionAttribute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-Type","text/html; charset=UTF-8");
        Object key = request.getSession().getAttribute("key");
        response.getWriter().write("key："+ key);
    }

    /**
     * 获取session声明周期
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void getDefaultLife(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-Type","text/html; charset=UTF-8");
        int time = request.getSession().getMaxInactiveInterval();
        response.getWriter().write("session默认生命周期："+ time);
    }

    /**
     * 设置session生命周期
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void setDefaultLife(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-Type","text/html; charset=UTF-8");
        request.getSession().setMaxInactiveInterval(5);
        response.getWriter().write("session默认生命周期："+ 5);
    }

    /**
     * 销毁session
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void deleteSession(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-Type","text/html; charset=UTF-8");
        request.getSession().invalidate();
        response.getWriter().write("session已销毁");
    }
}
