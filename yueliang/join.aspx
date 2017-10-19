<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="join.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.yueliang.join" %>

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
    <link rel="stylesheet" type="text/css" href="css/detail.css" />
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" href="css/join.css" />

    <title>月亮女儿报名</title>
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
    <div class="join">
        <img class="img-100" src="images/game-31.png" />
        <!--公用头部-->
        <main class="join-main">
			<div class="jm-bg"></div>
			<table class="join-table">
				<tr>
					<td>姓名</td>
					<td><input class="join-input join-input-name" type="text"/ placeholder="您的姓名"></td>
				</tr>
				<tr>
					<td>手机</td>
					<td><input class="join-input join-input-tel" type="tel" placeholder="您的手机"/></td>
				</tr>
				<tr>
					<td colspan="2">一句话宣传自己</td>
				</tr>
				<tr>
					<td colspan="2"><textarea class="img-100 join-input-text" placeholder="自由宣言！做最好的自己！"></textarea></td>
				</tr>
				<tr>
                    <td  class="join-border-top colspan="2""><input class="join-border-top" hidden="hidden" type="file" id="load1" name="load1" onchange="fileupload(this,1)" />上传封面照</td>
				</tr>
				<tr>
					<td colspan="2"><img id="imghead1" width="80" border="0" src="images/join-add.png" onclick="Click()"> </td>
				</tr>
				<tr>
					<td class="join-border-top" colspan="2"><input class="join-border-top" hidden="hidden" type="file" id="load2" name="load2" onchange="fileupload(this,2)" /><input class="join-border-top" hidden="hidden" type="file" id="load3" name="load3" onchange="fileupload(this,3)" />上传其他照片</td>
				</tr>
				<tr>
					<td colspan="2"><img id="imghead2" width="80" border="0" src="images/join-add.png" onclick="Click1()"><img id="imghead3" width="80" border="0" src="images/join-add.png" onclick="Click2()"></td>
				</tr>
				<tr>
					<td class="join-border-top" colspan="2"><input class="join-border-top" hidden="hidden" type="file" id="video1" name="video1" onchange="fileuploadvideo(this)" />上传小视频</td>
				</tr>
				<tr>
					<td style="line-height:1px;">
                        <img class="join-img-add" id="hidvideo" onclick="Click4()" src="images/join-video.png">
                        <video hidden="hidden" id="zhanshi" width="480" height="360" controls="controls">
                          <source  type="video/mp4">
                        </video>
					</td>
					<td style="line-height: 24px;">建议上传10M以内10秒以下的视频</td>
				</tr>
				<tr>
					<td colspan="2"><p class="join-ts" style="color: red;"></p></td>
				</tr>
				<tr>
					<td colspan="2"><button class="join-btn-msjr" type="button">马上报名</button></td>
				</tr>
			</table>
		</main>
        <p style="font-size: 12px; color: #999; text-align: center;">参赛者同意主办单位拥有所有参赛作品（文字、图片、声音、视频）的使用权</p>
    </div>


    <button class="btn-join-tc" style="display: none;" data-toggle="modal" data-target="#myTC">活动提示</button>
    <div class="modal fade" style="top: 10%;" id="myTC" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body mbtc-body">
                    <div class="text-center mbtc-body-center ">
                        <img class="mbtc-img-01" src="images/game-100.png" />
                        <h1>报名成功</h1>
                        <p>
                            恭喜您报名成功!请等待后台审核
                        </p>
                        <br />
                        <p>
                            等待8月5日拉好友为你积人气赢好礼
                        </p>
                    </div>
                    <button class="mbtc-btn-ok" type="button" data-dismiss="modal" aria-label="Close">好的</button>
                </div>
            </div>

        </div>
    </div>


    <button class="btn-join-sb" style="display: none;" data-toggle="modal" data-target="#myTCF">活动提示</button>
    <div class="modal fade" style="top: 10%;" id="myTCF" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body mbtc-body">
                    <div class="text-center mbtc-body-center ">
                        <img class="mbtc-img-01" src="images/game-101.png" />
                        <h1>报名失败</h1>
                        <p id="tt">
                            报名失败
                        </p>
                        <br />
                        <p>
                            等待8月5日拉好友为你积人气赢好礼
                        </p>
                    </div>
                    <button class="mbtc-btn-ok" type="button" data-dismiss="modal" aria-label="Close">好的</button>
                </div>
            </div>

        </div>
    </div>

     <button class="btn-join-sb1" style="display: none;" data-toggle="modal" data-target="#myTCbd">活动提示</button>
    <div class="modal fade" style="top: 10%;" id="myTCbd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body mbtc-body">
                    <div class="text-center mbtc-body-center ">
                        <img class="mbtc-img-01" src="images/game-101.png" />
                        <h1>报名失败</h1>
                        <p>
                            对不起,您还未绑定,请点击 <a href='../User/register.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>&Name=月亮女儿'>前往绑定...</a>！
                        </p>
                    </div>
                    <button class="mbtc-btn-ok" type="button" data-dismiss="modal" aria-label="Close">好的</button>
                </div>
            </div>

        </div>
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/ajaxfileupload.js"></script>

    <script type="text/javascript">

        function Click() {
            $("#load1").click();
        }
        function Click1() {
            $("#load2").click();
        }
        function Click2() {
            $("#load3").click();
        }
        function Click4() {
            $("#video1").click();
        }

        function fileupload(x, name) {
            var strRegex = "(.jpg|.png|.jpeg|.gif)$";
            var re = new RegExp(strRegex);
            if (re.test($(x).val().toLowerCase())) {
                upload(name);
            }
            else {
                alert("文件格式不合法，只能上传图片");
                return;
            }
        }
        function upload(name) {
            $.ajaxFileUpload(
                {
                    url: "yueliang.ashx",
                    secureuri: false,
                    fileElementId: 'load' + name,
                    dataType: 'json',
                    data: { "Method": "EnterHeadimg" },
                    success: function (data) {
                        if (data.result == 1) {
                            $("#imghead" + name + "").attr("src", "../../../upload/yueliang/" + data.filename);
                            $("#imghead" + name + "").attr("width", "200");
                        }
                        else {
                            alert("图片上次失败，请上传正确的图片！");
                        }
                    },
                    error: function (data) {
                        alert("上传图片中断,请检查网络链接");
                    }
                });
        }


        function fileuploadvideo(x) {
            var strRegex = "(.mp4)$";
            var re = new RegExp(strRegex);
            if (re.test($(x).val().toLowerCase())) {
                upload1();
            }
            else {
                alert("文件格式不合法，只能上传mp4格式的视频");
                return;
            }
        }
        function upload1() {
            $.ajaxFileUpload(
                {
                    url: "yueliang.ashx",
                    secureuri: false,
                    fileElementId: 'video1',
                    dataType: 'json',
                    data: { "Method": "EnterVideo" },
                    success: function (data) {
                        if (data.result == 1) {
                            $("#hidvideo").hide();
                            $("#zhanshi").show();
                            $("#zhanshi").attr("src", "../../../upload/yueliang/" + data.filename);
                        }
                        else if (data.result == 2) {
                            alert("视频大小不能大于10M");
                        }
                        else {
                            alert("视频上传失败，请选择正确的视频！");
                        }
                    },
                    error: function (data) {
                        alert("上传视频中断,请检查网络链接");
                    }
                });
        }

        $(".mbtc-btn-ok").on("click", function () {
            window.location.href = "game.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>";
        })

        $('.join-btn-msjr').on('click', function () {
            var ts = $('.join-ts'),
                ts_01 = '姓名不能为空',
                ts_02 = '个性宣言不能为空',
                ts_03 = '图片不能为空',
                inputName = $('.join-input-name'),
                inputText = $('.join-input-text'),
                inputTel = $('.join-input-tel'),
                myreg = /^0?1[3|4|5|8][0-9]\d{8}$/;

            if ("<%=bind%>" == "0") {
                $(".btn-join-sb1").click()
            }
            else {
                //姓名不能为空
                if (inputName.val() == '') {
                    ts.html(ts_01);
                }
                    //手机号码格式不正确
                else if (!myreg.test(inputTel.val())) {
                    ts.html('手机号码格式不正确！');
                }
                    //个性宣言不能为空
                else if (inputText.val() == '') {
                    ts.html(ts_02);
                }
                else if ($("#imghead1").attr('src') == "images/join-add.png") {
                    ts.html("请上传封面图片");
                }
                else if ($("#imghead2").attr('src') == "images/join-add.png" || ($("#imghead3").attr('src') == "images/join-add.png")) {
                    ts.html("请上传其他图片");
                }
                else if ($("#zhanshi").attr('src') == undefined) {
                    ts.html("请上传视频");
                }

                    //完成
                else {
                    var name = $(".join-input-name").val();
                    var tel = $(".join-input-tel").val();
                    var intor = $(".join-input-text").val();
                    var image1 = $("#imghead1")[0].src;
                    var image2 = $("#imghead2")[0].src;
                    var image3 = $("#imghead3")[0].src;
                    var video = $("#zhanshi")[0].src;;
                    //alert(image1);
                    //alert(image2);
                    //alert(image3);
                    //alert(video);
                    $.ajax({
                        url: "yueliang.ashx",
                        dataType: 'json',
                        async: false,
                        data: { "Method": "Join", "Name": name, "Tel": tel, "Intro": intor, "Sid": "<%=sid%>", "Openid": "<%=openid%>", "Image1": image1, "Image2": image2, "Image3": image3, "Video": video },
                        success: function (data) {
                            if (data.result == '1') {
                                $('.btn-join-tc').click();
                                //window.location.href = "http://weixin.sdtzcd.com/weixin/school/game.aspx?sid=9&wid=30" + "&openid=" + data.openid;
                            }
                            else if (data.result == 3) {
                                $("#tt").text("您已报名，请勿重复操作")
                                $(".btn-join-sb").click()
                            }
                            else {
                                $("#tt").text("报名失败!请认真填写资料")
                                $(".btn-join-sb").click()
                            }
                        }
                    })
                }
}
        })

    </script>
</body>
</html>
