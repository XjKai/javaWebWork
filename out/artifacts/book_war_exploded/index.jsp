<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取动态路径 格式：   http://localhost:8080/book/
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<a href="regist.jsp">注册</a>
<a href="login.jsp">登陆</a>


</body>
</html>