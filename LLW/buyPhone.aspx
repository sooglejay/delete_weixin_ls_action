﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyPhone.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LLW.buyPhone" %>

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
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css" />
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <title>手机预约</title>
    <style type="text/css">
		
	</style>
</head>
<body>
    <div class="index vr">
        <div class="i-header">
            <img class="img-100" src="images/index-01.png" />
        </div>
        <div class="i-body">
            <ul class="ib-ul">
                <li>
                    <img class="img-100" src="images/index-02.png" />
                    <h1>一重礼</h1>
                    <p>套餐40%折扣</p>
                </li>
                <li>
                    <img class="img-100" src="images/index-04.png" />
                    <h1>二重礼</h1>
                    <p>70G流量包</p>
                </li>
                <li>
                    <img class="img-100" src="images/index-03.png" />
                    <h1>三重礼</h1>
                    <p>半年影视会员</p>
                </li>
            </ul>
            <div class="clear"></div>
            <p>
                提示：一重好礼40%折扣其中一次性到账150-300元
				<br />
                (具体金额根据机型及套餐档次进行赠送)
            </p>
        </div>
        <div class="ib-footer">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide slide1 ">
                        <img src="images/phone-iPhone7.png" />
                        <h1>iPhone 7 A1660(32G)</h1>
                        <h2>RMB 5388</h2>
                        <p>4.7英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide2">
                        <img src="images/phone-iPhone7.png" />
                        <h1>iPhone 7 A1660(128G)</h1>
                        <h2>RMB 6188</h2>
                        <p>4.7英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide3">
                        <img src="images/phone-iPhone7.png" />
                        <h1>iPhone 7 A1660(256G)</h1>
                        <h2>RMB 6988</h2>
                        <p>4.7英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide4">
                        <img src="images/phone-iPhone7 plus.png" />
                        <h1>iPhone 7plus A1661(32G)</h1>
                        <h2>RMB 6388</h2>
                        <p>5.5英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide5">
                        <img src="images/phone-iPhone7 plus.png" />
                        <h1>iPhone 7plus A1661(128G)</h1>
                        <h2>RMB 7188</h2>
                        <p>5.5英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide6">
                        <img src="images/phone-iPhone7 plus.png" />
                        <h1>iPhone 7plus A1661(256G)</h1>
                        <h2>RMB 7988</h2>
                        <p>5.5英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide7">
                        <img src="images/phone-MeiZua680m-32GQuanWangTong.png" />
                        <h1>魅族 A680M（32G）</h1>
                        <h2>RMB 1299</h2>
                        <p>5.5英寸 1300万像素相机</p>
                    </div>
                    <div class="swiper-slide slide8">
                        <img src="images/phone-SanXingNOTE7.png" />
                        <h1>SAMSUNG N9300(NOTE7)</h1>
                        <h2>RMB 6000</h2>
                        <p>5.7英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide9">
                        <img src="images/phone-HuaWeiRongYao8.png" />
                        <h1>华为荣耀 荣耀8 全网通：FRD-AL10</h1>
                        <h2>RMB 2799</h2>
                        <p>5.2英寸 双1200万像素</p>
                    </div>
                    <div class="swiper-slide slide10">
                        <img src="images/phone-MeiZuM685Q.png" />
                        <h1>魅族 M685Q(32G)</h1>
                        <h2>RMB 2199</h2>
                        <p>5.5英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide11">
                        <img src="images/phone-MeiZuM685Q.png" />
                        <h1>魅族 M685M(32G)</h1>
                        <h2>RMB 2199</h2>
                        <p>5.5英寸 1200万像素</p>
                    </div>
                    <div class="swiper-slide slide12">
                        <img src="images/phone-JinLiM6 plus64G.png" />
                        <h1>金立 GN8002(M6PLUS)</h1>
                        <h2>RMB 2999</h2>
                        <p>6.0英寸 1600万像素</p>
                    </div>
                    <div class="swiper-slide slide13">
                        <img src="images/phone-JinLiM6.png" />
                        <h1>金立 GN8003(M6)</h1>
                        <h2>RMB 2699</h2>
                        <p>5.5英寸 1300万像素</p>
                    </div>
                    <div class="swiper-slide slide14">
                        <img src="images/phone-JinLiM6.png" />
                        <h1>金立 GN8003(M6)高配版</h1>
                        <h2>RMB 2899</h2>
                        <p>5.5英寸 1300万像素</p>
                    </div>
                    <div class="swiper-slide slide15">
                        <img src="images/phone-ZhongXingBV0710T.png" />
                        <h1>中兴 BV0710T</h1>
                        <h2>RMB 1999</h2>
                        <p>5.5英寸 1600万像素</p>
                    </div>


                </div>
                <!-- 如果需要分页器 -->
                <div class="swiper-pagination"></div>
            </div>

            <button class="index-btn-yysj" type="button" data-toggle="modal" data-target="#myModal">预约手机</button>
        </div>


        <!-- Modal 弹框-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title index-h4" id="myModalLabel">预约信息</h4>
                    </div>

                    <div class="modal-body">
                        <input class="index-tc-input index-input-name" type="text" placeholder="请输入您的姓名" />
                        <input class="index-tc-input index-input-tel" type="tel" placeholder="请输入您的手机号码" />
                        <select class="index-tc-selsect index-select-address" name="">
                            <option selected="selected">请选择所在区域</option>
                            <option>美姑</option>
                            <option>甘洛</option>
                            <option>盐源</option>
                            <option>西昌</option>
                            <option>会理</option>
                            <option>宁南</option>
                            <option>布拖</option>
                            <option>会东</option>
                            <option>喜德</option>
                            <option>德昌</option>
                            <option>冕宁</option>
                            <option>昭觉</option>
                            <option>金阳</option>
                            <option>木里</option>
                            <option>普格</option>
                            <option>越西</option>
                            <option>雷波</option>

                        </select>
                        <select class="index-tc-selsect index-select-tel" name="">
                            <option selected="selected">请选择想要预约的机型</option>
                            <option>iPhone 7 A1660(32G)</option>
                            <option>iPhone 7 A1660(128G)</option>
                            <option>iPhone 7 A1660(256G)</option>
                            <option>iPhone 7plus A1661(32G)</option>
                            <option>iPhone 7plus A1661(128G)</option>
                            <option>iPhone 7plus A1661(256G)</option>
                            <option>魅族A680M（32G）</option>
                            <option>SAMSUNG N9300(NOTE7)</option>
                            <option>SAMSUNG N9300(NOTE7)（政企专供）</option>
                            <option>华为荣耀 荣耀8 全网通：FRD-AL10</option>
                            <option>魅族 M685Q(32G)</option>
                            <option>魅族 M685M(32G)</option>
                            <option>金立 GN8002(M6PLUS)</option>
                            <option>金立 GN8003(M6)</option>
                            <option>金立 GN8003(M6)高配版</option>
                            <option>中兴 BV0710T</option>
                        </select>
                        <p class="index-tc-ts">错误提示</p>
                    </div>

                    <div class="modal-footer text-center">
                        <button type="button" class="index-btn-01 index-modal-hide fl" data-dismiss="modal">关闭</button>
                        <button type="button" class="index-btn-01 fr index-btn-submit">确定</button>
                        <div class="clear"></div>
                    </div>
                    <p class="index-p-01">所有业务办理均需到营业厅办理</p>
                </div>
            </div>
        </div>

        <button class="none index-btn-success" type="button" data-toggle="modal" data-target="#myModalTrue">成功</button>
        <!-- Modal 弹框-->
        <div class="modal fade" id="myModalTrue" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title index-h4" id="H1">预约成功</h4>
                    </div>

                    <div class="modal-body" style="padding-top: 20px;">
                        恭喜您预约成功！
                    </div>

                    <div class="modal-footer text-center">
                        <button class="index-btn-01 fl" style="width: 100%;" type="button" data-dismiss="modal">关闭</button>
                        <div class="clear"></div>
                    </div>
                    <p class="index-p-01">所有业务办理均需到营业厅办理</p>
                </div>
            </div>
        </div>

    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/swiper3.08.jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        var mySwiper = new Swiper('.swiper-container', {
            direction: 'horizontal',
            //direction: 'vertical',
            //布局分栏
            slidesPerView: 1,
            centeredSlides: true,
            autoplay: 2500,     ///2.5S
            paginationClickable: true,
            //是否循环拖动
            loop: true,
            //需要指针手抓效果
            grabCursor: true,

            // 如果需要分页器
            pagination: '.swiper-pagination'

        })
        $(function () {
            //清空错误提示
            $('.index-tc-ts').html('')

            //点击弹框“确定”按钮，进行输入验证
            $('.index-btn-submit').on('click', function () {
                var inputName = $('.index-input-name'),
					inputTel = $('.index-input-tel'),
					selectAddress = $('.index-select-address'),
					selectTel = $('.index-select-tel'),
					tcTS = $('.index-tc-ts'),
					expTel = /^1\d{10}$/;
                var ts_01 = '姓名不能为空!',
					ts_02 = '手机号码不能为空!',
					ts_03 = '所在区域不能为空!',
					ts_04 = '手机型号不能为空!',
					ts_05 = '手机号码格式不正确!';
                //姓名不能为空
                if (inputName.val() == '') {
                    tcTS.html(ts_01);
                }
                    //手机号码不能为空
                else if (inputTel.val() == '') {
                    tcTS.html(ts_02);
                }

                    //所在区域不能为空
                else if (selectAddress.find("option:selected").index() == '0') {
                    tcTS.html(ts_03);
                }
                    //手机型号不能为空
                else if (selectTel.find("option:selected").index() == '0') {
                    tcTS.html(ts_04);
                }
                    //手机号码格式不正确
                else if (!expTel.test(inputTel.val())) {
                    tcTS.html(ts_05);
                }
                    //成功
                else {

                    $.ajax({
                        type: 'POST',
                        url: "/weixin/LSAction/LSYueLiang/Handler1.ashx",
                        dataType: 'json',
                        async: false,
                        data: { "Method": "BuyPhone", "Name": $(".index-input-name").val(), "Phone": $(".index-input-tel").val(), "Area": $(".index-select-address").val(), "PhoneType": $(".index-select-tel").val() },
                        success: function (data) {
                            if (data.result == 1) {
                                tcTS.html('');
                                $('.index-modal-hide').click();
                                $('.index-btn-success').click();
                            }
                            else if (data.result == 2) {
                                tcTS.html('预约失败，您填写的信息不正常');
                            }
                            else if (data.result == 3) {
                                tcTS.html('预约失败,不能重复预约');
                            }

                        }

                    })


                }
            });
        })
	</script>
</body>
</html>
