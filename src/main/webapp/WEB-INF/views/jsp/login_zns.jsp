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
    <title>中诺思</title>
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
        background: url(${pageContext.request.contextPath }/images/login/25.png) center center no-repeat;
        background-size: 100% 100%;
        position: relative;
    }
    form{
        width: 420px;
        height: 400px;
        float: right;
        text-align: center;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-around;
        background: #fff;
    }
    input{
        width: 82%;
        height: 30px;
        padding-left: 28px;
        outline: none;
        border: none;
    }
    #username{
        background: url(${pageContext.request.contextPath }/images/login/ren.png) left center no-repeat;
        border-bottom: 1px solid #ccc;
    }
    #pass{
        background: url(${pageContext.request.contextPath }/images/login/mi.png) left center no-repeat;
        border-bottom: 1px solid #ccc;
    }
    #btn{
        margin-top: 20px;
        height: 35px;
        text-align: center;
        padding: 0;
        background: #2293F1;
        border: none;
        color:#fff;
        border-radius: 50px;
    }
    div{
        position: absolute;
        top: 50%;
        left: 50%;
        margin-top: -200px;
        margin-left: -420px;
        width: 840px;
        height: 400px;
    }
    img{
        width: 420px;
        height: 400px;
    }
</style>
<body>
<div>
    <img src="${pageContext.request.contextPath }/images/login/34.png"/>
    <form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post" >
        <input type="text" name="username" id="username" placeholder="请输入用户名"/>
        <input type="password" name="password" id="pass" placeholder="请输入密码"/>
        <input type="submit" id="btn" value="登录" />
    </form>
</div>
</body>
</html>
