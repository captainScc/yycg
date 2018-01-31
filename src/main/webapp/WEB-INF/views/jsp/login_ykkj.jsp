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
    <title>云客</title>
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
        background: url(${pageContext.request.contextPath }/images/login/55.jpg) center center no-repeat;
        background-size: 100% 100%;
        position: relative;
    }
    form{
        position: absolute;
        top: 45%;
        right:15%;
        margin-top: -150px;
        margin-left: -150px;
        width: 400px;
        height: 400px;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
        background: #fff;
        border-radius: 5px;
    }
    input{
        width: 80%;
        height: 30px;
        border: none;
        border-bottom: 1px solid #ccc;
        /*border-radius: 5px;*/
        padding-left: 10px;
        outline: none;
    }
    #btn{
        margin-top: 20px;
        height: 40px;
        text-align: center;
        padding: 0;
        background: #2493CA;
        border-radius: 5px;
        color:#fff;
    }
</style>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <img src="${pageContext.request.contextPath }/images/login/云客.png"/>
    <input type="text" name="username" id="username" placeholder="账号"/>
    <input type="password" name="password" id="pass" placeholder="密码"/>
    <input type="submit" id="btn" value="登录" />
</form>
</body>
</html>
