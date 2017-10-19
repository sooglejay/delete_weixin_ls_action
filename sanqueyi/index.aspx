<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.sanqueyi.index" %>

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
    <link rel="stylesheet" type="text/css" href="css/countdown.css" />
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <title>一缺三抢流量</title>
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
                title: '来啊，一缺三！一起瓜分金主2000000W流量~', // 分享标题
                link: 'http://juzhen.sdtzcd.com/weixin/LSAction/sanqueyi/index.aspx?sid=<%=sid%>&wid=<%=wid%>&roomid=<%=roomid%>', //分享链接
                imgUrl: 'http://juzhen.sdtzcd.com/upload/201612/01/201612011608559173.png', // 分享图标
                success: function () {
                },
                cancel: function () {
                }
            });
            wx.onMenuShareAppMessage({
                title: '来啊，一缺三！一起瓜分金主2000000W流量~', // 分享标题
                desc: '来啊，一缺三！一起瓜分金主2000000W流量~', // 分享描述
                link: 'http://juzhen.sdtzcd.com/weixin/LSAction/sanqueyi/index.aspx?sid=<%=sid%>&wid=<%=wid%>&roomid=<%=roomid%>', //分享链接
                imgUrl: 'http://juzhen.sdtzcd.com/upload/201612/01/201612011608559173.png', // 分享图标
                success: function () {
                    //alert("成功");
                },
                cancel: function () {
                    //alert("取消");
                }
            });
        });

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
    	时间：2016-11-18
    	描述：
    		  1.判断此房间是否已有主人 #input-room-type:1表示有已有主人，0表示没有
    		  2.判断自己是否可创建房间 #input-room-number:1，表示可创建 ;0表示不可创建房间，
    		  3.判断是否可兑奖 #input-length-ok:通过.index-img-ok的个数来判断，等于4则可兑奖
    		  4.判断是否解散过期#input-endtime-type:1.表示为未过期，0.表示已过期
    		  5.区分身份，房主还是参与者，其他 #input-user-type:1房主，2，参与者；0.其他；

    -->
    <input id="input-room-type" type="hidden" value="<%=inputroomtype %>" />
    <input id="input-room-number" type="hidden" value="1" />
    <input id="input-length-ok" type="hidden" />
    <input id="input-endtime-type" type="hidden" value="1" />
    <input id="input-user-type" type="hidden" value="<%=inputusertype %>" />
    <div class="index vr">
        <div class="index-header">
            <a href="hdgz.html">
                <img class="index-hdgz img-100" src="images/index-04.png" />
            </a>
            <img id="change-load-img" class="img-100" src="" />
        </div>
        <div class="index-body">
            <h1 class="ib-h1">本房间由金主【<span id="ib-change-name">我</span>】赞助2000000M流量</h1>
            <img class="index-body-bg" src="images/index-05.png" />
            <div id="countdown" class="index-type-content index-end-time">
            </div>
            <div class="index-type-content index-end-ok">恭喜成功瓜分大奖</div>
            <!--
            	作者：648267773@qq.com
            	时间：2016-11-18
            	描述：.index-img-ok:表示已占位
            -->
            <ul class="index-user-list">

                <% if (modellist.Count > 0)
                   {
                       for (int i = 0; i < modellist.Count; i++)
                       {
                           if (modellist[i] != null)
                           {%>
                <li class="index-img-ok">
                    <img class="index-user-img" src="<%=modellist[i].tenantsImage %>" />
                    <br />
                    <p><%=modellist[i].tenantsName %></p>
                </li>
                <%}
                           else
                           {%>
                <li>
                    <img class="index-user-img" src="images/index-03.jpg" />
                    <br />
                    <p>虚位以待</p>
                </li>
                <%}
                       }
                       if (4 - modellist.Count > 0)
                       {
                           for (int i = 0; i < 4 - modellist.Count; i++)
                           {%>
                <li>
                    <img class="index-user-img" src="images/index-03.jpg" />
                    <br />
                    <p>虚位以待</p>
                </li>
                <%}
                       }
                   }%>
            </ul>
            <div class="clear"></div>
            <div class="index-btn-div">
                <div style="text-align: center; color: white; margin-bottom: 10px">房间坐满后100%随机获赠10M/30M/50M流量</div>
                <input class="index-input-tel index-input-all" type="tel" placeholder="请输入手机号码加入占座" />
                <button id="index-btn-share" class="index-btn index-input-all">点我，拉人占座</button>
                <button id="index-btn-join" class="index-btn index-input-all">立即占座</button>
                <button id="index-btn-ok" class="index-btn index-input-all">看我抢了多少流量</button>
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
    <img id="share-img" src="images/share-01.png" />
    <img id="creat-img" src="images/index-08.png" />
    <img id="false-img" src="images/index-07.png" />
    <div id="index-tc-jp" class="none">
        <div class="tc-jp-bg">
            <% if (invalid == 0 && Getll != 0)
               {%>
            <p>恭喜获得<%=Getll %>M流量</p>
            <%}
               else
               {%>
            <p>领取失败，填写手机号与绑定手机号不一致</p>
            <% }
            %>

            <img class="tc-jp-img" src="images/index-01.png" />
        </div>
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/countdown.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">


        window.onload = function () {
            function changeLoadImg() {
                var changeImg = document.getElementById('change-load-img');
                var changeName = document.getElementById('ib-change-name');
                var abc = Math.floor(Math.random() * 8) + 1;
                switch (abc) {
                    case 1:
                        changeName.innerHTML = '和生活';
                        break;
                    case 2:
                        changeName.innerHTML = '和包';
                        break;
                    case 3:
                        changeName.innerHTML = '掌厅';
                        break;
                    case 4:
                        changeName.innerHTML = '蜀景畅游';
                        break;
                    case 5:
                        changeName.innerHTML = '乐乐医';
                        break;
                    case 6:
                        changeName.innerHTML = '客运订票';
                        break;
                    case 7:
                        changeName.innerHTML = '驾车助理';
                        break;
                    case 8:
                        changeName.innerHTML = '和多号';
                        break;
                    default:
                        break;
                }
                changeImg.src = 'images/banner' + abc + '.png';
            }
            changeLoadImg();

            if ("<%=invalid%>" == "1") {
                $('#countdown').countdown({
                    //活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-stime值(该值只能为时间戳格式)
                    startTime: '2016/11/18 17:54:00',//活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-etime值(该值只能为时间戳格式)      

                    endTime: '2016/11/18 17:54:00',  //倒计时时间
                    //活动开始前倒计时的修饰
                    //可自定义元素,例如"<span>距离活动开始倒计时还有:</span>"            
                    beforeStart: '距离活动开始还有:',
                    //活动进行中倒计时的修饰 
                    //可自定义元素,例如"<span>距离活动截止还有:</span>"  
                    beforeEnd: '距房间解散还有:',
                    //活动结束后的修饰
                    //可自定义元素,例如"<span>活动已结束</span>"             
                    afterEnd: '亲，活动结束啦，请继续关注哦!',
                    //时间格式化(可采用"ddd:hh:mm:ss、 dd:hh:mm:ss、  hh:mm:ss、 mm:ss、 ss"等)                   
                    format: 'mm:ss',
                    //活动结束后的回调函数                    
                    callback: function () {
                        document.getElementById('input-endtime-type').value = 0;
                        document.getElementById('countdown').innerHTML = '对不起，您进入的是无效的房间！';
                        document.getElementById('countdown').style.color = 'white';
                        //运行判断是否过期与席位函数
                        numberLengthShow()
                    }
                });
            }
            else if ("<%=invalid%>" == "2") {
                $('#countdown').countdown({
                    //活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-stime值(该值只能为时间戳格式)
                    startTime: '2016/11/18 17:54:00',//活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-etime值(该值只能为时间戳格式)      

                    endTime: '2016/11/18 17:54:00',  //倒计时时间
                    //活动开始前倒计时的修饰
                    //可自定义元素,例如"<span>距离活动开始倒计时还有:</span>"            
                    beforeStart: '距离活动开始还有:',
                    //活动进行中倒计时的修饰 
                    //可自定义元素,例如"<span>距离活动截止还有:</span>"  
                    beforeEnd: '距房间解散还有:',
                    //活动结束后的修饰
                    //可自定义元素,例如"<span>活动已结束</span>"             
                    afterEnd: '亲，活动结束啦，请继续关注哦!',
                    //时间格式化(可采用"ddd:hh:mm:ss、 dd:hh:mm:ss、  hh:mm:ss、 mm:ss、 ss"等)                   
                    format: 'mm:ss',
                    //活动结束后的回调函数                    
                    callback: function () {
                        document.getElementById('input-endtime-type').value = 0;
                        document.getElementById('countdown').innerHTML = '对不起，由于您填写的信息和绑定信息不一致，不能领取流量哦！';
                        document.getElementById('countdown').style.color = 'white';
                        //运行判断是否过期与席位函数
                        numberLengthShow()
                    }
                });
            }
            else if ("<%=invalid%>" == "3") {
                $('#countdown').countdown({
                    //活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-stime值(该值只能为时间戳格式)
                    startTime: '2016/11/18 17:54:00',//活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-etime值(该值只能为时间戳格式)      

                    endTime: '2016/11/18 17:54:00',  //倒计时时间
                    //活动开始前倒计时的修饰
                    //可自定义元素,例如"<span>距离活动开始倒计时还有:</span>"            
                    beforeStart: '距离活动开始还有:',
                    //活动进行中倒计时的修饰 
                    //可自定义元素,例如"<span>距离活动截止还有:</span>"  
                    beforeEnd: '距房间解散还有:',
                    //活动结束后的修饰
                    //可自定义元素,例如"<span>活动已结束</span>"             
                    afterEnd: '亲，活动结束啦，请继续关注哦!',
                    //时间格式化(可采用"ddd:hh:mm:ss、 dd:hh:mm:ss、  hh:mm:ss、 mm:ss、 ss"等)                   
                    format: 'mm:ss',
                    //活动结束后的回调函数                    
                    callback: function () {
                        document.getElementById('input-endtime-type').value = 0;
                        document.getElementById('countdown').innerHTML = '对不起，该房间已开奖！';
                        document.getElementById('countdown').style.color = 'white';
                        //运行判断是否过期与席位函数
                        numberLengthShow()
                    }
                });
            }
            else if ("<%=invalid%>" == "0") {
                $('#countdown').countdown({
                    //活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-stime值(该值只能为时间戳格式)
                    startTime: '2016/11/18 17:54:00',//活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-etime值(该值只能为时间戳格式)      

                    endTime: '<%=modellist.Count>0? modellist[0].Endtime.ToString("yyyy/MM/dd HH:mm:ss"):"2016/12/10 23:59:59"%>',  //倒计时时间
                    //活动开始前倒计时的修饰
                    //可自定义元素,例如"<span>距离活动开始倒计时还有:</span>"            
                    beforeStart: '距离活动开始还有:',
                    //活动进行中倒计时的修饰 
                    //可自定义元素,例如"<span>距离活动截止还有:</span>"  
                    beforeEnd: '距房间解散还有:',
                    //活动结束后的修饰
                    //可自定义元素,例如"<span>活动已结束</span>"             
                    afterEnd: '亲，活动结束啦，请继续关注哦121231!',
                    //时间格式化(可采用"ddd:hh:mm:ss、 dd:hh:mm:ss、  hh:mm:ss、 mm:ss、 ss"等)                   
                    format: 'mm:ss',
                    //活动结束后的回调函数                    
                    callback: function () {
                        document.getElementById('false-img').style.display = 'block';
                        document.getElementById('input-endtime-type').value = 0;
                        //运行判断是否过期与席位函数
                        numberLengthShow()
                    }
                });
            }

            else if ("<%=invalid%>" == "4") {
                $('#countdown').countdown({
                    //活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-stime值(该值只能为时间戳格式)
                    startTime: '2016/11/18 17:54:00',//活动开始时间 (可采用时间戳 或者 标准日期时间格式 "yyyy/MM/dd HH:mm:ss")
                    //优先采取元素的data-etime值(该值只能为时间戳格式)      

                    endTime: '<%=modellist.Count>0? modellist[0].Endtime.ToString("yyyy/MM/dd HH:mm:ss"):"2016/12/10 23:59:59"%>',  //倒计时时间
                    //活动开始前倒计时的修饰
                    //可自定义元素,例如"<span>距离活动开始倒计时还有:</span>"            
                    beforeStart: '距房间解散还有:',
                    //活动进行中倒计时的修饰 
                    //可自定义元素,例如"<span>距离活动截止还有:</span>"  
                    beforeEnd: '距房间关闭:',
                    //活动结束后的修饰
                    //可自定义元素,例如"<span>活动已结束</span>"             
                    afterEnd: '亲，活动结束啦，请继续关注哦!',
                    //时间格式化(可采用"ddd:hh:mm:ss、 dd:hh:mm:ss、  hh:mm:ss、 mm:ss、 ss"等)                   
                    format: 'mm:ss',
                    //活动结束后的回调函数                    
                    callback: function () {

                        document.getElementById('input-endtime-type').value = 0;
                        console.log('对不起，您参加的房间还未结束，不能同时参与两个房间哦');
                        document.getElementById('countdown').style.color = 'white';
                        //运行判断是否过期与席位函数
                        numberLengthShow()
                    }
                });
            }



            /*
			 1.判断此房间是否已有主人 #input-room-type:1表示有已有主人，0表示没有
    		  2.判断自己是否可创建房间 #input-room-number:1，表示可创建 ;0表示不可创建房间，
    		  3.判断是否可兑奖 #input-length-ok:通过.index-img-ok的个数来判断，等于4则可兑奖
    		  4.判断是否解散过期#input-endtime-type:1.表示为未过期，0.表示已过期
    		  5.区分身份，房主还是参与者，其他 #input-user-type:1房主，2，参与者；0.其他；
    		*/
            var inputRoomType = document.getElementById('input-room-type'),
    			inputRoomNumber = document.getElementById('input-room-number'),
    			inputLengthOk = document.getElementById('input-length-ok'),
    			inputEndTimeType = document.getElementById('input-endtime-type'),
    			inputUserType = document.getElementById('input-user-type');
            var indexInputAll = document.getElementsByClassName('index-input-all');
            indexBtnShare = document.getElementById('index-btn-share'),
            indexBtnjoin = document.getElementById('index-btn-join'),
            indexBtnOk = document.getElementById('index-btn-ok'),
            indexInputTel = document.getElementsByClassName('index-input-tel')[0],
            indexUserList = document.getElementsByClassName('index-user-list')[0],
            shareImg = document.getElementById('share-img'),
            createImg = document.getElementById('creat-img'),
            falseImg = document.getElementById('false-img');
            var tcBtn = document.getElementsByClassName('btn-tc-01')[0],
				tcTitle = document.getElementById('tc-01-title'),
				tcBody = document.getElementById('tc-01-body');

            //手机号码数组
            var phoneArray = new Array();
            phoneArray = [];
            <% foreach (var item in modellist)
               {%>
            phoneArray.push("<%=item.Mobile%>");
            <%}%>
	
	if ("<%=inputroomtype%>" == "0") {
                createImg.style.display = "block";
            }

            //隐藏所有按钮和输入框
            function btnAllNone() {
                for (var i = 0; i < indexInputAll.length; i++) {
                    indexInputAll[i].style.display = "none";
                }
            }

            //通过判断过期时间和席位显示是否瓜分大奖
            function numberLengthShow() {
                var endTime = document.getElementsByClassName('index-end-time')[0],
					endOK = document.getElementsByClassName('index-end-ok')[0];
                //运行席位更新函数
                updateLength();
                //先判断席位
                //满4人
                if (inputLengthOk.value == 4) {
                    //隐藏所有按钮和输入框
                    btnAllNone();
                    endTime.style.display = 'none';
                    endOK.style.display = 'block';
                    indexBtnOk.style.display = 'block';
                }
                    //不满
                else {
                    endTime.style.display = 'block';
                    endOK.style.display = 'none';
                    //判断是否过期
                    //过期
                    if (inputEndTimeType.value == 0) {
                        //隐藏所有按钮和输入框
                        btnAllNone();
                    }
                }

            }


            //通过判断身份显示相应的内容
            function userTypeShow() {
                //隐藏所有按钮和输入框
                btnAllNone();
                //房主1，参与者2
                if (inputUserType.value == 1 || inputUserType.value == 2) {
                    //显示分享按钮
                    indexBtnShare.style.display = 'block';

                }
                    //其他
                else {
                    //当前房间是否有房主
                    //有房主
                    if (inputRoomType.value == 1) {
                        //显示参加按钮和号码输出框
                        indexBtnjoin.style.display = "block";
                        indexInputTel.style.display = "block";

                    }
                        //没房主
                    else {
                        //显示创建房间
                        createImg.style.display = "block";
                    }
                }
                //运行判断是否过期与席位函数
                numberLengthShow()


            }

            //更改头像和用户名
            function changeSRC(image, name) {
                //用户头像路径
                var userImgSRC = image;
                //用户名
                var userName = name;

                var indexLi = indexUserList.getElementsByTagName('li')[inputLengthOk.value];
                indexLi.className = 'index-img-ok';
                //更改用户头像路径
                indexLi.getElementsByTagName('img')[0].src = userImgSRC;
                //更改用户名字
                indexLi.getElementsByTagName('p')[0].innerHTML = userName;
                //运行席位更新函数
                updateLength();
            }


            //运行判断身份显示函数
            userTypeShow();
            //运行席位更新函数
            updateLength();


            //点击创建房间

            //席位更新函数
            function updateLength() {
                var lengthNumber = document.getElementsByClassName('index-img-ok').length;
                inputLengthOk.value = lengthNumber;
            }

            //点击加入占座
            indexBtnjoin.onclick = function () {



                var gs = /^1\d{10}$/,
						ts_01 = '手机号码不能为空!',
						ts_02 = '手机号码格式不正确!',
						ts_03 = '速度拉好友将座位占满即可获得流量！',
						ts_04 = '席位已满，加入失败！',
						ts_05 = '该手机号码已占位，不可重复输入！'
                ts_11 = '占座失败',
                ts_12 = '占座成功';


                if ("<%=isbing%>" == "1") {
                    tcTitle.innerHTML = ts_12;
                    tcBody.innerHTML = "对不起,您还未绑定,请点击 <a href='../User/register.aspx?wid=<%=wid %>&sid=<%=sid %>&openid=<%=openid %>&Name=三缺一&Email=<%=email%>'>前往绑定...</a>！";
                    tcBtn.click();
                }
                else {
                    //还有剩余的席位，占席数小于4
                    //可以加入占座
                    if (inputLengthOk.value < 4) {
                        //验证手机号码信息
                        //手机号码不能为空
                        if (indexInputTel.value == '') {
                            tcTitle.innerHTML = ts_11;
                            tcBody.innerHTML = ts_01;
                            tcBtn.click();
                        }
                            //手机号码格式不正确
                        else if (!gs.test(indexInputTel.value)) {
                            tcTitle.innerHTML = ts_11;
                            tcBody.innerHTML = ts_02;
                            tcBtn.click();
                        }
                            //该手机号码已占位，不可重复输入
                        else if (phoneArray.toString().indexOf(indexInputTel.value) == 0) {
                            tcTitle.innerHTML = ts_11;
                            tcBody.innerHTML = ts_05;
                            tcBtn.click();
                        }
                        else {
                            $.ajax({
                                url: "../LSYueLiang/Handler1.ashx",
                                dataType: 'json',
                                type: "POST",
                                async: false,
                                data: { "Method": "sanqueyiJoin", "roomid": "<%=roomid%>", "email": "<%=email%>", "Mobile": indexInputTel.value, "Image": "<%=image%>", "UserName": "<%=UserName%>" },
                                success: function (data) {
                                    if (parseInt(data.result) == 1) {
                                        tcTitle.innerHTML = ts_11;
                                        tcBody.innerHTML = "对不起，您来晚了，活动已结束！";
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 2) {
                                        tcTitle.innerHTML = ts_11;
                                        tcBody.innerHTML = "对不起，您来晚了，该房间已失效！";
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 3) {
                                        tcTitle.innerHTML = ts_12;
                                        tcBody.innerHTML = ts_03;
                                        tcBtn.click();

                                        //更改头像和用户名
                                        changeSRC(data.Image, data.Name);
                                        //更改身份为参与者
                                        inputUserType.value = 2;
                                        //运行判断身份显示函数
                                        userTypeShow();
                                        $(".tc-jp-bg").children("p").html("恭喜获得" + data.Num + "M流量");
                                    }
                                    else if (parseInt(data.result) == 4) {
                                        tcTitle.innerHTML = ts_11;
                                        tcBody.innerHTML = "对不起，您进入的是无效的房间！";
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 5) {
                                        tcTitle.innerHTML = ts_11;
                                        tcBody.innerHTML = "对不起，该房间已开奖！";
                                        tcBtn.click();
                                    }
                                    else if (parseInt(data.result) == 5) {
                                        tcTitle.innerHTML = ts_11;
                                        tcBody.innerHTML = "对不起，您参加的房间还未结束，不能同时参与两个房间哦";
                                        tcBtn.click();
                                    }
                                }
                            })
                        }
            }
                        //不可加入占座
            else {
                falseImg.style.display = 'block';
            }
        }
            }





            //点击分享按钮（集齐4人即可开奖）
            indexBtnShare.addEventListener('click', function () {
                shareImg.style.display = 'block';
            })
            //点击分享图片，使之隐藏
            shareImg.addEventListener('click', function () {
                this.style.display = 'none';
            })
            //点击图片，创建房间
            createImg.addEventListener('click', function () {
                inputUserType.value = 1;
                inputRoomType.value = 1;
                this.style.display = 'none';
                //更改头像和用户名
                //运行判断身份显示函数
                userTypeShow();
            })

            //点击兑奖
            indexBtnOk.addEventListener('click', function () {
                //房主1，参与者2
                if (inputUserType.value == 1 || inputUserType.value == 2) {
                    document.getElementById('index-tc-jp').style.display = 'block';
                }
                    //其他
                else {
                    falseImg.style.display = 'block';
                }
            })
        }

    </script>
</body>
</html>
