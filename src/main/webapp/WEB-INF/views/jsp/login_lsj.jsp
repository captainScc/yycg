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
    <title>零世纪</title>
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
            background: url(${pageContext.request.contextPath }/images/login/22.png) center center no-repeat;
            background-size: 100% 100%;
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
            background: rgba(255,255,255,0.5);
        }
        input{
            width: 80%;
            height: 30px;
            padding-left: 10px;
            outline: none;
            background: none;
            border: none;
            border-bottom: 1px solid #fff;
        }
        input::-webkit-input-placeholder { /* WebKit browsers */
            color: #fff;
        }
        input:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color: #fff;
        }
        input::-moz-placeholder { /* Mozilla Firefox 19+ */
            color: #fff;
        }
        input:-ms-input-placeholder { /* Internet Explorer 10+ */
            color: #fff;
        }
        #btn{
            width: 80%;
            height: 35px;
            text-align: center;
            padding: 0;
            background: #0083D9;
            border: none;
            color:#fff;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <img src="img/ling.png"/>
    <input type="text" name="username" id="username" placeholder="账号"/>
    <input type="password" name="password" id="pass" placeholder="密码"/>
    <input type="submit" id="btn" value="登录" />
</form>
</body>
</html>
