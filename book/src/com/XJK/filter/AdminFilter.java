package com.XJK.filter;


import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AdminFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //强制类型转换
        HttpSession session = ((HttpServletRequest)servletRequest).getSession();
        Object user = session.getAttribute("user");
        if (user == null) {
            //请求重定向
            ((HttpServletResponse)servletResponse).sendRedirect("/book/login.jsp");
            return;
        } else {
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
