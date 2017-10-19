<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.Fupin.detail" %>

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
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
    <link rel="stylesheet" href="css/detail.css" />
    <link rel="stylesheet" type="text/css" href="css/fp.css" />
    <title>详细资料</title>
    <style>
        .dd-body h2 { text-align: center; }
        .dd-body p { text-indent: 2em; }
    </style>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script>
        wx.config({
            debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
            appId: '<%=wxmodel.appid%>', // 必填，公众号的唯一标识
            timestamp: '<%=wxmodel.timestamp%>', // 必填，生成签名的时间戳
            nonceStr: '<%=wxmodel.noncestr%>', // 必填，生成签名的随机串
            signature: '<%=wxmodel.signature%>',// 必填，签名，见附录1
            jsApiList: ['onMenuShareTimeline', 'onMenuShareAppMessage'] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2,按，隔开
        });
        wx.ready(function () {
            wx.onMenuShareTimeline({
                title: '倾听最动人的扶贫故事，参与投票赢100M流量', // 分享标题
                link: 'http://juzhen.sdtzcd.com/weixin/LSAction/Fupin/detailShare.aspx?pid=<%=pid%>', //分享链接
                imgUrl: 'https://mmbiz.qlogo.cn/mmbiz_png/TecufS2OuPyRguPOCx8miaPiaJKRtjP8BCpE5lvEI8q6Mv9yv2ibibnJzVT4wbib7Q426mQyInVGbnTJ0psibtZuicUrw/0?wx_fmt=png', // 分享图标
                success: function () {
                    console.log('<%=wxmodel.ticket%>');
                },
                cancel: function () {
                    //alert("取消");
                }
            });
            wx.onMenuShareAppMessage({
                title: '倾听最动人的扶贫故事，参与投票赢100M流量', // 分享标题
                desc: '倾听最动人的扶贫故事，参与投票赢100M流量', // 分享描述
                link: 'http://juzhen.sdtzcd.com/weixin/LSAction/Fupin/detailShare.aspx?pid=<%=pid%>', //分享链接
                imgUrl: 'https://mmbiz.qlogo.cn/mmbiz_png/TecufS2OuPyRguPOCx8miaPiaJKRtjP8BCpE5lvEI8q6Mv9yv2ibibnJzVT4wbib7Q426mQyInVGbnTJ0psibtZuicUrw/0?wx_fmt=png', // 分享图标
                success: function () {
                    //alert("成功");
                },
                cancel: function () {
                    //alert("取消");
                }
            });
        });
    </script>
</head>

