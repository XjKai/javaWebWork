<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2020/3/11
  Time: 11:37
  To change this template use File | Settings | File Templates.

  管理员才能登陆的界面
--%>
<%@ page language="java" contentType="text/html;   charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.XJK.service.ArticleService" %>
<%@ page import="com.XJK.service.impl.ArticleServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.XJK.pojo.Article" %>
<%
    ArticleService articleService =new ArticleServiceImpl();
    List<Article> articleList = articleService.getAllArticle();
    String username = (String) request.getSession().getAttribute("user");
%>
<base href="http://localhost:8080/book/">

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加文章</title>
    <script charset="utf-8"   src="kindeditor/kindeditor-all.js"></script>
    <script   charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
    <script   src="kindeditor/jquery-1.10.2.js" ></script>
    <script>
        console.log('jQuery版本：' + $.fn.jquery);
        KindEditor.ready(function(K) {
            window.editor = K.create('#editor_id',{
                uploadJson :   'kindeditor/jsp/upload_json.jsp',
                fileManagerJson :   'kindeditor/jsp/file_manager_json.jsp',
                allowFileManager : true
            });
        });

        //点击使用ajax访问修改文章的servlet，先判断文章内容
        $(function(){
            //异步提交文章标题与内容
            $('#saveBtn').click(function(){
                var   title   = $('input[name=title]').val();
                //将kindeditor中的内容同步到textarea中
                window.editor.sync();
                var   content = $('#editor_id').val().trim();
                if(title.length   == 0){
                    alert('请输入标题');
                    return;
                }
                if(content.length   == 0){
                    alert('请输入内容');
                    return;
                }
                $.ajax({
                    url:   'articleServlet?action=saveArticle',
                    type: 'post',
                    data:{
                        'title'     : title,
                        'content' : content
                    },
                    timeout: 1000,
                    success: function (data, status) {
                        if(data.success == true){
                            alert(data.msg);
                             // window.location.href="articleServlet?action=queryArticle";
                        }else if(data.success == false){
                            alert(data.msg);
                        }
                    },
                    fail: function (err, status) {
                        console.log(err)
                    }
                });
            });

        });
    </script>
</head>
<body style="width:   860px; margin: 0 auto;">
<div>
    <h5>管理员： <% out.println(username);%></h5>
    <form   id="articleForm">
        <div style="margin-top:   10px;">
            <input   type="text" name="title" value="<%out.println(articleList.get(0).getTitle());%>" style="width:   300px; height: 30px;"> </input>
        </div>
        <div style="margin-top:   10px;">
            <textarea   id="editor_id" name="content"   style="width:700px;height:400px;">
<%--                先显示原来内容--%>
                 <%  out.println(articleList.get(0).getContent()); %>
            </textarea>
        </div>
    </form>
    <div>
        <input   type="button" value="提交修改" id="saveBtn" />
        <a href="UserServlet?action=adminLogout" method="post">退出登陆</a>
    </div>
</div>
</body>
</html>
