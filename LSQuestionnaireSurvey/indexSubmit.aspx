﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexSubmit.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSQuestionnaireSurvey.indexSubmit" %>

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
    <link rel="stylesheet" href="css/animate.css" type="text/css">
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/indexSubmit.css" />
    <title>开卷问答</title>
    <style type="text/css">
		
	</style>
</head>
<body>
    <div class="index-submit">
        <img class="is-img " src="images/qs-06.png" alt="">
        <div class="is-body">
            <div class="is-div-01">
                <p>请回答：</p>
                <p>模块体验感知及问题</p>
                <textarea class="is-input is-input-question" autofocus draggable="false" name="" id=""></textarea>
            </div>
            <div class="is-div-02">
                <p>请回答：</p>
                <p>平台优化建议</p>
                <textarea class="is-input is-input-advice" autofocus draggable="false" name="" id="Textarea1"></textarea>
            </div>
            <button class="is-btn-submit" type="button"></button>
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
            $('.is-img ').addClass('animated rotateInDownRight');
            $('.is-div-01').addClass('animated bounceInLeft');
            $('.is-div-02').addClass('animated bounceInLeft');
            setTimeout(function () {
                $('.is-btn-submit').addClass('animated bounceInDown show');
            }, 1500)


            //点击"提交"按钮
            $('.is-btn-submit').on('click', function () {
                var inputQuestion = $('.is-input-question'),
                        inputAdvice = $('.is-input-advice'),
                        tsText = $('.qs-error'),
                        btnModal = $('.qs-btn-modal'),
                        ts_01 = "问题不能为空",
                        ts_02 = "平台建议不能为空";
                tsText.html('');


                //问题不能为空
                if (inputQuestion.val() == '') {
                    btnModal.click();
                    tsText.html(ts_01);
                }
                    //手机号码格式不正确
                else if (inputAdvice.val() == '') {
                    btnModal.click();
                    tsText.html(ts_02);
                }
                    //成功
                else {
                    $.ajax({
                        url: "../LSYueLiang/Handler1.ashx",
                        dataType: 'json',
                        async: false,
                        data: { "Method": "Tijiao", "question": $(".is-input-question").val(), "advice": $(".is-input-advice").val(),"name":"<%=name%>","tel":"<%=tel%>" },
	                    success: function (data) {
	                        alert("提交成功");
	                    }
	                })

                }
	        });
	    })
    </script>
</body>
</html>
