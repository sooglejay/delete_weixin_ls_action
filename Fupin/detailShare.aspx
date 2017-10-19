<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailShare.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.Fupin.detailShare" %>

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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/basic.css" />

    <link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
    <link rel="stylesheet" href="css/detail.css" />
    <link rel="stylesheet" type="text/css" href="css/game.css" />
    <link rel="stylesheet" type="text/css" href="css/fp.css" />
    <title>详细资料</title>
    <style>
        .dd-body h2 { text-align: center; }
        .dd-body p { text-indent: 2em; }
    </style>
</head>

<body>
    <!--
    	作者：648267773@qq.com
    	时间：2015-08-28
    	描述：参数说明
    	.last-number :剩余送票次数，默认是10
    	.tp-number :记录送票次数，默认是0
    -->
    <input class="last-number" type="hidden" value="10" />
    <input class="tp-number" type="hidden" value="0" />
    <div class="detail">
        <div class="dd-header">
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
                <button class="dd-btn dd-btn-click dd-btn-tp fr" style="width: 100%;">为TA投票</button>
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
        	描述：马上抽奖
        -->
            <div class="public-tc mscj">
                <p>
                    <span>好人</span>，今天已送<span class="tc-color-01">10</span>票，<br>
                    送票明天再来，抽奖今天继续。
			
                </p>
                <div class="text-center">
                    <a href="#">
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

        <button class="btn-gz" style="display: none;" data-toggle="modal" data-target="#myModal">关注</button>
        <!-- Modal -->
        <div class="modal fade" style="top: 10%;" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
                        <p style="font-size: 14px; text-align: center; color: black; line-height: 24px;">请长按二维码关注,再进底部菜单参与活动~~~</p>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
        <script src="js/public.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">
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
                var gz = document.getElementsByClassName('btn-gz')[0];
                //点击为TA投票
                btnTP.onclick = function () {
                    //getTP.click();
                    gz.click();

                }
            }

		</script>
</body>

</html>
