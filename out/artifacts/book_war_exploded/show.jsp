<%--
  Created by IntelliJ IDEA.
  User: MSI
  Date: 2020/3/11
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.XJK.service.ArticleService" %>
<%@ page import="com.XJK.service.impl.ArticleServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="com.XJK.pojo.Article" %>
<%
    ArticleService articleService =new ArticleServiceImpl();
    List<Article> articleList = articleService.getAllArticle();
    %>

<%
    //获取动态路径 格式：   http://localhost:8080/book/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<html>
<head>
    <title>Title</title>
    <%  out.println(articleList.get(0).getContent()); %>
</head>
<body>

</body>
</html>
