﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSBuyPhone.Index" %>

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
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/index.css"/>
    <link rel="stylesheet" type="text/css" href="css/flow.css"/>
    <title>流量预约</title>
	<style type="text/css">
		
	</style>
</head>
<body>
	<div class="index flow vr">
		<div class="flow-body">
			<img class="img-100" src="images/flow-01.jpg"/>
			<button class="index-btn-yysj" type="button" data-toggle="modal" data-target="#myModal">预约流量</button>
		</div>
		
		<!-- Modal 弹框-->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h4 class="modal-title index-h4" id="myModalLabel">预约信息</h4>
		      </div>
		      
		      <div class="modal-body">
		      	<input class="index-tc-input index-input-name" type="text" placeholder="请输入您的姓名"/>
		      	<input class="index-tc-input index-input-tel" type="tel" placeholder="请输入您的手机号码"/>
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
		      	<p class="index-tc-ts">错误提示</p>
		      </div>
		      
		      <div class="modal-footer text-center">
		        <button type="button" class="index-btn-01 index-modal-hide fl"  data-dismiss="modal">关闭</button>
		      	<button type="button" class="index-btn-01 fr index-btn-submit" >确定</button>
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
		        <button class="index-btn-01 fl" style="width: 100%;" type="button"   data-dismiss="modal">关闭</button>
		      	<div class="clear"></div>
		      </div>
		      <p class="index-p-01" >所有业务办理均需到营业厅办理</p>
		    </div>
		  </div>
		</div>
		
	</div>
    <script src="../LSYueLiang/js/jquery-2.1.3.min.js"></script>
	<script src="../LSYueLiang/js/swiper3.08.jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="../LSYueLiang/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	    $(function () {
	        //清空错误提示
	        $('.index-tc-ts').html('')

	        //点击弹框“确定”按钮，进行输入验证
	        $('.index-btn-submit').on('click', function () {
	            var inputName = $('.index-input-name'),
					inputTel = $('.index-input-tel'),
					selectAddress = $('.index-select-address'),
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
	                    data: { "Method": "LLW", "Name": $(".index-input-name").val(), "Phone": $(".index-input-tel").val(), "Area": $(".index-select-address").val() },
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
