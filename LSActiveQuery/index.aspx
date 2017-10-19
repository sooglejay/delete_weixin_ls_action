﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSActiveQuery.index" %>

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
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>

    <title>凉山移动</title>
	<style type="text/css">
		
	</style>
</head>
<body>
	<div class="index">
		<div id="foo"> </div>
		<img class="img-100" src="images/h1.png"/>
		<input class="index-input-tel" type="tel" placeholder="请输入您的手机号码" />
		<div class="text-center">
			<button class="index-btn-query" type="button"></button>
		</div>
		<img class="index-ts-img img-100" src="images/img-staus-default.png"/>
		<p class="index-ts-p">提示:仅限四川凉山移动用户（最终解释权归四川凉山移动）</p>
	</div>
	
	<script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/spin.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	    $(function(){
	        //插件地址：http://www.jq22.com/jquery-info93
	        //定义加载
	        var opts = {};
	        var target = document.getElementById('foo');
	        var spinner = new Spinner(opts).spin(target);
	        //停止加载
	        spinner.stop()
	        //点击查询
	        $('.index-btn-query').on('click',function(){
	            //显示加载
	            spinner.spin(target);
	            let [inputTel,re,imgDefalut,imgTrue,imgFalse] = [$('.index-input-tel'), /^1\d{10}$/,'images/img-staus-default.png','images/img-staus-true.png','images/img-staus-false.png'];
	            let tsImg = $('.index-ts-img');
	            //停止加载函数
	            function stopLoad(){
	                spinner.stop()
	            }
	            //为空，输入错误都表示失败
	            if(inputTel.val() == '' || !re.test(inputTel.val())) 
	            {
	                //改变图片路径
	                tsImg.attr('src',imgFalse)
	                //延迟停止加载,放在回调函数里，这里我只是展示
	                setTimeout(stopLoad,1000)
	            }
	                //成功
	            else
	            {
	                $.ajax({
	                    url: "../LSYueLiang/Handler1.ashx",
	                    dataType: 'json',
	                    async: false,
	                    data: { "Method": "Select", "mobile":inputTel.val() },
	                    success: function (data) {
	                        if (data.result == 1) {
	                            //改变图片路径
	                            tsImg.attr('src',imgTrue)
	                            //延迟停止加载,放在回调函数里，这里我只是展示
	                            setTimeout(stopLoad,1000)
	                        }
	                        else {
	                            //改变图片路径
	                            tsImg.attr('src',imgFalse)
	                            //延迟停止加载,放在回调函数里，这里我只是展示
	                            setTimeout(stopLoad,1000)
	                        }
	                    }
	                });

	             
	            }
	        })
	    })
	</script>
</body>
</html>