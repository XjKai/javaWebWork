package com.XJK.web.articleModify;

import com.XJK.pojo.Article;
import com.XJK.service.ArticleService;
import com.XJK.service.impl.ArticleServiceImpl;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ArticleServlet extends BaseServlet {
    //修改文章的实现类
    private ArticleService articleService = new ArticleServiceImpl();


    protected void saveArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int nResult = 0;
        if(request.getSession().getAttribute("user") != null)  //为避免缓存，要判断当前是否是登陆状态
        {
            String title = request.getParameter("title");
            String content = request.getParameter("content");

            if ( !articleService.existArticle(title)){
                //文章添加
                nResult =  articleService.addArticle(new Article(title,content));
            } else {
                //更新文章
                nResult = articleService.updateArticle(new Article(title,content));
            }
        } else {
            nResult = -1;
        }

        //告之前台是否成功
        JSONObject   json = new JSONObject();
        if(nResult   > 0){
            json.put("success",   true);
            json.put("msg",   "保存成功");
        }else if(nResult == -1){
            json.put("success",   false);
            json.put("msg",   "保存失败,请登陆后保存");
        }else {
            json.put("success",   false);
            json.put("msg",   "保存失败，请检查格式");
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json; charset=utf-8");
        PrintWriter out = null;
        try {
            out = response.getWriter();
            out.print(json.toString());
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
        }

    }



    protected void queryArticle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("查询文字");
    }


}
