<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teQuan.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.MyPrivilege.teQuan" %>

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
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" type="text/css" href="css/cardBind.css" />
    <link rel="stylesheet" type="text/css" href="css/forgetPassword.css" />
    <title>我的特权</title>
</head>
<body>
    <div class="card-bind vr">
        <div class="cb-header">
            <img class="img-100" src="images/tc-01.jpg" />
        </div>
        <div class="cb-body">
            <ul class="cd-ul-01">
                <li style="width: 100%;">
                    <input class="cb-input cb-input-phone" type="tel" placeholder="请输入注册手机号码" /></li>
            </ul>
            <div class="cb-bg clear"></div>
            <ul class="cd-ul-01">

                <li>
                    <input hidden="hidden" value="" id="yzmhid" /><input class="cb-input cb-input-dxyzm" type="text" placeholder="请输入获取的短信验证码" /></li>
                <li>
                    <button class="cd-btn-hqyzm" type="button">获取验证码</button></li>
            </ul>
            <div class="cb-bg clear"></div>
            <p class="cb-ts"></p>
            <div class="text-center">
                <button class="cb-btn-next">查看我的特权</button>
            </div>

            <a href="#">
                <img class="img-100" style="margin-top: 20px;" src="images/tc-02.jpg" /></a>
        </div>

        <!--
        	作者：648267773@qq.com
        	时间：2015-11-02
        	描述：.zzc：遮罩层
        -->
        <div class="zzc"></div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-11-02
        	描述：.public-tc-ts:弹窗提示
        -->
        <div class="public-tc-ts">
            <div class="public-tc-ts-father">
                <div class="text-center">
                    <button class="public-tc-ts-close"></button>
                </div>
                <h1>这里是标题</h1>
                <p>
                    这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容
        			这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容这里是注意的内容
                </p>
            </div>
        </div>
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <%--<script src="js/public.js" type="text/javascript" charset="utf-8"></script>--%>
    <script type="text/javascript">
        $(function () {
            //倒计时函数
            var timeZero = 0;
            var clickClass = 'btn-disable';
            function getTime() {
                timeZero++;
                var timeVal = 90,	//间隔秒速
				  thisVal = $('.cd-btn-hqyzm');
                var changeVal = timeVal - timeZero + 's';
                thisVal.html(changeVal);
                if (timeZero == timeVal) {
                    thisVal.html('获取验证码');
                    timeZero = 0;
                    clearTimeout(changeTime)
                    thisVal.removeClass(clickClass);
                }

            }

            //点击“获取验证码”按钮验证
            $('.cd-btn-hqyzm').on('click', function () {
                debugger;
                var _phone = $('.cb-input-phone'),
					_tpyzm = $('.cb-input-tpyzm'),
					gs = /^1\d{10}$/,
					ts = $('.cb-ts'),
					ts_02 = '手机号码不能为空',
					ts_04 = '图片验证码错误',
					ts_05 = '手机号码格式错误';


                //手机号码不能为空
                if (_phone.val() == '') {
                    ts.html(ts_02);
                }
                    //手机号码格式错误
                else if (!gs.test(_phone.val())) {
                    ts.html(ts_05);
                }
                    //成功
                else {
                    //可点击

                    //倒计时函数
                    var rad = Math.random();
                    var submitData = {
                        sid: "<%=sid%>",
                        wid: "<%=wid%>",
                        openid: "<%=openid%>",
                        mobile: _phone.val(),
                        rad: rad
                    };
                    $.post('/weixin/ucard/ucardprocess.ashx?myact=sendmsg', submitData,
                    function (data) {
                        debugger;
                        if (data.ret == "succ") {
                            ts.html('');
                            $("#yzmhid").val(data.yzm);
                            $(this).addClass(clickClass);
                            //倒计时函数
                            changeTime = setInterval(getTime, 1000);
                        } else {
                            ts.html(data.msg);
                        }
                    },
                    "json");


                }
                /*
                ts.html('');
                alert('获取短信验证码:1234');
                */
            });


            //点击“下一步”按钮验证
            $('.cb-btn-next').on('click', function () {
                ts = $('.cb-ts');
                var yzm = $("#yzmhid").val();
                if (yzm == $(".cb-input-dxyzm").val()) {
                    $.ajax({
                        url: "../LSYueLiang/Handler1.ashx",
                        dataType: 'json',
                        async: false,
                        data: { "Method": "Login", "Mobile": $('.cb-input-phone').val() },
                        success: function (data) {
                            if (parseInt(data.result) == 1) {
                                ts.html("用户未注册，请先注册");
                            }
                            else {
                                window.location.href = "tqNav.aspx?mobile=" + $('.cb-input-phone').val();
                            }
                        }
                    })
                }
                else {
                    ts.html("验证码错误");
                }


            });

        })
    </script>
</body>
</html>
