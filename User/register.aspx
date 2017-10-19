<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.User.register" %>

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
    <link rel="stylesheet" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/memberCenterPhone.css" />
    <title>注册送流量</title>
</head>
<body>
    <div class="member-center-phone vr">
        <div class="mcp-header">
            <img class="img-100" src="images/index-img-01.jpg" />
        </div>
        <div class="cb-body">
            <div class="mcp-phone-div text-center">
                <input class="cb-input cb-input-phone" type="tel" placeholder="请输入需要您的手机号码" />
            </div>
            <ul class="cd-ul-01">
                <li>
                    <input class="cb-input cb-input-dxyzm" type="text" placeholder="请输入短信验证码" /></li>
                <li>
                    <button class="cd-btn-hqyzm" type="button">获取验证码</button></li>
            </ul>
            <div class="cb-bg clear"></div>
            <div class="mcp-phone-div text-center">
                <input class="cb-input cb-input-more" type="tel" placeholder="推荐人联系方式（可不填）" />
            </div>
            <p class="cb-ts"></p>
            <div class="text-center">
                <button class="cb-btn-next">确定</button>
            </div>
        </div>
        <div class="cb-footer">
            <h1>活动规则</h1>
            <ul>
                <li><span>新用户注册“凉山移动”微信公众号即可获赠50流量币；</span></li>
                <li><span>注册用户可在“天天领流量”页面通过每日签到和转发获取更多流量币，每100流量币可在“流量币兑换”页面兑换成100M流量包；</span></li>
                <li><span>流量包仅限凉山移动用户兑换使用。</span></li>
            </ul>
        </div>


    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/public.js" type="text/javascript" charset="utf-8"></script>
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
                var _phone = $('.cb-input-phone'),
					gs = /^1\d{10}$/,
					ts = $('.cb-ts'),
					ts_02 = '手机号码不能为空',
					ts_05 = '手机号码格式错误';

                //手机号码不能为空
                if (_phone.val() == '') {
                    ts.html(ts_02);
                }
                    //手机号码格式错误
                else if (!gs.test(_phone.val())) {
                    ts.html(ts_05);
                }
                else {
                    ts.html('');
                    //判断是否间隔时间
                    //可点击
                    if (!$(this).hasClass(clickClass)) {

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
                            if (data.ret == "succ") {
                                $("#btncode").attr("disabled", "disabled");
                                changeTime = setInterval(getTime, 1000);
                                $(this).addClass(clickClass);
                            } else {
                                ts.html(data.msg);
                            }
                        },
                        "json");


                    }
                        //不可点击
                    else {

                    }
                }

            });


            //点击“确定”按钮验证
            $('.cb-btn-next').on('click', function () {

                var _dxyzm = $('.cb-input-dxyzm'),
					ts = $('.cb-ts'),
					ts_06 = '短信验证码错误';

                //手机验证码错误
                if ($('.cb-input-phone').val() == '') {
                    ts.html(ts_02)
                }
                    //成功
                else {
                    var rad = Math.random();
                    var submitData = {
                        sid: "<%=sid%>",
                        wid: "<%=wid%>",
                        openid: "<%=openid%>",
                        truename: $('.cb-input-phone').val(),
                        tel: $('.cb-input-phone').val(),
                        code: _dxyzm.val(),
                        Addr: "<%=Name%>",
                        email:"<%=email%>",
                        id: 4,
                        recondtel: $(".cb-input-more").val() == "请输入推荐人手机号码" ? "0" : $(".cb-input-more").val(),
                        rad: rad
                    };
                    $.post('/weixin/ucard/ucardprocess.ashx?myact=userreg', submitData,
                    function (data) {
                        debugger;
                        if (data.ret = "succ" && document.referrer.indexOf('qiandao') > 0) {
                            alert("注册成功,恭喜你获得50流量币,立即兑换流量吧！")
                            location = "http://juzhen.sdtzcd.com/weixin/ucard/qiandao.aspx?sid=" +<%=sid%> + "&wid=" + <%=wid%> + "&openid=" + '<%=openid%>';
                        }
                        else if (data.ret = "succ" && document.referrer.indexOf('SNAction/RedEnvelope/index') > 0) {
                            location = "http://juzhen.sdtzcd.com/weixin/SNAction/RedEnvelope/index.aspx?sid=" +<%=sid%> + "&wid=" + <%=wid%> + "&openid=" + '<%=openid%>';
                        }
                        else if (data.ret = "succ" && document.referrer.indexOf('LSAction/LSZhuanPan/index') > 0) {
                            location = "http://juzhen.sdtzcd.com/weixin/LSAction/LSZhuanPan/index.aspx?sid=" +<%=sid%> + "&wid=" + <%=wid%> + "&openid=" + '<%=openid%>';
                        }
                        else if (data.ret = "succ" && document.referrer.indexOf('LSAction/yueliang') > 0) {
                            location = "http://juzhen.sdtzcd.com/weixin/LSAction/yueliang/game.aspx?sid=" +<%=sid%> + "&wid=" + <%=wid%> + "&openid=" + '<%=openid%>';
                              }
                        else if (data.ret = "succ") {
                            alert("注册成功!");
                            location = "http://juzhen.sdtzcd.com/weixin/ucard/index.aspx?sid=" +<%=sid%> + "&wid=" + <%=wid%> + "&openid=" + '<%=openid%>';
                        }
                        else if (data.ret = "success") {
                            alert("修改注册信息成功");
                        }
                        else {
                            ts.html(data.msg);
                        }
                    }, "json");
                }
            });

        })
    </script>
</body>
</html>
