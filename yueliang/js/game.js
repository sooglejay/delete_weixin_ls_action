﻿(function ($) {
    $.extend({
        tipsBox: function (options) {
            options = $.extend({
                obj: null, //jq对象，要在那个html标签上显示
                str: "+1", //字符串，要显示的内容;也可以传一段html，如: "<b style='font-family:Microsoft YaHei;'>+1</b>"
                startSize: "12px", //动画开始的文字大小
                endSize: "30px", //动画结束的文字大小
                interval: 600, //动画时间间隔
                color: "red", //文字颜色
                callback: function () { } //回调函数
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
        } else {
            loveNumber.removeClass('love-number-click');
        }
    }
    //运行投票资格函数
    vote();
    //点击投票
    function touPiao(objs) {
        //alert("报名时间尚未截止，暂时不能投票！")
        //$('.btn-game-tc').click();
        //return false;


        var lastNumber = $('.last-number'),
			loveNumber = $(objs).siblings('.number-father').children('.love-number'),
			tpNumber = $('.tp-number'),
			lastFlowerNumber = $('.last-flower-number'),
			zzc = $('.zzc'),
			jxtp = $('.jxtp'),
			mscj = $('.mscj'),
			over = $('.over'),
            yid = $(objs).parents('.list-goods-footer ').siblings('.goods-index-div').children('.goods-index').html(),
            oepnid = $(".txt-openid").val();

        //第一次投票

        //最后一次投票抽奖
        //else if (tpNumber.val() == '9') {
        //    loveNumber.html(parseInt(loveNumber.html()) + 1);
        //    lastNumber.val(parseInt(lastNumber.val()) - 1);
        //    lastFlowerNumber.html(parseInt(lastFlowerNumber.html()) - 1);
        //    tpNumber.val(parseInt(tpNumber.val()) + 1);
        //    zzc.show();
        //    mscj.show();

        //    $.tipsBox({
        //        obj: $(objs),
        //        str: "+1",
        //    });
        //}
        //可以投票但不提示抽奖

        //不能投票
        //运行投票资格函数
       


        $.ajax({
            url: "yueliang.ashx",
            dataType: 'json',
            async: false,
            data: { "Method": "Vote", "Openid": oepnid, "yid": yid },
            success: function (data) {
                if (data.result == 1) {
                    alert("投票已截止")
                }
                else if (data.result == 2) {
                    alert("未找到数据");
                }
                else if (data.result == 3) {
                    zzc.show();
                    over.show();
                }
                else if (data.result == 4) {
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
                }
            }

        })
        vote();

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

        //2017-07-14
        var leftHeight = $('main .game-list-left'),
			rightHeight = $('main .game-list-right');
        var gameBox;
        if (leftHeight.height() > rightHeight.height()) {
            gameBox = '.game-list-right';
        }
        else {
            gameBox = '.game-list-left';
        }

        //升序排列
        if (!$(this).hasClass(classTop)) {
            $(this).addClass(classTop)
				.removeClass(classBottom);
            //编号向上排序
            for (var i = 0; i < newArray.length; i++) {
                numberNew.each(function () {
                    var thisVal = $(this).html();
                    if (thisVal == newArray[i]) {
                        $(this).parents('.list-goods').appendTo('.game-list-div');
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
                        console.log(leftHeight.height(), rightHeight.height())
                        $(this).parents('.list-goods').prependTo('.game-list-div');
                        gameBox = null;
                        //alert(3)
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
                        $(this).parents('.list-goods').appendTo('.game-list-div');
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
                        $(this).parents('.list-goods').prependTo('.game-list-div');
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

        } else {
            $('.nav-li-01').removeClass('nav-li-colse');
        }

    })

    //点击第一个选项时判断，改变状态
    $('.nav-li-01').on('click', function () {

        if ($(this).hasClass('nav-li-colse')) {
            $(this).siblings().hide();
            $(this).removeClass('nav-li-colse');
        } else {
            $(this).siblings().show();
            $(this).addClass('nav-li-colse');
        }
    })

    //当点击跳转链接后，回到页面顶部位置

    $("#back-to-top a").click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 1000);
        return false;
    });
    var index = 0;
    /*瀑布流*/
    function loadMeinv() {
        var html = "";
        $.ajax({
            url: "yueliang.ashx",
            dataType: 'json',
            data: { "Method": "GetList" },
            success: function (data) {
                if (data.length == undefined) {
                    $("#loadMeinvMOre").hide();
                }
                else {
                    if (data.length < 10) {
                        for (var i = 0; i < data.length; i++) {
                            html = $('<div class="list-goods box boy fl"><div class="goods-index-div"><span class="goods-index">' +
			    data[i].yid + '</span>号</div><a href="detail.aspx?yid=' + data[i].yid + '"><img class="img-100" src="' + data[i].PhotoUrl1 + '"  /></a><h2>' + data[i].Name + '</h2><div class="list-goods-footer "><div class="number-father"><div class="love-number">' + data[i].Count + '</div>票</div><button class="game-btn-send fr" type="button">送花</button><div class="clear"></div></div></div>').find(".game-btn-send").on('click', function () {
			        touPiao(this)
			    }).end();
                            $minUl = getMinUl();
                            $minUl.append(html);
                            $("#loadMeinvMOre").hide();
                        }
                    }
                    else {
                        if (index == 0) {
                            for (var i = 0; i < 10; i++) {
                                html = $('<div class="list-goods box boy fl"><div class="goods-index-div"><span class="goods-index">' +
                    data[i].yid + '</span>号</div><a href="detail.aspx?yid=' + data[i].yid + '"><img class="img-100" src="' + data[i].PhotoUrl1 + '"  /></a><h2>' + data[i].Name + '</h2><div class="list-goods-footer "><div class="number-father"><div class="love-number">' + data[i].Count + '</div>票</div><button class="game-btn-send fr" type="button">送花</button><div class="clear"></div></div></div>').find(".game-btn-send").on('click', function () {
                        touPiao(this)
                    }).end();
                                $minUl = getMinUl();
                                $minUl.append(html);
                            }
                        }
                        else {
                            if (data.length - index * 10 < 10) {
                                $("#loadMeinvMOre").hide();
                                for (var i = index * 10; i < data.length; i++) {
                                    html = $('<div class="list-goods box boy fl"><div class="goods-index-div"><span class="goods-index">' +
                  data[i].yid + '</span>号</div><a href="detail.aspx?yid=' + data[i].yid + '"><img class="img-100" src="' + data[i].PhotoUrl1 + '"  /></a><h2>' + data[i].Name + '</h2><div class="list-goods-footer "><div class="number-father"><div class="love-number">' + data[i].Count + '</div>票</div><button class="game-btn-send fr" type="button">送花</button><div class="clear"></div></div></div>').find(".game-btn-send").on('click', function () {
                      touPiao(this)
                  }).end();
                                    $minUl = getMinUl();
                                    $minUl.append(html);
                                }
                            }
                            else {
                                for (var i = index * 10; i < index * 10 + 10; i++) {
                                    for (var i = index * 10; i < index * 10 + 10; i++) {
                                        html = $('<div class="list-goods box boy fl"><div class="goods-index-div"><span class="goods-index">' +
                      data[i].yid + '</span>号</div><a href="detail.aspx?yid=' + data[i].yid + '"><img class="img-100" src="' + data[i].PhotoUrl1 + '"  /></a><h2>' + data[i].Name + '</h2><div class="list-goods-footer "><div class="number-father"><div class="love-number">' + data[i].Count + '</div>票</div><button class="game-btn-send fr" type="button">送花</button><div class="clear"></div></div></div>').find(".game-btn-send").on('click', function () {
                          touPiao(this)
                      }).end();
                                        $minUl = getMinUl();
                                        $minUl.append(html);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        });


    }
    loadMeinv();

    function getMinUl() { //每次获取最短的ul,将图片放到其后
        //2017-07-14添加位置改变
        var leftHeight = $('main .game-list-left'),
            rightHeight = $('main .game-list-right');
        var $arrUl;
        if (leftHeight.height() > rightHeight.height()) {
            $arrUl = rightHeight;
        }
        else {
            $arrUl = leftHeight;
        }


        //var $arrUl = $("main .game-list-left");
        var $minUl = $arrUl.eq(0);
        $arrUl.each(function (index, elem) {
            if ($(elem).height() < $minUl.height()) {
                $minUl = $(elem);
            }
        });
        return $minUl;
    }
    //点击更多加载
    $("#loadMeinvMOre").click(function () {
        $minUl = getMinUl();
        index++;
        loadMeinv();

    });




})