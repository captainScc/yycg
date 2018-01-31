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
    <title>上方传媒</title>
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
            background: #5C97DD;
            position: relative;
        }
        form{
            position: absolute;
            top: 45%;
            left:50%;
            margin-top: -200px;
            margin-left: -150px;
            width: 300px;
            height: 400px;
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
            border-radius: 50px;
            padding-left: 10px;
            outline: none;
        }
        #btn{
            width: 150px;
            height: 35px;
            text-align: center;
            padding: 0;
            background: #66D354;
            border: none;
            color:#fff;
        }
    </style>
</head>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <img src="${pageContext.request.contextPath }/images/login/shang.png"/>
    <input type="text" name="username" id="username" placeholder="账号"/>
    <input type="password" name="password" id="pass" placeholder="密码"/>
    <input type="submit" id="btn" value="登录" />
</form>
</body>
</html>
