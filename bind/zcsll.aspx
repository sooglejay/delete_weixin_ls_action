<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zcsll.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.bind.zcsll" %>

<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <style title="2345AdBlockStyleSheet"></style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <title>注册送流量
    </title>
    <script src="zcsll/jquery-1.js"></script>
    <link href="zcsll/style.css" rel="stylesheet">
    <link href="zcsll/default.css" rel="stylesheet">
    <script src="zcsll/request.js"></script>
    <script src="zcsll/jweixin-1.js" type="text/javascript"></script>
    <style>
        .main, .footerdiv { width: 90%; margin: 0 auto; }
        .main { height: 150px; background-color: #FFFFFF; border-radius: 10px; }
            .main li { height: 50px; width: 100%; margin: 0 auto; padding: 0; }
        .li1 { border-radius: 10px 10px 0px 0px; }
        .li3 { border-radius: 0px 0px 10px 10px; }
        .user, .yzm, .recUser { font-size: 14px; }
        .user { height: 50px; width: 100%; border-radius: 10px 10px 0px 0px; border: none; border-bottom: 1px solid; border-bottom-color: #CCCCCC; }
        .yzm, .recUser { height: 50px; width: 70%; float: left; }
        .yzm { border-radius: 0px; border: none; border-bottom: 1px solid; border-bottom-color: #CCCCCC; }
        .recUser { border: none; /*border-radius: 10px;*/ border-radius: 0px 0px 0px 10px; }
        .sendyzm, .sub { width: 30%; height: 49px; float: left; margin: 0 auto; text-align: center; }
        .sendyzm { border-bottom: 1px solid; border-bottom-color: #CCCCCC; }
        .sendp, .subp { background-color: #4E2223; color: white; width: 90%; line-height: 35px; border-radius: 10px; margin: 0 auto; margin-top: 5px; font-size: 14px; }
        .footerdiv { color: #FFFFFF; margin-top: 20px; }
        .rule { font-size: 16px; font-weight: bold; }
        .footer { text-align: center; margin-top: 10px; color: #4e2223; font-size: 14px; }
        /*弹出框*/
        .tc { position: fixed; margin: auto; top: 0; right: 0; left: 0; bottom: 0; display: none; }
        .shade { background-color: #000; width: 100%; height: 100%; position: fixed; top: 0; left: 0; opacity: 0.7; filter: alpha(opacity=70); display: none; }

        .popup_weixin { width: 90%; height: 85%; padding-top: 20px; text-align: center; color: #cc0033; font-size: 16px; line-height: 30px; background-color: #fdfccc; border: 3px solid #7d0000; border-radius: 10px; }
            .popup_weixin img { border-radius: 10px; width: 85%; margin: 20px auto; }
            .popup_weixin .close img { margin: auto; }
    </style>
    <script>
        var browser = {
            versions: function () {
                var u = navigator.userAgent, app = navigator.appVersion;
                var ios = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/);
                var android = u.indexOf('Android') > -1 || u.indexOf('Linux') > -1;
                if (ios) { document.writeln("<meta name=\"viewport\" content=\"width=device-width,user-scalable=no\" \/>") }
            }(),
        }
        wx.config({
            debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
            appId: 'wx38e15bd8ae236a88', // 必填，公众号的唯一标识
            timestamp: '1470812358', // 必填，生成签名的时间戳
            nonceStr: 'rY4TiemPaZCqNS36', // 必填，生成签名的随机串
            signature: 'd03f31e059d3ef307eb6f45704eddf7c311050a6',// 必填，签名，见附录1
            jsApiList: ['onMenuShareTimeline', 'onMenuShareAppMessage'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2,按，隔开
        });

        wx.ready(function () {
            wx.onMenuShareTimeline({
                title: '注册有礼', // 分享标题
                link: 'http://yd.lmego.net/ls/Bind_16/index.aspx', // 分享链接
                imgUrl: 'http://yd.lmego.net/ls/Bind_16/images/bg.jpg', // 分享图标
                success: function () {
                },
                cancel: function () {
                }
            });
            wx.onMenuShareAppMessage({
                title: '注册有礼', // 分享标题
                desc: '注册得话费，推荐有惊喜', // 分享描述
                link: 'http://yd.lmego.net/ls/Bind_16/index.aspx', // 分享链接
                imgUrl: 'http://yd.lmego.net/ls/Bind_16/images/bg.jpg', // 分享图标
                success: function () {
                    // 用户确认分享后执行的回调函数
                },
                cancel: function () {
                    // 用户取消分享后执行的回调函数
                }
            });
        });
    </script>
   
</head>
<body>
    <div id="weather" style="position: relative;">
        <img src="zcsll/bg1.jpg">
        <div class="main">
            <nav>
                <ul>
                    <li class="li1">
                        <input value="" class="user" id="userphone" placeholder="请在此处填写您的真实手机号码" type="text">
                    </li>
                    <li class="li2" style="border-bottom-color: #FF0000;">
                        <input class="yzm" id="yzm" placeholder="输入验证码" type="text">
                        <div class="sendyzm">
                            <input class="sendp" value="获取验证码" type="button" id="btn_validate" />
                            <!--<a class="sendp" id="btn_validate">获取验证码</a>-->
                        </div>

                    </li>
                    <li class="li3">
                        <input style="background: rgb(204, 204, 204) none repeat scroll 0% 0%;" class="recUser" id="recMobile" placeholder="推荐人手机号码（可不填）" type="text">
                        <div class="sub">
                            <p class="subp" id="subUser">提交</p>
                            <!--<a class="subp">提交</a>-->
                        </div>
                    </li>

                </ul>

            </nav>
        </div>
        <div class="footerdiv">
            <p class="rule">活动规则：</p>
            <br>
            <p>1、新用户填写手机号码即可在次月获赠100MB流量，限赠送当月使用；</p>

            <p>2、流量仅限凉山移动号码领取，次月中旬前到账。</p>
            <br>

            <div class="footer">
                <p>*本活动最终解释权归“凉山移动”所有</p>
            </div>
        </div>


        <%if (isnewuser == 1)
          {%>
        <div class="popups">
            <div class="shade" style="display: none;"></div>
            <div class="tc popup_weixin">
                <p>
                    各位新用户~<br>
                    凉山移动喊你免费领话费啦！！！
                </p>
                <img src="zcsll/code.jpg">
                <p>
                    长按识别二维码关注凉山移动<br>
                    底部菜单【五彩凉山】-【绑定送话费】进入
                </p>

            </div>
        </div>
        <%} %>
        <!--弹窗 end-->
    </div>

    <script>
        function timeinfo() {
            debugger;
            if (time == 0) {
                $("#btn_validate").val("获取验证码")
                $("#btn_validate").removeAttr("disabled");
            }
            else {
                $("#btn_validate").val(time);
                time--;
                window.setTimeout("timeinfo()", 1000);
            }
        }

        $('#btn_validate').on('click', function () {
            var userPhone = $('#userphone').val(),
              regPhone = $('#recMobile').val(),
              gs = /^1\d{10}$/,
              code = $("#yzm").val();


            if (userPhone == "") {
                alert("请输入手机号");
            }
            else if (!gs.test(userPhone)) {
                alert("手机号码格式错误")
            }
            else {
                var rad = Math.random();
                var submitData = {
                    sid: "<%=sid%>",
                    wid: "<%=wid%>",
                    openid: "<%=openid%>",
                    mobile: userPhone,
                    rad: rad
                };
                $.post('/weixin/ucard/ucardprocess.ashx?myact=sendmsg', submitData,
                function (data) {
                    if (data.ret == "succ") {
                        $("#btn_validate").attr("disabled", "disabled");
                        time = 120;
                        timeinfo();
                    } else {
                        alert(data.msg);
                    }
                },
                "json");
            }
        })


        $('#subUser').on('click', function () {
        var userPhone = $('#userphone').val(),
          regPhone = $('#recMobile').val(),
          gs = /^1\d{10}$/,
          code = $("#yzm").val();

        if (userPhone == "") {
            alert("请输入手机号");
        }
        else if (!gs.test(userPhone)) {
            alert("手机号码格式错误")
        }
        else if (code == "") {
            alert("验证码不能为空");
        }
        else {
            var rad = Math.random();
            var submitData = {
                sid: "<%=sid%>",
                wid: "<%=wid%>",
                openid: "<%=openid%>",
                truename: userPhone,
                tel: userPhone,
                addr: "<%=Actions%>",
                code: code,
                id: 4,
                recondtel: regPhone == "请输入推荐人手机号码" ? "0" : regPhone,
                rad: rad
            };
            $.post('/weixin/ucard/ucardprocess.ashx?myact=userreg', submitData,
            function (data) {
                if (data.ret = "succ") {
                    alert("绑定成功")
                    }
                    else {
                        ts.html(data.msg);
                    }
                }, "json");
            }
    })
    </script>
</body>
</html>
