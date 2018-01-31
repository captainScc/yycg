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
    <title>北京视游互动科技</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        html,body{
            width: 100%;
            height: 100%;
        }
        body{
            background: url(${pageContext.request.contextPath }/images/99.png) center center no-repeat;
            background-size: 100% 100%;
            position: relative;
        }
        form{
            width: 340px;
            height: 380px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-top: -190px;
            margin-left: -170px;
            background: url(${pageContext.request.contextPath }/images/78.png) center center no-repeat;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-around;
        }
        input{
            width: 80%;
            height: 40px;
            border: none;
            outline: none;
            padding-left: 10px;
            border-radius: 5px;
        }
        #btn{
            padding: 0;
            background: #007ddb;
            color:#fff;
            font-size: 20px;
        }
    </style>
</head>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <input type="text" name="username" id="username" placeholder="账号："/>
    <input type="password" name="password" id="pass" placeholder="密码："/>
    <input type="submit" id="btn" value="登录" />
</form>
</body>
</html>
