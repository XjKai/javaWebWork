package com.XJK.web.user;

import com.XJK.pojo.User;
import com.XJK.service.UserService;
import com.XJK.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

public class UserServlet extends BaseServlet {
    UserService userService =new UserServiceImpl();
    //管理员登陆
    protected void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (userService.login(new User(null,username,password,null)) != null ){
            //将用户加入session
            request.getSession().setAttribute("user",username);
            //禁止页面缓存
//            response.setHeader("Expires","-1");
//            response.setHeader("Cache-Control","no-cache");
//            response.setHeader("Pragma","no-cache");
            //请求重定向
            response.sendRedirect("/book/admin/articleAdd.jsp");
        } else {
            //请求重定向
            response.sendRedirect("/book/login.html");
        }
    }
    //管理员登出
    protected void adminLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //失效session中当前用户的sessionId
        request.getSession().invalidate();
        System.out.println(request.getSession().getAttribute("user"));

        //请求转发到登陆界面
        System.out.println("退出登陆成功");
        //请求重定向
        response.sendRedirect("/book/login.html");
    }
    //用户注册
    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String pwd = request.getParameter("pwd");

        if (password.equals(pwd)){
            if (userService.existUsername(username)){  //用户名已存在
                //跳转回注册页面
                request.getRequestDispatcher("/regist.html").forward(request,response);
            } else {
                //注册
                userService.registerUser(new User(null,username,password,email));
                //跳转回注册成功页面
                response.addHeader("Cache-Control", "no-store, must-revalidate");
                request.getRequestDispatcher("/registSucc.html").forward(request,response);
            }
        } else {  //密码不一致,跳回注册页面
            request.getRequestDispatcher("/regist.html").forward(request,response);
        }
    }

}
