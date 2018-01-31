<%--
  Created by IntelliJ IDEA.
  User: sharetimes
  Date: 2017/11/3
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>霍尔果斯宝盛登录</title>
</head>
<body>
<h3>霍尔果斯宝盛后台登录</h3>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    用户名:
    <input id="username" type="text" name="username"  value=""/>
    密码:
    <input id="password" type="password" name="password" value=""/>

    <button type="submit" >登录</button>
</form>
</body>
</html>
