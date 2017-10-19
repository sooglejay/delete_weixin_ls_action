﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSZhuanPan.index" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <!-- 使用最新的ie内核渲染 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 移动设备优先, 禁止缩放 -->
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1,maximum-scale=1, user-scalable=no">
    <!-- 国产浏览器(360)使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <!-- 禁止识别为手机号码 -->
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <title>关注两会，体验互联网+产品</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <style>
        .g-content { width: 100%; background: #fbe3cc; height: auto; font-family: "微软雅黑", "microsoft yahei"; background-image: url("img/lottery/bg.png"); background-repeat: no-repeat; background-size: 100% 100%; }
            .g-content .g-lottery-case { width: 320px; min-height: 440px; margin: 0 auto; padding: 20px 0; }

                .g-content .g-lottery-case .g-left h2 { font-size: 20px; line-height: 32px; font-weight: normal; padding: 10px 20px; text-align: center; letter-spacing: 2px; }

                .g-content .g-lottery-case .g-left { }

        .g-lottery-box { width: 300px; height: 300px; margin: auto; position: relative; background: url(img/lottery/ly-plate-c.gif) no-repeat; background-size: 100% 100%; }

            .g-lottery-box .g-lottery-img { width: 260px; height: 260px; position: relative; background: url(img/lottery/bg-lottery.png) no-repeat; left: 20px; top: 20px; background-size: 100% 100%; }

            .g-lottery-box .playbtn { width: 88px; height: 88px; position: absolute; top: 86px; left: 86px; background: url(img/lottery/playbtn.png) no-repeat; background-size: 100% 100%; }
        .marquee-bg { background-image: url("img/lottery/gundong.png"); background-size: 100% 100%; width: 320px; height: 40px; box-sizing: border-box; padding: 0 10px 0 40px; }
        #marquee { position: relative; width: 100%; height: 100%; overflow: hidden; }
            #marquee ul { position: absolute; left: 0; top: 10px; height: 20px; overflow: hidden; line-height: 20px; }
            #marquee li { float: left; list-style: none; margin-right: 15px; }
        .img-01 { width: 80%; margin: auto; display: block; }
        .playnum { color: #ffe866; }
        .index-hdgz { color: white; line-height: 28px; text-align: center; font-size: 14px; text-decoration: underline; }
    </style>
</head>

<body>
    <div class="g-content">
        <div class="g-lottery-case">
            <div class="g-left">
                <%--<div class="marquee-bg">
                    <div id="marquee">
                        <ul>
                            <li>18200166593中奖手机一部</li>
                            <li>18200166593中奖手机一部</li>
                            <li>18200166593中奖手机一部</li>
                            <li>18200166593中奖手机一部</li>
                        </ul>
                    </div>
                </div>--%>

                <img class="img-01" src="img/lottery/H1.png" alt="" />
                <div class="g-lottery-box">
                    <div class="g-lottery-img">
                        <a class="playbtn" href="javascript:;" title="开始抽奖"></a>
                    </div>
                </div>
                <h2>您今天还有<span class="playnum"></span>次机会</h2>

            </div>
        </div>

    </div>
    <script src="js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="js/jquery.rotate.min.js"></script>
    <script>
        //window.onload = function () {
        //    var timer = null;
        //    var speed = -1;
        //    var od = document.getElementById("marquee");
        //    var au = od.getElementsByTagName('ul')[0];
        //    var ali = au.getElementsByTagName('li');
        //    au.innerHTML = au.innerHTML + au.innerHTML;
        //    au.style.width = ali[0].offsetWidth * ali.length + 'px';
        //    timer = setInterval(move, 30);
        //    function move() {
        //        if (au.offsetLeft < -au.offsetWidth / 2) {
        //            au.style.left = '0';
        //        }
        //        if (au.offsetLeft > 0) {
        //            au.style.left = -au.offsetWidth / 2 + 'px';
        //        }
        //        au.style.left = au.offsetLeft + speed + 'px';
        //    }
        //    od.onmouseover = function () {
        //        clearInterval(timer);
        //    };
        //    od.onmouseout = function () {
        //        timer = setInterval(move, 30)
        //    };
        //    document.getElementById("btn1").onclick = function () {
        //        speed = -4;
        //    };
        //    document.getElementById("btn2").onclick = function () {
        //        speed = 4;
        //    }
        //};

        $(function () {

            var $btn = $('.playbtn');
            var playnum = parseInt('<%=isjoin %>'); //初始次数，由后台传入
            $('.playnum').html(playnum);
            var isture = 0;
            var clickfunc = function (ddd) {
                debugger;
                //var data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
                //data为随机出来的结果，根据概率后的结果
                //data = data[Math.floor(Math.random() * data.length)];


                //指定获奖结果
                //data = 3;
                switch (ddd) {
                    case "脱贫攻坚体验劵":
                        rotateFunc(1, 0, '恭喜您获得“脱贫攻坚体验劵” 一张');
                        break;
                    case "习总书记系列图书":
                        rotateFunc(2, 36, '恭喜您获得“习总书记系列图书”');
                        break;
                    case "物联网-手机看家（和目）":
                        rotateFunc(3, 72, '恭喜您获得“物联网-手机看家（和目）”');
                        break;
                    case "物联网-儿童看护（腕表）":
                        rotateFunc(4, 108, '恭喜您获得“物联网-儿童看护（腕表）”');
                        break;
                    case "物联网—老年关爱（找TA）":
                        rotateFunc(5, 144, '恭喜您获得“物联网—老年关爱（找TA）”');
                        break;
                    case "物联网—爱车监控":
                        rotateFunc(6, 180, '恭喜您获得“物联网—爱车监控”');
                        break;
                    case "物联网—无线办公（MIFI）":
                        rotateFunc(7, 216, '恭喜您获得“物联网—无线办公（MIFI）”');
                        break;
                    case "百兆移动光宽带":
                        rotateFunc(8, 252, '恭喜您获得“百兆移动光宽带”');
                        break;
                    case "4G流量(1G)":
                        rotateFunc(9, 288, '恭喜您获得“4G流量(1G)”');
                        break;
                    case "谢谢参与":
                        rotateFunc(9, 324, '谢谢参与');
                        break;
                }
            };
            $btn.click(function () {
                if (isture) return; // 如果在执行就退出
                isture = true; // 标志为 在执行
                //先判断是否登录,未登录则执行下面的函数
                if ("1" == "<%=isBind%>") {
                    $('.playnum').html('0');
                    alert("您还未绑定，请点击确认后跳到绑定页面绑定哦~");
                    window.location.href = "../User/register.aspx?wid=<%=wid%>&sid=<%=sid%>&openid=<%=openid%>";
                    isture = false;
                } else {//登录了就执行下面
                    if (playnum > 0) { //当抽奖次数为0的时候执行
                        $.ajax({
                            url: "../LSYueLiang/Handler1.ashx",
                            dataType: 'json',
                            async: false,
                            data: { "Method": "ChouJiang", "openid": "<%=openid%>" },
                            success: function (data) {
                                debugger;
                                playnum = playnum - 1;
                                if (playnum <= 0) { //当抽奖次数为0的时候执行
                                    if (data.Name == "谢谢参与") {
                                        clickfunc(data.Name);
                                        //alert("十分感谢您的参与，下期活动更多大奖等着你哦")
                                    }
                                    else {
                                        clickfunc(data.Name);
                                        //alert("恭喜您获得 " + data.Name + "");
                                    }
                                    $('.playnum').html(0);
                                    isture = false;
                                }
                                if (playnum <= 0) {
                                    playnum = 0;
                                }
                                $('.playnum').html(playnum);
                                //clickfunc(data.Name);
                            }
                        })
                    }
                    else {
                        if ("<%=PName.Trim().ToString()%>" == "谢谢参与") {
                            alert("十分感谢您的参与，下期活动更多大奖等着你哦")
                        }
                        else {
                            alert("您已参与过本活动获得 <%=PName.Trim().ToString()%> 哦");
                        }
                    }
                }
            });
            var rotateFunc = function (awards, angle, text) {
                isture = true;
                $btn.stopRotate();
                $btn.rotate({
                    angle: 0,
                    duration: 4000, //旋转时间
                    animateTo: angle + 1440, //让它根据得出来的结果加上1440度旋转
                    callback: function () {
                        isture = false; // 标志为 执行完毕
                        alert(text);
                    }
                });
            };
        });
		</script>
</body>

</html>
