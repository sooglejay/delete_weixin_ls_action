<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.PreferentialQuery.index" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <!-- 使用最新的ie内核渲染 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 移动设备优先, 禁止缩放 -->
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1,maximum-scale=1, user-scalable=no">
    <!-- 国产浏览器(360)使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <!-- 禁止识别为手机号码 -->
    <meta name="format-detection" content="telephone=no" />
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <title>凉山优惠查询</title>
    <style type="text/css">
		
	</style>
</head>
<body>
    <div class="preferential-query">
        <img class="img-100" src="images/pq_index_01.jpg" alt="" />
        <div class="pq-body">
            <input class="pq-input" type="text" placeholder="请输入您要查询的号码" />
            <button class="pq-btn" type="button">点击查询</button>
            <div class="pq-show-div">
                <div class="pq-show-first pq-active">
                    <p>
                        关于一些活动简单说明<br />
                        点击查询后出现
                    </p>
                </div>
                <div class="pq-show-true">
                    <%--<h1>查询结果</h1>
                    <p>这些是打死大帝大大实打实大大爱上谁孤独鳏寡</p>
                    <p>这些是打死大帝大大实打实大大爱上谁孤独鳏寡</p>
                    <p>这些是打死大帝大大实打实大大爱上谁孤独鳏寡</p>--%>
                </div>
                <div class="pq-show-false">
                    <p>未找到该手机号对应的信息</p>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-2.1.3.min.js"></script>
    <script>
        $(function () {
            $('.pq-btn').on('click', function () {
                var pqinput = $('.pq-input'),
                    showDiv = $('.pq-show-div'),
                    showClass = 'pq-active';
                //空
                if (pqinput.val() == '请输入您要查询的信息') {
                    showDiv.children().eq(0).addClass(showClass).siblings().removeClass(showClass);
                }
                else {
                    $.ajax({
                        url: "../LSYueLiang/Handler1.ashx",
                        dataType: 'json',
                        type: "POST",
                        async: false,
                        data: { "Method": "YHCX", "Mobile": pqinput.val() },
                        success: function (data) {
                            if (data.length > 0) {
                                var html = "<h1>查询结果</h1>";
                                debugger;
                                for (var i = 0; i < data.length; i++) {
                                    html += "<p>" + data[i].Name + "</p>";
                                }
                                $(".pq-show-true").html(html);
                                showDiv.children().eq(1).addClass(showClass).siblings().removeClass(showClass);
                            }
                            else {
                                showDiv.children().eq(2).addClass(showClass).siblings().removeClass(showClass);
                            }
                        }
                    })
                }
            })
        })
    </script>
    )
</body>
</html>
