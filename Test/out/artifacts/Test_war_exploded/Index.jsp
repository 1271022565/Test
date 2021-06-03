<%--
  Created by IntelliJ IDEA.
  User: 李乐乐
  Date: 2021/5/31
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8" />
  <title>603小社区</title>
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
      width: auto;
      margin: 0px auto;
    }
    .thrst{
      left: 20%;
      height: 30px;
      padding-top: 30px;
      width: 900px;
      margin-left: 250px;
    }
    .fouth{
      left: 20%;
      height: 80px;
      margin-top: 30px;
      padding-left: 200px;
      margin-left: 50px;
      padding-bottom: 70px;
    }
    .fifth{
      height: 80px;
      margin-top: 30px;
      padding-left: 200px;
      margin-left: 50px;
      padding-bottom: 70px;
    }
    .six{
      position: absolute;
      left: 45%;
      bottom: 0%;
    }
  </style>
</head>
<body>
<header class="bd w ">
  <div>
    <ul class="head">
      <li class="fl" style="font-size: 20px;"><a style="color: #121212;" href="Index.jsp">603创新实验室</a></li>
      <li class="fl"><a style="color: #121212;" href="Index.jsp">首页</a></li>
      <li class="fl"><a href="Fouth.jsp">问答</a></li>
      <li class="fl"><a href="Fouth.jsp">博客</a></li>
      <li class="fl"><a href="Fouth.jsp">资源库</a></li>
      <li class="fl"><a href="Fouth.jsp">公告</a></li>
      <form class="fr" action="Index" method="post"style="padding-top: 20px;margin-right: 100px;">
        <button style="background-color: #00aaff;color: #FFFFFF; border-radius: 5px;padding: 3px;">
          登录
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
<div class="fouth fl w bd">
  <button type="button"style="width: 140px;height: 50px;background-color: #00aaff;border-radius: 5px;color: #FFFFFF;font-size: 16px;">
    <a href="Fouth.jsp">了解更多>></a>
  </button>
</div>
<div class="fifth w fl">
  <div class="fifth1 fl bd" style="width: 350px; padding-bottom: 40px;">
    <h2>问答</h2><br>
    <li>提供高质量的问答服务，致力于解决社区中小伙伴们遇到的问题，并给出解决方案,做到学有所伴,问有所答!</li><br>
    <button type="button" style="background-color: #999e9d;color: #FFFFFF; border-radius: 5px;padding: 8px;">
      <a href="Fouth.jsp">前往>></a>
    </button>
  </div>
  <div class="fifth2 fl bd" style="width: 350px;padding-left: 15px;padding-bottom: 40px;">
    <h2>博客</h2><br>
    <li>给社群小伙伴提供记录自己学习的地方，推出个人博客,优化博客样式，更加方便的管理和展现文章，同时优质的文章会被更多的人看到!</li><br>
    <button type="button" style="background-color: #999e9d;color: #FFFFFF; border-radius: 5px;padding: 8px;">
      <a href="Fouth.jsp">前往>></a>
    </button>
  </div>
  <div class="fifth3 fl bd" style="width: 350px;padding-left: 15px;padding-bottom: 40px;">
    <h2>教程</h2><br>
    <li>很多时候，小伙伴找不到具体的学习流程，导致浪费了很多的时间，所以列出教程给大家规划学习路线，让大家能够少走弯路，高效的学习!</li><br>
    <button type="button" style="background-color: #999e9d;color: #FFFFFF; border-radius: 5px;padding: 8px;">
      <a href="Fouth.jsp">前往>></a>
    </button>
  </div>
</div>
<div class="six fl">
  <li style="text-align: center; font-size: 14px;">&#169 603创新实验室</li>
</div>
</body>
</html>