<body>
    <!--
    	作者：648267773@qq.com
    	时间：2015-08-28
    	描述：参数说明
    	.last-number :剩余送票次数，默认是10
    	.tp-number :记录送票次数，默认是0
    -->
    <input class="last-number" type="hidden" value="<%=10-count %>" />
    <input class="tp-number" type="hidden" value="<%=count %>" />
    <div class="detail">
        <div class="dd-header">
            <h1><%=poormodel.Title %></h1>
            <%--<h2>这个是子标题</h2>
				<h3>这个是子标题</h3>--%>
            <div class="number-father">
                <div class="love-number"><%=poormodel.Count %></div>
                <div class="love-number-bg"></div>
            </div>
            <button class="game-btn-send" type="button">送票</button>
            <div class="clear"></div>

        </div>
        <div class="dd-body">
            <h2><%=poormodel.TheText1 %></h2>
            <p><%=poormodel.Content1 %></p>
            <h2><%=poormodel.TheText2 %></h2>
            <p><%=poormodel.Content2 %></p>
            <h2><%=poormodel.TheText3 %></h2>
            <p><%=poormodel.Content3 %></p>
            <h2><%=poormodel.TheText4 %></h2>
            <p><%=poormodel.Content4 %></p>
            <h2><%=poormodel.TheText5 %></h2>
            <p><%=poormodel.Content5 %></p>
            <h2><%=poormodel.TheText6 %></h2>
            <p><%=poormodel.Content6 %></p>
            <h2><%=poormodel.TheText7 %></h2>
            <p><%=poormodel.Content7 %></p>
            <h2><%=poormodel.TheText8 %></h2>
            <p><%=poormodel.Content8 %></p>
            <h2><%=poormodel.TheText9 %></h2>
            <p><%=poormodel.Content9 %></p>
            <h2><%=poormodel.TheText10 %></h2>
            <p><%=poormodel.Content10 %></p>
            <h2><%=poormodel.TheText11 %></h2>
            <p><%=poormodel.Content11 %></p>
            <h2><%=poormodel.TheText12 %></h2>
            <p><%=poormodel.Content12 %></p>
            <h2><%=poormodel.TheText13 %></h2>
            <p><%=poormodel.Content13 %></p>
            <h2><%=poormodel.TheText14 %></h2>
            <p><%=poormodel.Content14 %></p>
            <h2><%=poormodel.TheText15 %></h2>
            <p><%=poormodel.Content15 %></p>
            <h2><%=poormodel.TheText16 %></h2>
            <p><%=poormodel.Content16 %></p>

        </div>

        <footer class="detail-bottom">
            <button class="dd-btn dd-btn-share fl">帮TA拉票</button>
            <button class="dd-btn dd-btn-click dd-btn-tp fr">为TA投票</button>
        </footer>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：遮罩层
        -->
        <div class="zzc"></div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：继续送票
        -->
        <div class="public-tc jxtp">
            <p>
                <span>好人</span>，今天已送<span class="tc-color-01">9</span>票，<br>
                再送
				
                <span class="tc-color-02">9</span>票就有机会抽取大奖哦。
			
            </p>
            <div class="text-center">
                <button class="public-tc-btn public-btn-colse btn-jxtp">继续送票</button>
            </div>
        </div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：提示抽奖次数用完
        -->
        <div class="public-tc over">
            <p>
                今日送票次数已用完，</br>
					送票明天再来!
			
            </p>
            <div class="text-center">
                <button class="public-tc-btn public-btn-colse btn-gb">关闭</button>
            </div>
        </div>
    </div>
    <div class="footer-last-flower" style="top: 50px;">
        余投票<span class="last-flower-number">10</span>次
	
    </div>
    <img class="dd-img-share" src="images/share-01.png" />
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        (function ($) {
            $.extend({
                tipsBox: function (options) {
                    options = $.extend({
                        obj: null,  //jq对象，要在那个html标签上显示
                        str: "+1",  //字符串，要显示的内容;也可以传一段html，如: "<b style='font-family:Microsoft YaHei;'>+1</b>"
                        startSize: "12px",  //动画开始的文字大小
                        endSize: "30px",    //动画结束的文字大小
                        interval: 600,  //动画时间间隔
                        color: "red",    //文字颜色
                        callback: function () { }    //回调函数
                    }, options);
                    $("body").append("<span class='num'>" + options.str + "</span>");
                    var box = $(".num");
                    var left = options.obj.offset().left + options.obj.width() / 2;
                    var top = options.obj.offset().top - options.obj.height();
                    box.css({
                        "position": "absolute",
                        "left": left + "px",
                        "top": top + "px",
                        "z-index": 9999,
                        "font-size": options.startSize,
                        "line-height": options.endSize,
                        "color": options.color
                    });
                    box.animate({
                        "font-size": options.endSize,
                        "opacity": "0",
                        "top": top - parseInt(options.endSize) + "px"
                    }, options.interval, function () {
                        box.remove();
                        options.callback();
                    });
                }
            });
        })(jQuery);



        function addEvent(obj, type, handle) {
            try {  // Chrome、FireFox、Opera、Safari、IE9.0及其以上版本
                obj.addEventListener(type, handle, false);
            } catch (e) {
                try {  // IE8.0及其以下版本
                    obj.attachEvent('on' + type, handle);
                } catch (e) {  // 早期浏览器
                    obj['on' + type] = handle;
                }
            }
        }
        window.onload = function () {

            var btnTP = document.getElementsByClassName('dd-btn-tp')[0];
            var getTP = document.getElementsByClassName('game-btn-send')[0];
            var btnLP = document.getElementsByClassName('dd-btn-share')[0];
            var shareImg = document.getElementsByClassName('dd-img-share')[0];
            //点击为TA投票
            btnTP.onclick = function () {
                getTP.click();

            }
            //点击帮TA拉票
            btnLP.onclick = function () {
                shareImg.style.display = "block";
            }
            //点击分享图片使之隐藏
            shareImg.onclick = function () {
                this.style.display = 'none';
            }

        }




        $(function () {
            $('.last-flower-number').html($('.last-number').val());
            //投票资格函数
            function vote() {
                var lastNumber = $('.last-number').val();
                var loveNumber = $('.love-number');
                if (lastNumber > 0) {
                    loveNumber.addClass('love-number-click')
                }
                else {
                    loveNumber.removeClass('love-number-click');
                }
            }
            //运行投票资格函数
            vote();
            //点击投票


            //.love-number
            $('.game-btn-send').on('click', function () {
                var lastNumber = $('.last-number'),
                    loveNumber = $(this).siblings('.number-father').children('.love-number'),
                    tpNumber = $('.tp-number'),
                    lastFlowerNumber = $('.last-flower-number')
                zzc = $('.zzc'),
                jxtp = $('.jxtp'),
                mscj = $('.mscj'),
                over = $('.over');


                if ("<%=isbing%>" == "1") {
                    jxtp.hide();
                    var html = "对不起,您还未绑定,请点击 <a href='../User/register.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>&Name=凉山扶贫活动'>前往绑定...</a>！"
                    over.children('p').html(html);
                    over.show();
                }
                else {
                    //第一次投票
                    if (tpNumber.val() == '0') {
                        loveNumber.html(parseInt(loveNumber.html()) + 1);
                        lastNumber.val(parseInt(lastNumber.val()) - 1);
                        lastFlowerNumber.html(parseInt(lastFlowerNumber.html()) - 1);
                        tpNumber.val(parseInt(tpNumber.val()) + 1);
                        zzc.show();
                        jxtp.show();

                        $.tipsBox({
                            obj: $(this),
                            str: "+1",
                        });
                    }
                        //最后一次投票抽奖
                    else if (tpNumber.val() == '9') {
                        loveNumber.html(parseInt(loveNumber.html()) + 1);
                        lastNumber.val(parseInt(lastNumber.val()) - 1);
                        lastFlowerNumber.html(parseInt(lastFlowerNumber.html()) - 1);
                        tpNumber.val(parseInt(tpNumber.val()) + 1);
                        zzc.show();
                        over.show();

                        $.tipsBox({
                            obj: $(this),
                            str: "+1",
                        });
                    }
                        //可以投票但不提示抽奖
                    else if (parseInt(lastNumber.val()) > 0) {
                        loveNumber.html(parseInt(loveNumber.html()) + 1);
                        lastNumber.val(parseInt(lastNumber.val()) - 1);
                        lastFlowerNumber.html(parseInt(lastFlowerNumber.html()) - 1);
                        tpNumber.val(parseInt(tpNumber.val()) + 1);

                        $.tipsBox({
                            obj: $(this),
                            str: "+1",
                        });
                    }
                        //不能投票
                    else if (lastNumber.val() == '0') {
                        zzc.show();
                        over.show();
                    }
                    //运行投票资格函数
                    vote();
                    $.ajax({
                        url: "../LSYueLiang/Handler1.ashx",
                        dataType: 'json',
                        async: false,
                        data: { "Method": "FupinVote", "openid": "<%=openid%>", "sid": "<%=sid%>", "pid": "<%=pid%>" },
                        success: function (data) {
                            debugger;
                            if (parseInt(data.result) == 4) {
                                $(".last-number").val(data.number);
                                $(".tp-number").val(data.count);
                            }
                            else if (parseInt(data.result) == 1) {
                                jxtp.hide();
                                over.children('p').text("对不起,参数获取错误~请稍候再试！");
                                over.show();
                            }
                            else if (parseInt(data.result) == 2) {
                                jxtp.hide();
                                var html = "对不起,您还未绑定,请点击 <a href='../User/register.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>&Name=凉山扶贫活动'>前往绑定...</a>！"
                                over.children('p').html(html);
                                over.show();
                            }
                            else if (parseInt(data.result) == 3) {
                                jxtp.hide();
                                over.show();
                            }
                            else if (parseInt(data.result) == 5) {
                                jxtp.hide();
                                zzc.hide();
                                over.children('p').text("活动投票已结束,正在统计最后结果...");
                            }

                        }
                    })
        }
            });

            //弹窗关闭按钮
            $('.public-btn-colse').on('click', function () {
                $(this).parents('.public-tc').hide();
                $('.zzc').hide();
            })
        })
		</script>
</body>

</html>
