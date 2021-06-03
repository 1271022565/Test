<%--
  Created by IntelliJ IDEA.
  User: 李乐乐
  Date: 2021/5/31
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>登录界面</title>
    <style>
        input{
            width: 250px; height: 30px;margin: 5px;
        }
        body{
            background: url("001.jpg")no-repeat center center;
            background-size:cover;
            /*固定背景影像*/
            background-attachment:fixed;
        }
        .fl{
            float: left;
        }
        .end{
            position: absolute;
            left: 46%;
        }
    </style>
</head>
<body>
<div style="text-align: center; padding-top: 30px">
    <form action="login" method="post">
        <h2>登录</h2>
        <input type="text" name="number" placeholder="账号："><br>
        <input type="password" name="password" placeholder="密码："><br>
        <span id="msg" style="font-size: 12px;color: red"></span><br>
        <button style="width: 200px;height: 30px;">登录</button><br>
        <li style="list-style: none;"><a style="text-decoration: none; color:#4c1aef;" href="ZC.jsp">没有账号，点击注册！</a></li><br>
        <span style="color: red;font-size: 12px"><%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%></span>
    </form>
</div>
<div class="end fl">
    <li style="text-align: center; font-size: 12px;list-style: none;">&#169 603创新实验室</li>
</div>
</body>
</html>

