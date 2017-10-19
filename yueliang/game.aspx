﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="game.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.yueliang.game" %>

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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" type="text/css" href="css/countdown.css" />
    <link rel="stylesheet" href="css/detail.css" />
    <link rel="stylesheet" href="css/game.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />

    <title>凉山月亮女儿</title>
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
    	.user-type-val:用户状态。 默认0，未报名，1报名
    -->
    <input class="last-number" type="hidden" value="10-<%=number %>" />
    <input class="tp-number" type="hidden" value="<%=number %>" />
    <input class="user-type-val" type="hidden" name="" id="" value="0" />
    <input class="txt-openid" type="hidden" value="<%=openid %>" />
    <div class="game vr" style="padding-bottom: 100px;">
        <header>
            <a class="game-hdgz" href="hdgz.html">活动规则>></a>
            <img class="img-100" src="images/game-31.png" />
        </header>
        <h1 class="game-h">投票时间：即日起-2017年8月12日止</h1>
        <div class="game-add-div">
            <img class="img-100" src="images/game-109.png" />
            <div class="game-add-ul">
                <ul>
                    <li>
                        <h2><%=count %></h2>
                        <p>参加人数</p>
                    </li>
                    <li>
                        <h2><%=iii %></h2>
                        <p>累计投票</p>
                    </li>
                    <li>
                        <h2><%=(iii / 5) + (new Random().Next(50, 150)) %></h2>
                        <p>访问人数</p>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>

        </div>
        <!--
        	作者：648267773@qq.com
        	时间：2017-07-19
        	描述：#countdown:倒计时
        		.game-btn-mycenter-div:个人中心
        		.game-bm-div报名须知
        -->
        <div class="game-btn-mycenter-div text-center">
            <a href="detail.html">
                <button class="game-btn-mycenter"></button>
            </a>
        </div>
        <div id="countdown"></div>
        <%--<div class="game-bm-div">
            <a class="gbd-btn gbd-btn-bmxz" href="hdgz.html"></a>
            <a class="gbd-btn gbd-btn-wybm" href="join.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>"></a>
        </div>--%>



        <main>
			<div class="tpgz">
				<nav class="game-nav">
					<!--
                    	作者：648267773@qq.com
                    	时间：2015-11-17
                    	描述：	默认为.gn-btn-xsbh-bottom最新上传
                    			.gn-btn-xsbh-bottom：降序排列，多到少，最新上传 
                    			.gn-btn-xsbh-top:升序排位，少多到
                    			.gn-btn-xspx-top：花数最少
                    			.gn-btn-xspx-bottom：花数最多
                    			.gn-btn-click:表示选中
                    -->
                    <p class="game-nav-p">候选人</p>
					<button class="gn-btn gn-btn-xspx gn-btn-xspx-top">票数</button>
					<button class="gn-btn gn-btn-xsbh gn-btn-xsbh-bottom gn-btn-click">编号</button>
					
				</nav>
				<a class="game-search" <%--href="search.html"--%>></a>
			</div>
			

			<!--
            	作者：648267773@qq.com
            	时间：2015-08-28
            	描述：.boy 男生 .girl 女生
            	.love-number-click 表示可以送花
                            取消.love-number-click表示不可送花
            -->
			<div class="game-list">
				<div class="game-list-div"></div>
				<div class="game-list-left">
					</div>
				<div class="game-list-right">
				</div>
				
			
				
				<div class="clear"></div>
			</div>


			<div class="clear"></div>
			
			<a href="javascript:" class="loadMeinvMOre" id="loadMeinvMOre">加载更多</a>
			<p id="back-to-top"><a href="#top"><span></span></a></p> 
		</main>


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
                <span>好人</span>，今天已送<span class="tc-color-01">1</span>花，<br>
                还有<span class="tc-color-02">9</span>花次送花机会哦。
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
        <%--<div class="public-tc mscj">
            <p>
                <span>好人</span>，今天已送<span class="tc-color-01">10</span>花，<br>
                送花明天再来，抽奖今天继续。
            </p>
            <div class="text-center">
                <a href="#">
                    <button class="public-tc-btn public-btn-colse btn-mscj">马上抽奖</button></a>
            </div>
        </div>--%>
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
    <div class="footer-last-flower">
        余投票<span class="last-flower-number">10</span>次
    </div>
    <img class="game-ts-img" src="images/game-42.png" />


    <button class="btn-gz" style="display: none;" data-toggle="modal" data-target="#myModalOne">关注</button>
    <!-- Modal -->
    <div class="modal fade" style="top: 10%;" id="myModalOne" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel" style="text-align: center;">关注凉山移动</h4>
                </div>

                <div class="modal-body">
                    <div class="text-center">
                        <img src="images/ewm.jpg" width="80%" />
                    </div>
                    <p style="font-size: 14px; text-align: center; color: black; line-height: 24px;">请长按二维码关注凉山移动</p>
                </div>
            </div>
        </div>
    </div>

    <button class="btn-game-tc" style="display: none;" data-toggle="modal" data-target="#myTC">活动提示</button>
    <div class="modal fade" style="top: 10%;" id="myTC" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body mbtc-body">
                    <div class="text-center mbtc-body-center ">
                        <img class="mbtc-img-01" src="images/game-101.png" />
                        <h1>活动提示</h1>
                        <p>
                            活动投票将在8月5号正式开启
					<br />
                            敬请期待~
                        </p>
                    </div>
                    <button class="mbtc-btn-ok" type="button" data-dismiss="modal" aria-label="Close">好的</button>
                </div>
            </div>

        </div>
    </div>


    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/countdown.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/game.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            //点击送花
            $('.game-btn-send').on('click', function () {
                //$('.btn-gz').click();
            });

            //判断用户状态，是否报名
            //未报名，提示报名，
            if ($('.user-type-val').val() == 0) {
                $('.game-btn-mycenter-div').hide();
                $('.game-bm-div').show();

            }
                //已报名，显示进入个人中心
            else if ($('.user-type-val').val() == 1) {
                $('.game-btn-mycenter-div').show();
                $('.game-bm-div').hide();
            }
            else {
                alert('数据错误，请重新加载')
            }

            $('#countdown').countdown({
                //活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                //优先采取元素的data-stime值(该值只能为时间戳格式)
                startTime: '2017/8/2 23:59:59',//活动结束时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                //优先采取元素的data-etime值(该值只能为时间戳格式)         
                endTime: '2017/8/12 17:59:59',
                //活动开始前倒计时的修饰
                //可自定义元素,例如"<span>距离活动开始倒计时还有:</span>"            
                beforeStart: '距离活动倒计时:',
                //活动进行中倒计时的修饰 
                //可自定义元素,例如"<span>距离活动截止还有:</span>"  
                beforeEnd: '距离活动截止还有:',
                //活动结束后的修饰
                //可自定义元素,例如"<span>活动已结束</span>"             
                afterEnd: '亲，活动结束啦，请继续关注哦!',
                //时间格式化(可采用"ddd:hh:mm:ss、 dd:hh:mm:ss、  hh:mm:ss、 mm:ss、 ss"等)                   
                format: 'dd:hh:mm:ss',
                //活动结束后的回调函数                    
                callback: function () {
                    console.log('亲，活动结束啦，请继续关注哦!');
                }
            });
        })
    </script>
</body>
</html>
