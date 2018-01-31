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
    <title>云峰传媒</title>
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
        background: url(${pageContext.request.contextPath }/images/login/44.png) center center no-repeat;
        background-size: 100% 100%;
        position: relative;
    }
    form{
        position: absolute;
        top: 45%;
        left:50%;
        margin-top: -150px;
        margin-left: -150px;
        width: 300px;
        height: 300px;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
        background: #fff;
    }
    input{
        width: 94%;
        height: 30px;
        /*border-radius: 5px;*/
        padding-left: 10px;
        outline: none;
        border: none;
    }
    #btn{
        margin-top: 20px;
        height: 35px;
        text-align: center;
        padding: 0;
        background: #9CC715;
        border: none;
        color:#fff;
        border-radius: 5px;
    }
    div{
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    #username{
        border-bottom: 1px solid #ccc;
    }
</style>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <img src="${pageContext.request.contextPath }/images/login/云蜂传媒.png"/>
    <div>
        <input type="text" name="username" id="username" placeholder="账号"/>
        <input type="password" name="password" id="pass" placeholder="密码"/>
    </div>

    <input type="submit" id="btn" value="登录" />
</form>
</body>
</html>
