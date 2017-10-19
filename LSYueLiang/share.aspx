<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="share.aspx.cs" Inherits="MxWeiXinPF.Web.weixin.LSAction.LSYueLiang.share" %>




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
    <link rel="stylesheet" href="css/basic.css" />
    <link rel="stylesheet" href="css/detail.css" />
    <link rel="stylesheet" href="css/game.css" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    
    <title>月亮女儿</title>
</head>
<body>
    <!--
    	作者：648267773@qq.com
    	时间：2015-08-28
    	描述：参数说明
    	.last-number :剩余送花次数，默认是10
    	.tp-number :记录送花次数，默认是0
    -->
    <input class="last-number" type="hidden" value="0" />
    <input class="tp-number" type="hidden" value="10" />


    <div class="game vr">
        <header>
            <header>
                <a class="game-hdgz" href="hdgz.html">活动规则>></a>
                <img class="img-100" src="images/game-31.jpg" />
                <div class="game-header-number">积累票数&nbsp;&nbsp;<span>8377</span></div>
            </header>
        </header>
        <main>
			<div class="tpgz">
				<nav class="game-nav">
					<!--
                    	作者：648267773@qq.com
                    	时间：2015-11-17
                    	描述：	默认为.gn-btn-xsbh-bottom最新上传
                    			.gn-btn-xsbh-bottom：降序排列，多到少，最新上传 
                    			.gn-btn-xsbh-top:升序排位，少多到
                    			.gn-btn-xspx-top：花数最少
                    			.gn-btn-xspx-bottom：花数最多
                    			.gn-btn-click:表示选中
                    -->
					<button class="gn-btn gn-btn-xsbh gn-btn-xsbh-bottom gn-btn-click">编号排行
</button>
					<button class="gn-btn gn-btn-xspx gn-btn-xspx-top">花数排行</button>
				</nav>
				<a class="game-search" href="search.aspx?
wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"></a>
			</div>
			<!--
            	作者：648267773@qq.com
            	时间：2015-08-28
            	描述：.boy 男生 .girl 女生
            	.love-number-click 表示可以送花
                            取消.love-number-click表示不可送花
            -->
                   <div class="game-list fr ">
            
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=20&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/liaomengshuang2.jpg" /></a>
					<p>我叫廖梦霜，今年十七岁，很荣幸进入了月亮女儿决赛，我热爱生活，性格活泼开朗，乐
观...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">20</span>&nbsp;<span>廖梦霜       </span>
						<div class="number-father fr">
								<div class="love-number">39</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=19&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/yiting2.jpg" /></a>
					<p>从小生活在大凉山的我，渴望去更远的地方，看更多的美景，可每到一个地方，尽管再美
，...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">19</span>&nbsp;<span>易婷        </span>
						<div class="number-father fr">
								<div class="love-number">132</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=18&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/zhangyangjie2.jpg" /></a>
					<p>我是张杨洁，今年21岁，来自凉山州越西县。现在就读于四川传媒学院航空服务专业，
今...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">18</span>&nbsp;<span>张杨洁       </span>
						<div class="number-father fr">
								<div class="love-number">1255</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=17&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/mayongbi2.jpg" /></a>
					<p>我是马永碧，就读于成都航空学院民用航空服务系，今年十九岁，是一个性格活泼开朗、
爱...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">17</span>&nbsp;<span>马永碧       </span>
						<div class="number-father fr">
								<div class="love-number">427</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=16&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/wuyalan2.jpg" /></a>
					<p>我是参赛选手伍娅兰，我来自一座春天栖息的城市西昌，平平凡凡的我，却不愿过关在火
柴...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">16</span>&nbsp;<span>伍娅兰       </span>
						<div class="number-father fr">
								<div class="love-number">499</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=15&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/penhaiyun2.jpg" /></a>
					<p>活泼开朗古灵精怪是我的标签，而我也是一个很有原则的人，我的原则只有三个字——看
心...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">15</span>&nbsp;<span>彭海韵       </span>
						<div class="number-father fr">
								<div class="love-number">84</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=14&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/yueqizuoxi2.jpg" /></a>
					<p>我叫约其佐喜，今年22岁，毕业于英国伯明翰大学。我，爱笑，爱乐，爱简单，爱热
闹，...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">14</span>&nbsp;<span>约其佐喜      </span>
						<div class="number-father fr">
								<div class="love-number">120</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=13&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/tanchunqi2.jpg" /></a>
					<p>我是谭椿琦，是一名川兴中学的毕业生，我来自热情好客的大凉山，我坚信，每一次经历
都...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">13</span>&nbsp;<span>谭椿琦       </span>
						<div class="number-father fr">
								<div class="love-number">453</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=12&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/huanglin2.jpg" /></a>
					<p>  我是来自凉山州盐源县的一位汉族女孩，我叫黄琳，今年21岁，身高173，现在
是...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">12</span>&nbsp;<span>黄琳        </span>
						<div class="number-father fr">
								<div class="love-number">245</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=11&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/liyang2.jpg" /></a>
					<p>  我叫李洋，出生于1998年8月10号，来自于美丽的李白故里四川江油，是一名汉...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">11</span>&nbsp;<span>李洋        </span>
						<div class="number-father fr">
								<div class="love-number">286</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?
yid=10&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img class="img-100" 
src="http://juzhen.sdtzcd.com/images/yueliang/chenxiyu2.jpg" /></a>
					<p>  我叫陈晞语，我是土生土长的西昌姑娘，从事瑜伽行业三年了，现在在成都美航国际
