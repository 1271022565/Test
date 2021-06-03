<%--
  Created by IntelliJ IDEA.
  User: 李乐乐
  Date: 2021/6/3
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404页面</title>
</head>
<style>
    .pic{
        width: 100%;
        height: 480px;
        text-align: center;
        margin: 0 auto;
    }
    .btn{
        text-align: center;
        margin: 0 auto;
    }
    .btn button{
        width: 200px;
        height: 30px;
        background-color: #00aaff;
        color: #FFFFFF;
    }
</style>
<body>
<div class="pic">
    <img src="404pic.jpg" alt="">
</div>
<div class="btn">
    <form action="Mistake" method="post">
        <button>返回主页</button>
    </form>
</div>
</body>
</html>
