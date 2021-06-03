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
    <title>首页</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            border: none;
        }
        li{
            list-style: none;
        }
        .w{
            width: 1460px;
            margin: 0 auto;
        }
        a{
            color: black;
            text-decoration: none;
        }
        .fl{
            float: left;
        }
        .fr{
            float: right;
        }
        header{
            height: 55px;
        }
        .head{
            margin-left: 200px;
        }
        .head li{
            line-height: 40px;
            padding: 10px;
            text-align: inherit;
        }
        .head a{
            color: #d5d4d4;
        }
        .bd{
            border-bottom: #d1cfcf solid 2px;
        }
        .second{
            height: 80px;
            padding-top: 50px;
            width: 980px;
            margin-left: 250px;
        }
        .thrst{
            height: 30px;
            padding-top: 30px;
            width: 900px;
            margin-left: 250px;
        }
        .fouth{
            height: 80px;
            margin-top: 30px;
            padding-left: 200px;
            margin-left: 50px;
            padding-bottom: 70px;
        }
    </style>
</head>
<body>
<header class="bd w">
    <div>
        <ul class="head">
            <li class="fl" style="font-size: 20px;"><a style="color: #121212;" href="Homepage.jsp">603创新实验室</a></li>
            <li class="fl"><a style="color: #121212;" href="Homepage.jsp">首页</a></li>
            <li class="fl"><a href="Fouth.jsp">问答</a></li>
            <li class="fl"><a href="Fouth.jsp">博客</a></li>
            <li class="fl"><a href="Fouth.jsp">资源库</a></li>
            <li class="fl"><a href="Fouth.jsp">公告</a></li>
            <form class="fr" action="Homepage" method="post"style="padding-top: 20px;margin-right: 100px;">
                <button style="background-color: #00aaff;color: #FFFFFF; border-radius: 5px;padding: 3px;">
                    <a href=""><%=session.getAttribute("uname")%></a>
                </button>
            </form>
        </ul>
    </div>
</header>
<div class="second fl">
    <li class="fl" style="font-size: 50px;">603小社区</li><br><br>
    <li class="fl" style="font-size: 20px;margin-left: 30px;">仅供实验室内部人员使用，打造属于自己的小圈子！</li>
</div>
<div class="thrst fl">
    <li>603小社区致力于帮助更多在学习编程路上的小伙伴解决学习问题，提供高质量的教程，输出高质量的博文,在这里你可以交到很多朋友,学习到更多的知只即使再小的帆也能远航!</li>
</div>
<div class="fouth fl w ">
    <button type="button"style="width: 140px;height: 50px;background-color: #00aaff;border-radius: 5px;color: #FFFFFF;font-size: 16px;">
        <a href="Fouth.jsp">了解更多>></a>
    </button>
</div>
</body>
</html>
