<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.yueliang.detail" %>

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

		<title>详细</title>
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
                title: '“月亮女儿”评选活动开始报名啦！', // 分享标题
                desc: '火热报名丨“月亮女儿”再度席卷西昌，让全市瞩目你的美！', // 分享描述
                link: 'https://mp.weixin.qq.com/s/BTr_E2f--PzaTEVeYZbEBA', //分享链接
                imgUrl: 'http://juzhen.sdtzcd.com/weixin/LSAction/yueliang/images/game-31.png', // 分享图标
                success: function () {
                    //alert("成功");
                },
                cancel: function () {
                    //alert("取消");
                }
            });
            wx.onMenuShareAppMessage({
                title: '“月亮女儿”评选活动开始报名啦！', // 分享标题
                desc: '火热报名丨“月亮女儿”再度席卷西昌，让全市瞩目你的美！', // 分享描述
                link: 'https://mp.weixin.qq.com/s/BTr_E2f--PzaTEVeYZbEBA', //分享链接
                imgUrl: 'http://juzhen.sdtzcd.com/weixin/LSAction/yueliang/images/game-31.png', // 分享图标
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
		<!--
    	作者：648267773@qq.com
    	时间：2015-08-28
    	描述：参数说明
    	.last-number :剩余送花次数，默认是10
    	.tp-number :记录送花次数，默认是0
    	.d-type-val:审核值：0为未审核，其他值为已审核，默认0
    -->
		<input class="last-number" type="hidden" value="10" />
		<input class="tp-number" type="hidden" value="0" />
		<%--<input class="d-type-val" type="hidden"value="0" />--%>
		<div class="detail">

			<main>
				
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide slide1" data-hash="slider1">
							<img class="game-user fl" src="<%=ylmodel.PhotoUrl1 %>" />
						</div>
						<div class="swiper-slide slide2" data-hash="slider2">
							<img class="game-user fl" src="<%=ylmodel.PhotoUrl2 %>" />
						</div>
						<div class="swiper-slide slide3" data-hash="slider3">
							<img class="game-user fl" src="<%=ylmodel.PhotoUrl3 %>" />
						</div>
					</div>
					<!-- 如果需要导航按钮 -->
					<!--<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>-->
					
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

							<a href="video.aspx?url=<%=ylmodel.VideoUrl %>"><img class="d-video-btn" src="images/join-video.png"/></a>
							<div class="text-father">
								<div class="text-bg"></div>
								<div class="detail-text">
									<%=ylmodel.Intro %>
								</div>
							</div>
							<div class="db-bottom-bg">
								<button class="lg-btn-share" type="button">分享</button>
								
								<div class="list-goods-footer ">
									<div class="number-father">
										<div class="love-number"><%=ylmodel.Count %></div>票	
									</div>
									<button class="game-btn-send fr" type="button"></button>
									<div class="clear"></div>
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
					<span>好人</span>，今天已送<span class="tc-color-01">9</span>花，<br> 再送
					<span class="tc-color-02">9</span>花就有机会抽取大奖哦。
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
					<span>好人</span>，今天已送<span class="tc-color-01">10</span>花，<br> 送花明天再来，抽奖今天继续。
				</p>
				<div class="text-center">
					<a href="#"><button class="public-tc-btn public-btn-colse btn-mscj">马上抽奖</button></a>
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
		
		
		
		<div class="d-header-div">
			<h1>NO：<span><%=ylmodel.yid %></span>&nbsp;<span><%=ylmodel.Name %></span></h1>
		</div>
		
		<img class="d-share-img" src="images/share-01.png"/>
		<img class="d-sh-false" src="images/sh-false.png"/>
		<script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		    $(function () {
		        //点击分享按钮
		        $('.lg-btn-share').on('click', function () {
		            $('.d-share-img').show();
		        })
		        //关闭分享图片
		        $('.d-share-img').on('click', function () {
		            $(this).hide();
		        })

		        //未审核
		        if ("<%=ylmodel.State%>" == "0") {
		            $('.d-sh-false').show();
		        }
		            //已审核
		        else {
		            $('.d-sh-false').hide();
		        }

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

		</script>
	</body>

</html>