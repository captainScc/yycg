<%--
  Created by IntelliJ IDEA.
  User: sharetimes
  Date: 2017/11/6
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>登录</title>
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
            background: url(${pageContext.request.contextPath }/images/348551.jpg) center center;
            background-size: cover;
            position: relative;
        }
        form{
            width: 460px;
            height: 150px;
            background: #ADADAD;
            position: absolute;
            top:50%;
            left:50%;
            margin-top:-200px;
            margin-left:-230px;
            padding: 40px;
            border-radius: 10px;
        }
        input{
            width: 80%;
            height: 30px;
            background: #ddd;
            border-radius: 5px;
            border: 1px solid #aaa;
            outline: none;
            padding-left: 5px;
        }
        p{
            width: 70%;
            height: 60px;
            line-height: 60px;
            /*margin: 0 auto;*/
            /*text-align: center;*/
            margin-top: 10px;
            float: left;
        }
        #sub{
            width: 100px;
            height: 60px;
            border: none;
            background: #000;
            color:#fff;
            float: right;
            margin-top: 8%;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath }/login.do" method="post">
    <p>
        <input id="user" type="text" name="username" value="" placeholder="账号"/>
        <input type="password" name="password" id="password" value="" placeholder="秘钥"/>
    </p>

    <input id="sub" type="submit" name="" id="" value="登录" />

</form>
</body>
</html>