M...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">10</span>&nbsp;<span>陈晞语       </span>
						<div class="number-father fr">
								<div class="love-number">593</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=9&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/yangruxiao2.jpg" /></a>
					<p>我叫杨茹筱，就读于云南艺术学院，学习舞蹈教育专业，是一个大二在校学生。我阳光、
率...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">9</span>&nbsp;<span>杨茹筱       </span>
						<div class="number-father fr">
								<div class="love-number">19</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=8&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/liuxiaotong2.jpg" /></a>
					<p>我叫刘小桐，就读于四川电影电视学院播音与主持艺术系，我把每一次比赛都当做专业比
赛...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">8</span>&nbsp;<span>刘小桐       </span>
						<div class="number-father fr">
								<div class="love-number">297</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=7&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/jinli2.jpg" /></a>
					<p>我是金丽，今年21岁，来自盐源县。今年刚大学毕业，是一名热情活泼开朗，爱笑的彝
族...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">7</span>&nbsp;<span>金丽        </span>
						<div class="number-father fr">
								<div class="love-number">1161</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=6&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/abiyiniu2.jpg" /></a>
					<p>我叫阿比衣牛，是四川传媒学院播音与主持专业的学生，本人自学能力强，善于思考，有
良...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">6</span>&nbsp;<span>阿比衣牛      </span>
						<div class="number-father fr">
								<div class="love-number">137</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=5&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/tangrui2.jpg" /></a>
					<p>我叫汤瑞，来自美丽的月城西昌，舞蹈表演专业的在校大学生。或许外表给人的感觉是这
个...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">5</span>&nbsp;<span>汤瑞        </span>
						<div class="number-father fr">
								<div class="love-number">529</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=4&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/huanglijin2.jpg" /></a>
					<p>我叫黄立瑾，今年22岁，我来自美丽的月城西昌。
  生活中我是个热情活泼，待人友...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">4</span>&nbsp;<span>黄立瑾       </span>
						<div class="number-father fr">
								<div class="love-number">16</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=3&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/zenghao2.jpg" /></a>
					<p>我是月亮女儿选手曾好，今年19岁，身高175cm，来自美不胜收的西昌市。毕业于
四...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">3</span>&nbsp;<span>曾好        </span>
						<div class="number-father fr">
								<div class="love-number">594</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=2&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/hefei2.jpg" /></a>
					<p>  我叫何菲，出生于1995年8月27号，来自四川江油，是一名汉族女孩。我是一名...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">2</span>&nbsp;<span>何菲        </span>
						<div class="number-father fr">
								<div class="love-number">472</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
				<div class="list-goods box girl fl">
					<a href="detail.aspx?yid=1&wid=47&sid=12&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE"><img 
class="img-100" src="http://juzhen.sdtzcd.com/images/yueliang/shiyulong2.jpg" /></a>
					<p>我叫师玉龙，很高兴这次能进入月亮女儿的决赛。只听到我的名字的时候可不要以为我参
加...</p>
					<div class="list-goods-footer ">
						<span class="goods-index">1</span>&nbsp;<span>师玉龙       </span>
						<div class="number-father fr">
								<div class="love-number">1019</div>	
						</div>
						<button class="game-btn-send" type="button">送花</button>
					</div>
				</div>
             
			</div>
			<div class="clear"></div>
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
					<img src="images/ewm.jpg" width="80%"/>
				</div>
				<p style="font-size: 14px;text-align: center; color: black;line-height: 24px;">请长按二维码关注凉山移动后,通过微信底部菜单“五彩凉山”—“月亮女儿选拔大赛”进行投票</p>
	      </div>
	    </div>
	  </div>
	</div>
			<p id="back-to-top"><a href="#top"><span></span>返回顶部</a></p>  
		</main>


        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：遮罩层
        -->
        <div class="zzc"></div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：继续送花
        -->
        <div class="public-tc jxtp">
            <p>
                <span>好人</span>，今天已送<span class="tc-color-01" id="fff">10</span>花，<br>
                再送<span class="tc-color-02" id="ccc">0</span>花就有机会抽取大奖哦。
            </p>
            <div class="text-center">
                <button class="public-tc-btn public-btn-colse btn-jxtp">继续送花</button>
            </div>
        </div>
        <!--
        	作者：648267773@qq.com
        	时间：2015-08-28
        	描述：马上抽奖
        -->
        <div class="public-tc mscj">
            <p>
                <span>好人</span>，今天已送<span class="tc-color-01">10</span>花，<br>
                送花明天再来，抽奖今天继续。
            </p>
            <div class="text-center">
                <a href="http://juzhen.sdtzcd.com/weixin/dzp/index.aspx?wid=47&aid=9&openid=oJZJCuFTlZNGmqKwzzNCHwyeYtjE">
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
                今日送花次数已用完，</br>
        		送花明天再来!
            </p>
            <div class="text-center">
                <button class="public-tc-btn public-btn-colse btn-gb">关闭</button>
            </div>
        </div>

    </div>
    <div class="footer-last-flower">
        余投票<span class="last-flower-number">10</span>次
    </div>
    <script src="js/jquery-2.1.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script>
        $(function () {
            $('.game-btn-send').on('click', function () {
                $('.btn-gz').click();
            });
        })
    </script>

</body>
</html>

