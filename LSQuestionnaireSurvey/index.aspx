﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSQuestionnaireSurvey.index" %>

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
    <link rel="stylesheet" href="css/animate.css">
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/index.css" />
    <title>问券调查</title>
    <style type="text/css">
		
	</style>
</head>
<body>
    <div class="questionnaire-survey">
        <img class="index-img-01 img-100" src="images/qs-05.png" alt="">
        <div class="qs-body">
            <div class="qs-input-div">
                <input class="qs-input-name" type="text" placeholder="请输入您的真实姓名">
            </div>
            <div class="qs-input-div">
                <input class="qs-input-tel" type="tel" placeholder="请输入您的手机号码">
            </div>
            <button class="qs-btn-start"></button>
        </div>



    </div>


    <!-- Button trigger modal -->
    <button type="button" class="qs-btn-modal btn btn-primary btn-lg hide" data-toggle="modal" data-target="#myModal">模态框</button>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">错误提示</h4>
                </div>
                <div class="modal-body">
                    <p class="qs-error"></p>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(function () {
            //动画设置
            $('.index-img-01 ').addClass('animated bounceInRight');
            setTimeout(function () {
                $('.qs-input-div').addClass('animated fadeIn show');
            }, 1000);
            setTimeout(function () {
                $('.qs-btn-start').addClass('animated bounceInDown show');
            }, 2000);

            //点击"开始"按钮
            $('.qs-btn-start').on('click', function () {
                var inputName = $('.qs-input-name'),
                    inputTel = $('.qs-input-tel'),
                    tsText = $('.qs-error'),
                    btnModal = $('.qs-btn-modal'),
                    re = /^1\d{10}$/,
                    ts_01 = "名字不能为空",
                    ts_02 = "手机号码格式不正确";
                tsText.html('');
                //名字不能为空
                if (inputName.val() == '') {
                    btnModal.click();
                    tsText.html(ts_01);
                }
                    //手机号码格式不正确
                else if (!re.test(inputTel.val())) {
                    btnModal.click();
                    tsText.html(ts_02);
                }
                    //成功
                else {
                    var name = $(".qs-input-name").val();
                    var tel = $(".qs-input-tel").val();
                    window.location.href = "indexSubmit.aspx?name=" + name + "&tel=" + tel;
                }
            });
        })
    </script>
</body>
</html>
