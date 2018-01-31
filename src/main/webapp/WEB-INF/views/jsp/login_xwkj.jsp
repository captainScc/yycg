<%--
  Created by IntelliJ IDEA.
  User: sharetimes
  Date: 2017/11/8
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <%--<title>杭州旋涡科技有限公司</title>--%>
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
            background: url(${pageContext.request.contextPath }/images/500460542.jpg) center center;
            background-size: cover;
            position: relative;
        }
        form{
            width: 460px;
            height: 100px;
            background: #fff;
            position: absolute;
            top:30%;
            left:50%;
            margin-top:-50px;
            margin-left:-230px;
            padding: 40px;
            border-radius: 10px;
        }
        input{
            width: 45%;
            height: 30px;
            background: #ddd;
            border-radius: 5px;
            border: 1px solid #aaa;
            outline: none;
            padding-left: 5px;
        }
        p{
            width: 80%;
            height: 60px;
            line-height: 60px;
            margin: 0 auto;
            text-align: center;
            margin-top: 10px;
        }
        #sub{
            width: 100px;
            height: 40px;
            border: none;
            background: #000079;
            color:#fff;
        }
    </style>
</head>
<body>
<form action="${pageContext.request.contextPath }/login.do" method="post">
    <input id="user" type="text" name="username" value="" placeholder="用户名"/>

    <input type="password" name="password" id="password" value="" placeholder="密码"/>
    <p>
        <input id="sub" type="submit" name="" id="" value="登录" />
    </p>

</form>
</body>
</html>
