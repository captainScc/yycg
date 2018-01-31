<%--
  Created by IntelliJ IDEA.
  User: sharetimes
  Date: 2017/11/8
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>启创汇聚登录</title>
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
            background: url(${pageContext.request.contextPath }/images/100327429_banner.jpg) center center;
            background-size: cover;
            position: relative;
        }
        form{
            width: 460px;
            height: 280px;
            background: #fff;
            position: absolute;
            top:50%;
            left:50%;
            margin-top:-140px;
            margin-left:-230px;
            padding: 40px;
        }
        p{
            width: 80%;
            height: 60px;
            line-height: 60px;
            margin: 0 auto;
            text-align: center;
            margin-top: 20px;
        }
        #sub{
            width: 100px;
            height: 40px;
            border: none;
            background: green;
            color:#fff;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath }/login.do" method="post">
    <p>
        用户名&nbsp;&nbsp;<input id="user" type="text" name="username" value=""/>
    </p>
    <p>
        密&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;<input type="password" name="password" id="password" value="" />
    </p>
    <p>
        <input id="sub" type="submit" name="" id="" value="登录" />
    </p>
</form>
</body>
</html>
