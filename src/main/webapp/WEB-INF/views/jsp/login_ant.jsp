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
    <title>木蚂蚁登录</title>
</head>
<body>
<form id="loginForm" action="${pageContext.request.contextPath }/login.do" method="post">
    <table>
        <tr>
            <td>木蚂蚁后台登录</td>
        </tr>
        <tr>
            <td>
                用户名:
                <input id="username" type="text" name="username"  value=""/>
            </td>
        </tr>
        <tr>
            <td>
                密码:
                <input id="password" type="password" name="password" value=""/>
            </td>
        </tr>
        <tr>
            <td>
                <button type="submit" >登录</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
