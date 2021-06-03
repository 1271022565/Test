<%--
  Created by IntelliJ IDEA.
  User: 李乐乐
  Date: 2021/5/31
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>注册界面</title>
    <style>
        body{
            background: url("002.jpg") no-repeat center center;
            background-size:cover;
            background-attachment:fixed;
        }
        .end{
            position: absolute;
            left: 46%;
        }
    </style>
</head>
<body>
<div style="text-align: center;padding-top: 50px;">
    <form action="ZC" method="post">
        <h2 style="color: red;">注册</h2>
        <input type="text" placeholder="账号：" name="number" style="width: 250px; height: 30px;margin: 5px;"><br>
        <input type="password" placeholder="密码：" name="password1" style="width: 250px; height: 30px;margin: 5px;"><br>
        <input type="password" placeholder="再次确定密码：" name="password2"style="width: 250px; height: 30px;margin: 5px;"><br>
        <span id="msg" style="font-size: 12px;color: red"></span><br>
        <button style="width: 200px;height: 30px;">注册</button><br>
        <li style="list-style: none;"><a style="text-decoration: none; color: cadetblue;font-size: 12px;" href="Login.jsp">已有账号，点击登录！</a></li><br>
        <%if(request.getAttribute("msg")==null){
        %><span style="color: red;font-size: 12px"></span>
        <%
            }else {
        %>
        <span style="color: red;font-size: 12px">123123213123</span>
        <% }%>
    </form>
</div>
<div class="end fl">
    <li style="text-align: center; font-size: 12px;list-style: none;color: red">&#169 603创新实验室</li>
</div>
</body>
</html>
