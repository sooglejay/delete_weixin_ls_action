<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSYueLiang.search" %>

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
    <link rel="stylesheet" href="css/detail.css" />
    <link rel="stylesheet" href="css/vType.css" />
    <link rel="stylesheet" href="css/game.css" />
    <title>找一找</title>
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
                title: '我正在参加“月亮女儿”，快来为我投上你的支持票吧！', // 分享标题
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
                title: '我正在参加“月亮女儿”，快来为我投上你的支持票吧！', // 分享标题
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

    <div class="search">
        <header>

            <div class="search-header">
                <a href="game.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>">
                    <button class="s-btn-return fl" type="button">返回</button>
                </a>
                <input class="s-h-search public-input fl" type="text" placeholder="请输入选手编号或姓名">

                <button class="s-btn-return fr" type="button" onclick="spik()">确定</button>

                <div class="clear"></div>
            </div>
        </header>
        <!--
            	作者：648267773@qq.com
            	时间：2015-08-28
            	描述：.boy 男生 .girl 女生
            	.love-number-click 表示可以送花
                            取消.love-number-click表示不可送花
            -->
        <div class="game-list fr ">
            <% foreach (var item in ylist)
               {%>
            <div class="list-goods box girl fl">
                <a href="detail.aspx?yid=<%=item.yid %>&wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>">
                    <img class="img-100" src="http://juzhen.sdtzcd.com/<%=item.Img %>" /></a>
                <p><%=item.Intro.Substring(0,40).ToString()+"..." %></p>
                <div class="list-goods-footer ">
                    <span class="goods-index"><%=item.yid %></span>&nbsp;<span><%=item.yName %></span>
                    <div class="number-father fr">
                        <div class="love-number"><%=item.Count %></div>
                    </div>
                    <button class="game-btn-send" type="button">送花</button>
                </div>
            </div>
            <%} %>
        </div>
        <div class="clear"></div>
    </div>
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
        	作者：648267773@qq.comhttp://se.360.cn/news_popup/news_detail.html?id=386
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
    <div class="footer-last-flower">
        余投票<span class="last-flower-number" name="abc">10</span>次
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/public.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        function spik() {
            window.location.href = "search.aspx?wid=<%=wid%>&sid=<%=sid%>&openid=<%=openid%>&contenttxt=" + $(".s-h-search").val();
        }

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
                    //var left = 150;
                    //var top = 240;
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
            //.love-number
            $('.game-btn-send').on('click', function () {
                touPiao(this);
            });

            //弹窗关闭按钮
            $('.public-btn-colse').on('click', function () {
                $(this).parents('.public-tc').hide();
                $('.zzc').hide();
            })

            /////////////////----------------------以上为重复内容

            //点击选中赛选
            $('.gn-btn').on('click', function () {
                var publicBtn = $('.gn-btn'),
                    publicClass = 'gn-btn-click';
                publicBtn.removeClass(publicClass);
                $(this).addClass(publicClass);
            })
            //选手编号筛选
            //默认为降序排列
            $('.gn-btn-xsbh').on('click', function () {
                var classTop = 'gn-btn-xsbh-top', //升序
                    classBottom = 'gn-btn-xsbh-bottom'; //降序
                //编号参数
                function sortNumber(a, b) {
                    return a - b
                }
                var newArray = new Array();
                var numberNew = $('.goods-index');
                numberNew.each(function () {
                    var thisVal = $(this).html();
                    newArray.push(thisVal);
                })
                newArray.sort(sortNumber);
                console.log(newArray);

                //升序排列
                if (!$(this).hasClass(classTop)) {
                    $(this).addClass(classTop)
                        .removeClass(classBottom);
                    //编号向上排序
                    for (var i = 0; i < newArray.length; i++) {
                        numberNew.each(function () {
                            var thisVal = $(this).html();
                            if (thisVal == newArray[i]) {
                                $(this).parents('.list-goods').appendTo('.game-list');
                            }

                        })
                    }
                }
                    //降序排列
                else {
                    $(this).addClass(classBottom)
                        .removeClass(classTop);
                    //编号向下排序
                    for (var i = 0; i < newArray.length; i++) {
                        numberNew.each(function () {
                            var thisVal = $(this).html();
                            if (thisVal == newArray[i]) {
                                $(this).parents('.list-goods').prependTo('.game-list');
                            }

                        })
                    }
                }
            });
            //选手票数筛选
            //默认为显示少
            $('.gn-btn-xspx').on('click', function () {
                var classTop = 'gn-btn-xspx-top', //票数最少
                    classBottom = 'gn-btn-xspx-bottom'; //票数最多
                //票数参数
                function sortNumber(a, b) {
                    return a - b
                }
                var numArray = new Array();
                var numberNum = $('.love-number');
                numberNum.each(function () {
                    var thisVal = $(this).html();
                    numArray.push(thisVal);
                })
                numArray.sort(sortNumber);
                console.log(numArray);
                //票数最少
                if (!$(this).hasClass(classTop)) {
                    $(this).addClass(classTop)
                        .removeClass(classBottom);
                    //编号向上排序
                    for (var i = 0; i < numArray.length; i++) {
                        numberNum.each(function () {
                            var thisVal = $(this).html();
                            if (thisVal == numArray[i]) {
                                $(this).parents('.list-goods').appendTo('.game-list');
                            }

                        })
                    }
                }
                    //票数最多
                else {
                    $(this).addClass(classBottom)
                        .removeClass(classTop);
                    //编号向下排序
                    for (var i = 0; i < numArray.length; i++) {
                        numberNum.each(function () {
                            var thisVal = $(this).html();
                            if (thisVal == numArray[i]) {
                                $(this).parents('.list-goods').prependTo('.game-list');
                            }

                        })
                    }
                }
            });





            //点击选中，改变状态
            $('.nav-li').on('click', function () {
                var thisVal = $(this).html();
                $('.nav-li-01').html(thisVal).siblings().hide();
                if ($(this).hasClass('nav-li-01')) {

                }
                else {
                    $('.nav-li-01').removeClass('nav-li-colse');
                }
            })

            //点击第一个选项时判断，改变状态
            $('.nav-li-01').on('click', function () {

                if ($(this).hasClass('nav-li-colse')) {
                    $(this).siblings().hide();
                    $(this).removeClass('nav-li-colse');
                }
                else {
                    $(this).siblings().show();
                    $(this).addClass('nav-li-colse');
                }
            })

            //当点击跳转链接后，回到页面顶部位置

            $("#back-to-top a").click(function () {
                $('body,html').animate({ scrollTop: 0 }, 1000);
                return false;
            });
        })
    </script>
</body>
</html>
