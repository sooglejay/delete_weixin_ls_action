<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSYueLiang.detail" %>

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
    <title>详细资料</title>
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
                title: '我是' +<%=yid%> +'号选手，我正在参加“月亮女儿”,欢迎投票支持', // 分享标题
                link: 'http://juzhen.sdtzcd.com/weixin/LSAction/LSYueLiang/share.aspx', //分享链接
                imgUrl: 'https://mmbiz.qlogo.cn/mmbiz_jpg/TecufS2OuPwHkPm3Km3KQw0PmWOB0EeS40DGqyUCDicFJfmmMao96faprQ6LzHgU5qPFxLibicwArRnsoGKVX0LRw/0?wx_fmt=jpeg', // 分享图标
                success: function () {
                    console.log('<%=wxmodel.ticket%>');
                },
                cancel: function () {
                    //alert("取消");
                }
            });
            wx.onMenuShareAppMessage({
                title: '我是' +<%=yid%> +'号选手，我正在参加“月亮女儿”,欢迎投票支持', // 分享标题
                desc: '为我投票，就有机会赢取100M流量、10元话费哦！', // 分享描述
                link: 'http://juzhen.sdtzcd.com/weixin/LSAction/LSYueLiang/share.aspx', //分享链接
                imgUrl: 'https://mmbiz.qlogo.cn/mmbiz_jpg/TecufS2OuPwHkPm3Km3KQw0PmWOB0EeS40DGqyUCDicFJfmmMao96faprQ6LzHgU5qPFxLibicwArRnsoGKVX0LRw/0?wx_fmt=jpeg', // 分享图标
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
    	.last-number :剩余送花次数，默认是10
    	.tp-number :记录送花次数，默认是0
    -->
    <input class="last-number" type="hidden" value="<%=number %>" />
    <input class="tp-number" type="hidden" value="<%=count %>" />
    <div class="detail">
        <!--公用头部-->
        <div class="public-header">
            <div class="public-header-box">
                <a href="game.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>"><span class="public-header-return">返回</span></a>
            </div>
        </div>
        <!--公用头部-->
        <main>

				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide slide1" data-hash="slider1">
							<img class="game-user fl" src="http://juzhen.sdtzcd.com/<%=ymodel.Photo.Split(',')[0] %>" />
						</div>
						<div class="swiper-slide slide2" data-hash="slider2">
							<img class="game-user fl" src="http://juzhen.sdtzcd.com/<%=ymodel.Photo.Split(',')[1] %>" />
						</div>
						<div class="swiper-slide slide3" data-hash="slider3">
							<img class="game-user fl" src="http://juzhen.sdtzcd.com/<%=ymodel.Photo.Split(',')[2] %>" />
						</div>
                        <div class="swiper-slide slide3" data-hash="slider4">
							<img class="game-user fl" src="http://juzhen.sdtzcd.com/<%=ymodel.Photo.Split(',')[3] %>" />
						</div>
					</div>
					<!-- 如果需要导航按钮 -->
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
					
					<div class="swiper-pagination"></div>
				</div>

				<div class="clear"></div>

			</main>

        <footer class="detail-bottom">
            <div class="game-list">
                <div class="list-goods">
                    <div>
                        <!--
			                    	作者：648267773@qq.com
			                    	时间：2015-08-27
			                    	描述：.love-number-click 表示可以送花
			                    	取消.love-number-click表示不可送花
			                -->
                        <div class="number-father">
                            <div class="love-number"><%=ymodel.Count %></div>
                            <div class="love-number-bg"></div>

                        </div>
                        <button class="game-btn-send" type="button">送花</button>
                        <div class="clear"></div>

                        <div class="text-father">
                            <div class="text-bg"></div>
                            <div class="detail-text">
                                <%=ymodel.Intro %>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

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
        	描述：继续送花
        -->
        <div class="public-tc jxtp">
            <p>
                <span>好人</span>，今天已送<span class="tc-color-01" id="fff"><%=count %></span>花，<br>
                再送<span class="tc-color-02" id="ccc"><%=number %></span>花就有机会抽取大奖哦。
            </p>
            <div class="text-center">
                <button class="public-tc-btn public-btn-colse btn-jxtp">继续送花</button>
            </div>
        </div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：马上抽奖
        -->
        <div class="public-tc mscj">
            <p>
                <span>好人</span>，今天已送<span class="tc-color-01">10</span>花，<br>
                送花明天再来，抽奖今天继续。
			
            </p>
            <div class="text-center">
                <a href="http://juzhen.sdtzcd.com/weixin/dzp/index.aspx?wid=47&aid=9&openid=<%=openid %>">
                    <button class="public-tc-btn public-btn-colse btn-mscj">马上抽奖</button></a>
            </div>
        </div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：提示抽奖次数用完
        -->
        <div class="public-tc over">
            <p>
                今日送花次数已用完，</br>
					送花明天再来!
			
            </p>
            <div class="text-center">
                <button class="public-tc-btn public-btn-colse btn-gb">关闭</button>
            </div>
        </div>
    </div>
    <div class="footer-last-flower" style="top: 50px;">
        余投票<span class="last-flower-number">10</span>次
	
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/public.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {

            var mySwiper = new Swiper('.swiper-container', {
                direction: 'horizontal',
                slidesPerView: 1,
                centeredSlides: true,
                //需要指针手抓效果
                grabCursor: true,
                // 如果需要前进后退按钮
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev',
                paginationClickable: true,
                //操作后停止自动滚动
                //autoplayDisableOnInteraction: false,
                pagination: '.swiper-pagination',
                spaceBetween: 0,
                autoplay: 2500,     ///2.5S
                loop: true	//循环滚动
            })

        })
        $(function () {
            //点击隐藏提示图片
            $('.game-ts-img').on('click', function () {
                $(this).hide();
            })

            //初始化剩余投票数
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
            function touPiao(objs) {
                debugger;
                var lastNumber = $('.last-number'),
                    loveNumber = $(objs).siblings('.number-father').children('.love-number'),
                    tpNumber = $('.tp-number'),
                    lastFlowerNumber = $('.last-flower-number'),
                    zzc = $('.zzc'),
                    jxtp = $('.jxtp'),
                    mscj = $('.mscj'),
                    over = $('.over'),
                    yid = $(objs).prev().prev().prev().text()

                //第一次投票
                if (tpNumber.val() == '0') {
                    loveNumber.html(parseInt(loveNumber.html()) + 1);
                    lastNumber.val(parseInt(lastNumber.val()) - 1);
                    lastFlowerNumber.html(parseInt(lastFlowerNumber.html()) - 1);
                    tpNumber.val(parseInt(tpNumber.val()) + 1);
                    zzc.show();
                    jxtp.show();

                    $.tipsBox({
                        obj: $(objs),
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
                    mscj.show();

                    $.tipsBox({
                        obj: $(objs),
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
                        obj: $(objs),
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
                    url: "Handler1.ashx",
                    dataType: 'json',
                    async: false,
                    data: { "Method": "Vote", "openid": "<%=openid%>", "yid": yid },
                    success: function (data) {
                        if (data.result == 1) {
                            $(".last-number").val(data.number);
                            $(".tp-number").val(data.count);
                            $("#fff").html(data.count);
                            $("#ccc").html(data.number);
                        }
                        else if (data.result == 2) {
                            jxtp.hide();
                            zzc.hide();
                        }
                        else if (data.result == 3) {
                            jxtp.hide();
                            zzc.hide();
                            $(".love-number").removeAttr("onclick");
                            alert("活动投票已结束,正在统计最后结果...");
                        }
                        else if (data.result == 4) {
                            $(".last-number").val(0);
                            $(".tp-number").val(10);
                            $(".love-number").removeAttr("onclick");
                            $('.love-number').removeClass('love-number-click');
                            jxtp.hide();
                            zzc.hide();
                            alert("您的帐号未关注“凉山移动”公众号，投票无效，请先关注“凉山移动”再来投票吧！");
                        }
                        else if (data.result == 5) {
                            $(".last-number").val(0);
                            $(".tp-number").val(10);
                            $(".love-number").removeAttr("onclick");
                            $('.love-number').removeClass('love-number-click');
                            jxtp.hide();
                            zzc.hide();
                            alert("你正在使用非法手段进行投票，如再继续操作我们将取消用户的投票资格！");
                        }
                    }
                })
            }
        });
    </script>
</body>

</html>
