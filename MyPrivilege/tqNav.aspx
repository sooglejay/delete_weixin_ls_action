﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tqNav.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.MyPrivilege.tqNav" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <!-- 使用最新的ie内核渲染 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 移动设备优先, 禁止缩放 -->
    <meta name="viewport"
        content="width=device-width, initial-scale=1,minimum-scale=1,maximum-scale=1, user-scalable=no">
    <!-- 国产浏览器(360)使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" type="text/css" href="css/tqNav.css" />
    <title>我的特权</title>
</head>
<body>
    <div class="nav">
        <h1 class="nav-h1"><%=mobile %></h1>
        <h2 class="nav-h2">绑定号码</h2>
        <div class="nav-body">
            <% foreach (var item in list)
               { %>
            <div class="nb-div">
                <img src="images/more-01.png" alt="" />
                <h1><%=item.ActionName %></h1>
                <p><%=item.Content %></p>
                <h2>时间：<%=item.Statetime.ToString("yyyy-MM-dd") %>--<%=item.EndTime.ToString("yyyy-MM-dd") %></h2>
                <div class="nb-line"></div>
            </div>
            <% }%>
        </div>
        <a href="#">
            <img class="img-100" style="margin-top: 20px;" src="images/tc-02.jpg" /></a>

    </div>

</body>
</html>
