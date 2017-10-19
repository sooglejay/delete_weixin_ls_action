﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.duanwuDZP.index" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>抽奖</title>
    <meta charset="utf-8">

    <!-- 使用最新的ie内核渲染 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- 移动设备优先, 禁止缩放 -->
    <meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1,maximum-scale=1, user-scalable=no">
    <!-- 国产浏览器(360)使用webkit内核 -->
    <meta name="renderer" content="webkit">
    <!-- 禁止识别为手机号码 -->
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" href="css/guanZhu.css" type="text/css">
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <style>
		</style>
</head>


<body>
    <!--
    	作者：648267773@qq.com
    	时间：2017-04-24
    	描述：.yzm-number:验证码,默认为1234
		.bind-number: 0:未绑定，1，已绑定
    -->
    <input type="hidden" class="yzm-number" value="1234" />
    <input type="hidden" class="bind-number" value="0" />

    <div class="g-content">
        <div class="g-lottery-case">
            <div class="g-left">
                <img class="img-100" src="img/lottery/h1.png" alt="">
                <div class="g-lottery-box">
                    <div class="g-lottery-img">
                        <a class="playbtn" href="javascript:;" title="开始抽奖"></a>
                    </div>
                </div>
                <h2>您今天还有<span class="playnum"></span>次机会</h2>

                <div class="active-hdgz">
                    <p>
                        活动规则
						
                        <br />
                        1、话费流量奖励仅限凉山移动用户；
						
                        <br />
                        2、话费奖励将于6月15日前到账；
						
                        <br />
                        3、流量奖励将流量券形式下发，请下载“四川移动和生活”客户端，进入底部菜单“我的”-“卡券”进行激活使用。流量券仅限中奖当月激活，激活流量当月省内使用有效；
						
                        <br />
                        4、粽子兑换券仅可在西昌佳佳超市使用，客户凭中奖截图至西昌航天路营业厅领取，领取后可到西昌市内佳佳超市使用。领取时间截止6月5日，过期未领取作废。
					
                    </p>
                </div>


                <div style="height: 100px;"></div>

            </div>
        </div>
    </div>

    <button type="button" class="btn-bind btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="display: none">绑定</button>
    <div class="modal modal-zp fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-content-zp">
                <div class="modal-header" style="border: none">
                    <button style="color: white; opacity: 1" type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <div class="public-tc-father tjbd">
                        <div class="public-tc">
                            <h1 class="index-tc-h1">绑定账号抽大奖</h1>
                            <input class="gz-input gz-phone" type="text" placeholder="请输入手机号码">
                            <div class="div-yz">
                                <input class="gz-input gz-yz fl" type="text" placeholder="请输入验证码">
                                <button class="gz-btn btn-yz fr ">获取验证码</button>
                                <div class="clear"></div>
                                <p class="gz-ts"></p>
                            </div>
                            <button class="public-btn-tjsb gz-btn btn-sub" type="submit">绑定账号</button>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="js/jquery.rotate.min.js"></script>
    <script>
        var result = 10;
        $(function () {

            var $btn = $('.playbtn');
            var playnum = 1; //初始次数，由后台传入
            $('.playnum').html(playnum);
            var isture = 0;
            var clickfunc = function () {
                var data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
                //data为随机出来的结果，根据概率后的结果
                data = data[Math.floor(Math.random() * data.length)];
                //指定获奖结果
                data = result;
                switch (data) {
                    case 1:
                        rotateFunc(1, 36, '10元粽子兑换券');
                        break;
                    case 2:
                        rotateFunc(2, 70, '下次继续');
                        break;
                    case 3:
                        rotateFunc(3, 108, '50元粽子兑换券');
                        break;
                    case 4:
                        rotateFunc(4, 145, '50M流量');
                        break;
                    case 5:
                        rotateFunc(5, 170, '下次继续');
                        break;
                    case 6:
                        rotateFunc(6, 195, '5元粽子兑换券');
                        break;
                    case 7:
                        rotateFunc(7, 225, '10元话费');
                        break;
                    case 8:
                        rotateFunc(8, 260, '100M流量');
                        break;
                    case 9:
                        rotateFunc(9, 305, '20元粽子兑换券');
                        break;
                    case 10:
                        rotateFunc(10, 340, '200M流量');
                        break;
                }
            };
            $btn.click(function () {
                var bindNum = $('.bind-number').val();
                if (bindNum == '0') {
                    $('.btn-bind').click();
                }
                else if (bindNum = '1') {
                    if (isture) return; // 如果在执行就退出
                    isture = true; // 标志为 在执行
                    //先判断是否登录,未登录则执行下面的函数
                    if (1 == 2) {
                        $('.playnum').html('0');
                        alert("请先登录");
                        isture = false;
                    } else { //登录了就执行下面
                        if (playnum <= 0) { //当抽奖次数为0的时候执行
                            alert("没有次数了");
                            $('.playnum').html(0);
                            isture = false;
                        } else { //还有次数就执行
                            playnum = playnum - 1; //执行转盘了则次数减1
                            if (playnum <= 0) {
                                playnum = 0;
                            }
                            $('.playnum').html(playnum);
                            clickfunc();
                        }
                    }
                }
                else {
                    alert('数据错误，请重新登录')
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



            //计时90S
            var fisrtNumber = 90;
            var endNum = fisrtNumber;
            var pageTimer = {}; //定义计算器全局变量

            //点击获取验证码
            $('.btn-yz').on('click', function () {

                for (var each in pageTimer) {
                    clearInterval(pageTimer[each]);
                }

                var phone = $('.gz-phone');
                var myreg = /^0?1[3|4|5|8][0-9]\d{8}$/;
                var ts = $('.gz-ts');
                endNum = fisrtNumber;
                if (!myreg.test(phone.val())) {
                    ts.html('手机号码格式不正确！');
                }
                else {
                    //设置定时器
                    pageTimer["timer1"] = setInterval(endtime, 1000);
                    ts.html('');
                    //判断是否间隔时间
                    //可点击

                    //倒计时函数
                    var rad = Math.random();
                    var submitData = {
                        sid: "12",
                        wid: "47",
                        openid: "123",
                        mobile: phone.val(),
                        rad: rad
                    };
                    $.post('/weixin/ucard/ucardprocess.ashx?myact=sendmsg', submitData,
                    function (data) {
                        if (data.ret == "succ") {

                        } else {
                            ts.html(data.msg);
                        }
                    },
                    "json");
                }

            })
            //倒计时函数
            var endtime = function endTime() {
                var btnYZ = $('.btn-yz');
                if (endNum > 0) {
                    btnYZ.html(endNum - 1 + 's')
                    btnYZ.attr("disabled", true);
                    endNum--;
                }
                else {
                    btnYZ.html('获取验证码')
                    btnYZ.attr("disabled", false);

                }

            }

            //点击绑定账号弹出页面
            $('.btn-sub').on('click', function () {
                var phone = $('.gz-phone');
                var inputYZ = $('.gz-yz');
                var ts = $('.gz-ts');
                if (inputYZ.val() != "") {
                    ts.html('');

                    var rad = Math.random();
                    var submitData = {
                        sid: "12",
                        wid: "47",
                        tel: phone.val(),
                        code: inputYZ.val(),
                        rad: rad,
                        ActionSource: "端午大转盘"
                    };
                    $.post('/weixin/ucard/ucardprocess.ashx?myact=duanwudzp', submitData,
                         function (data) {
                             debugger;
                             if (data.ret == "succ") {
                                 result = parseInt(data.result);
                                 $('.playnum').html(0);
                                 $('.close').click();
                                 //改变登录状态值
                                 $('.bind-number').val('1');
                             }
                             else {
                                 alert(data.msg);
                             }
                         }, "json");
                }
                else {
                    ts.html('验证码不能为空');
                }

            });
        });
		</script>
</body>

</html>
