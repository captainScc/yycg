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
    <title>北青网</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    html{
        width: 100%;
        height: 100%;
    }
    body{
        width: 100%;
        height: 100%;
        background: url(${pageContext.request.contextPath }/images/login/11.png) center center no-repeat;
        background-size: cover;
        position: relative;
    }
    form{
        position: absolute;
        top: 50%;
        left:50%;
        margin-top: -150px;
        margin-left: -100px;
        width: 200px;
        height: 300px;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
    }
    input{
        width: 100%;
        height: 30px;
        border: 1px solid #ccc;
        border-radius: 5px;
        padding-left: 10px;
        outline: none;
    }
    #btn{
        width: 100%;
        height: 35px;
        text-align: center;
        padding: 0;
        background: #0099FF;
        border: none;
        color:#fff;
    }
</style>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <img src="${pageContext.request.contextPath }/images/login/北青网.png"/>
    <input id="username" type="text" name="username"  value="" placeholder="账号"/>
    <input id="password" type="password" name="password" value="" placeholder="密码"/>

    <%--<button type="submit" id="btn" >登录</button>--%>
    <input type="submit" id="btn" value="登录"/>
</form>
</body>
</html>
