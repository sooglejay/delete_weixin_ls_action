<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exchange.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.sanqueyi.exchange" %>

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
    <!-- 禁止识别为手机号码 -->
    <meta name="format-detection" content="telephone=no" />
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/exchange.css" />
    <title>领取流量券</title>
    <script type="text/javascript">
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?e1942418a65ac56b4a3ba0abd2cf5dab";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
</head>
<body>
    <!--
    	作者：648267773@qq.com
    	时间：2016-11-22
    	描述：#eb-all-number:兑换的总流量
    -->
    -
    <input id="eb-all-number" type="hidden" value="<%=duihuan %>" />
    <div class="exchange vr">

        <div class="e-body">
            <h3>当前积累流量(兑换币)：<span id="eb-now-number"><%=Number %></span>M</h3>
            <h1>来啦一缺三</h1>
            <h2>流量券优惠活动</h2>
            <img class="img-100" src="images/exchange-02.png" />
            <button class="exchange-btn-msdh">马上兑换</button>
        </div>
        <div class="e-footer">
            <div class="ef-hdgz">
                <h1>兑换说明</h1>
                <p>
                    1.所得流量（兑换币）可在“凉山移动”微信公众号中兑换100M流量券，关注微信回复“兑换”即可进入兑换页面，（流量兑换仅限凉山移动用户，每满100M可兑换一次，不满额不可兑换，每个用户每月最高可得500M流量券）；
					<br />
                    2.兑换成功后，根据页面提示下载“四川移动和生活”客户端，前往客户端按以下步骤激活流量券即可：
					<img class="img-100" src="images/hdgz-01.jpg" />
                    <br />
                    第一步：点击“和生活”客户端首页“我的卡券”；（需先完成登录操作）
					<img class="img-100" src="images/hdgz-02.jpg" />
                    <br />
                    第二步：点击“立即激活”按钮，激活后流量立即到账。
                </p>

            </div>
        </div>
    </div>
    <button class="btn-tc-01 none" data-toggle="modal" data-target="#myModalOne">弹窗按钮</button>
    <!-- Modal -->
    <div class="modal fade" id="myModalOne" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 id="tc-01-title" class="modal-title modal-title-04" id="myModalLabel">Modal title</h4>
                </div>

                <div id="tc-01-body" class="modal-body modal-body-04" style="color: red;">
                    内容在这里哦
                </div>

            </div>
        </div>
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        window.onload = function () {

            var exBtn = document.getElementsByClassName('exchange-btn-msdh')[0],
               nowNumber = document.getElementById('eb-now-number'),
               allNumber = document.getElementById('eb-all-number');
            var tcTitle = document.getElementById('tc-01-title'),
				tcBody = document.getElementById('tc-01-body'),
				tcBtn = document.getElementsByClassName('btn-tc-01')[0];
            exBtn.addEventListener('click', function () {
                var ts_01 = '您已兑换500M！给其他小伙伴留点机会吧！',
					ts_02 = '当前积累流量(兑换币)不足100M，请点击<a href="http://juzhen.sdtzcd.com/weixin/LSAction/sanqueyi/index.aspx?wid=<%=wid%>&sid=<%=sid%>&openid=<%=openid%>">打劫流量土豪</a>继续加油抢足100M再来兑换吧！',
					ts_03 = '请点击下载<a href="http://hbx.139sc.com/client/downloadInit">“四川移动和生活”</a>客户端激活流量券后流量立即到账，仅限当月使用有效',
					ts_11 = '兑换成功',
					ts_12 = '兑换失败';
                if ("<%=isbind%>" == "1") {
                    tcTitle.innerHTML = ts_12;
                    tcBody.innerHTML = "对不起,您还未绑定,请点击 <a href='../User/register.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>&Name=三缺一&Email=<%=email%>'>前往绑定...</a>！";
                    tcBtn.click();
                }
                else {
                    var intNowNumber = parseInt(nowNumber.innerHTML);
                    //先判断兑换是否满500M
                    //高于500，失败
                    if (allNumber.value > 499) {
                        tcTitle.innerHTML = ts_12;
                        tcBody.innerHTML = ts_01;
                        tcBtn.click();
                    }
                        //低于500
                    else {
                        //当前积累流量是否满100M
                        //低于100，失败
                        if (intNowNumber < 100) {
                            tcTitle.innerHTML = ts_12;
                            tcBody.innerHTML = ts_02;
                            tcBtn.click();
                        }
                            //高于100，成功
                        else {
                            $.ajax({
                                url: "../LSYueLiang/Handler1.ashx",
                                dataType: 'json',
                                type: "POST",
                                async: false,
                                data: { "Method": "sqyDuiHuan", "email": "<%=email%>", "Mobile": "<%=mobile%>" },
                                success: function (data) {
                                    if (parseInt(data.result) == 1) {
                                        tcTitle.innerHTML = ts_12;
                                        tcBody.innerHTML = ts_02;
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 2) {
                                        tcTitle.innerHTML = ts_12;
                                        tcBody.innerHTML = ts_01;
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 3) {
                                        allNumber.value = parseInt(allNumber.value) + 100;
                                        nowNumber.innerHTML = intNowNumber - 100;
                                        tcTitle.innerHTML = ts_11;
                                        tcBody.innerHTML = ts_03;
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 4) {
                                        tcTitle.innerHTML = ts_12;
                                        tcBody.innerHTML = data.result;
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 5) {
                                        tcTitle.innerHTML = ts_12;
                                        tcBody.innerHTML = "对不起，流量券仅限凉山移动用户兑换使用！";
                                        tcBtn.click();
                                    }
                                }
                            })
                        }
                    }
                }
            })
        }
	</script>
</body>
</html>
