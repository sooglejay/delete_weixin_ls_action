﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="video.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.yueliang.video" %>

<!DOCTYPE html>
<html style="background-color: black;">

<head lang="en">
    <meta charset="UTF-8">
    <!-- 使用最新的ie内核渲染 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 移动设备优先, 禁止缩放 -->
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1,maximum-scale=1, user-scalable=no">
    <!-- 国产浏览器(360)使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" href="css/detail.css" />
    <link rel="stylesheet" type="text/css" href="css/hdgz.css" />

    <title>视频</title>

</head>

<body style="background-color: black;">
    <video width="100%" height="100%" controls="controls" autoplay="autoplay">
        <source src="<%=url %>" type="video/mp4" />
    </video>
    <div class="text-center">
        <a href="Javascript:history.go(-1)">
            <button class="hdgz-btn">返回首页</button></a>
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>


</body>

</html>
