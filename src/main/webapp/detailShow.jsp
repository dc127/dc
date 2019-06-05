<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品主页</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.luara.0.0.1.min.js"></script>
    <script src="js/loginOrOut.js"></script><%--登录登出的js--%>
</head><body>
<div class="width100" style="height:25ox;background:#f0f0f0;">
    <div class="width1200 center_yh font14 c_66" style="height:25px;line-height:25px;">
        <font class="left_yh">欢迎来到清真的味道•商城</font>
        <div class="right_yh" id="fast_jump">
            <div class="login">
                <a href="peopleMessage.jsp">欢迎您,${sessionScope.currentUser.username }</a>
                <b></b>
                <a onclick="Logout();">退出</a>
            </div>
            <div class="not-login">
                <a href="login.jsp">登录</a>
                <b></b>
                <a href="enroll.jsp">注册</a>
            </div>
        </div>
    </div>
</div>
<div class="width100 hidden_yh">
    <div class="width1200 center_yh hidden_yh">
        <a href="#" class="block_yh left_yh" style="margin-top:40px;"><img src="images/logo2.png"></a>
        <div class="right_yh" style="height:28px;width:316px;border:2px solid #66c561;margin-top:48px;">
            <form action="GiftListServlet" method="post">
                <input type="text" placeholder="关键词查询" class="searCh" name="sousuo">
                <input type="submit" class="btnSearh" value="搜索">
            </form>
        </div>
    </div>
</div>
<!--导航条-->
<div class="width100" style="height:45px;background:#66c561;margin-top:40px;position:relative;z-index:100;">
    <!--中间的部分-->
    <div class="width1200 center_yh relative_yh" style="height:45px;">
        <!--列表导航(downSlide就显示,否则就不显示)-->
        <div class="left_yh" style="width:230px;height:45px;" id="hiddenShow">
            <!--头部的图标-->
            <img src="images/cd.png" class="left_yh" style="margin-left:24px;">
            <span class="block_yh left_yh fff" style="height:45px;line-height:44px;margin-left:10px;">阶段分类</span>
            <!--下面的导航展开部分-->
            <div class="downSlide">
                <!--一块-->
                <div class="n1Nav">
                    <font>清真调味</font>
                    <img src="images/jt.png">
                    <div class="n2Nav">
                        <div class="n3Nav">
                            <h3>商品分类</h3>
                            <a href="#">清真火锅底料</a>
                            <a href="#">清真味精</a>
                            <a href="#">清真辣椒酱</a>
                            <a href="#">清真番茄酱</a>
                        </div>
                    </div>
                </div>
                <!--一块-->
                <div class="n1Nav">
                    <font>养生保健</font>
                    <img src="images/jt.png">
                    <div class="n2Nav">
                        <div class="n3Nav">
                            <h3>商品分类</h3>
                            <a href="#">枸杞干果</a>
                            <a href="#">名贵药材</a>
                            <a href="#">宁夏特产</a>
                            <a href="#">季节水果</a>
                        </div>
                    </div>
                </div>
                <!--一块-->
                <div class="n1Nav">
                    <font>穆斯林服饰</font>
                    <img src="images/jt.png">
                    <div class="n2Nav">
                        <div class="n3Nav">
                            <h3>商品分类</h3>
                            <a href="#">男士长袍</a>
                            <a href="#">民族马甲</a>
                            <a href="#">发光玩具</a>
                            <a href="#">穆斯林帽子</a>
                            <a href="#">穆斯林婚纱</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--普通导航-->
        <div class="left_yh font16" id="pageNav">
            <a href="index.jsp">首页</a>
            <a href="detailShow.jsp">热销商品</a>
            <a href="index.jsp#b">电子礼品</a>
            <a href="index.jsp#c">礼盒类产品</a>
            <a href="index.jsp#d">高温熟食</a>
            <a href="index.jsp#e">点心小吃</a>
        </div>
    </div>
</div>
<!--当前位置-->
<div class="width1200 center_yh hidden_yh font14" style="height:40px;line-height:40px;">
	<span>当前位置:</span><a href="#" class="c_66">首页></a><a href="#" class="c_66">工艺礼品</a>
</div>
<!--各种筛选-->
<div id="filter">
	<div class="oList">
    	<span>按对象：</span>
        <a href="#" class="on">不限</a>
        <a href="#">幼儿时代</a>
        <a href="#">小学时代</a>
        <a href="#">中学时代</a>
        <a href="#">大学时代</a>
        <a href="#">30阶段</a>
        <a href="#">40阶段</a>
        <a href="#">50阶段</a>
        <a href="#">60阶段</a>
        <a href="#">70阶段</a>
        <a href="#">80阶段</a>
        <a href="#">90阶段</a>
        <a href="#">100阶段</a>
    </div>
    <div class="oList">
    	<span>按功能：</span>
        <a href="#" class="on">不限</a>
        <a href="#">福利</a>
        <a href="#">奖励</a>
        <a href="#">关怀</a>
        <a href="#">宣传</a>
        <a href="#">纪念</a>
        <a href="#">答谢</a>
        <a href="#">拜访</a>
        <a href="#">祝贺</a>
    </div>
    <script>
    	$(".oList a").click(function(){
			$(this).addClass("on").siblings().removeClass("on")
			})
    </script>
</div>
<div class="width1198 center_yh" style="height:35px;background:#f0f0f0;border:1px solid #ddd;margin-top:25px;">
	<a href="javascript:void(0)" class="mR on">默认</a>
    <a href="javascript:void(0)" class="mR">价格<img src="images/gg.png"></a>
    <a href="javascript:void(0)" class="mR">销量<img src="images/gg.png"></a>
    <script>
    	$(".mR").click(function(){
			$(this).addClass("on").find("img").attr("src","images/gg2.png").parent().siblings().removeClass("on")
			$(this).siblings().removeClass("on")
			})
    </script>
</div>
<!--商品列表-->
<div class="width1200 center_yh hidden_yh" style="margin-top:25px;">
    <ul class="listSs">
        <%--<li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        <li>
            <a href="#" class="bjK">
            	<img src="images/xc.png">
            </a>
            <h3 class="spName">2017玉石摆件 客厅装饰品 玄关柜招财工艺品摆设</h3>
            <p class="center_yh block_yh hidden_yh" style="width:202px;">
            	<font class="left_yh red font16">￥268.00</font>
                <font class="right_yh c_66 font14">126人已买</font>
            </p>
            <div class="wCa">
            	<div class="wCa1">
                	<b><img src="images/star.png"></b>
                    <font>收藏</font>
                </div>
                <div class="wCa2">
                	<b><img src="images/sar.png"></b>
                    <font>加入购物车</font>
                </div>
            </div>
        </li>
        --%>
    </ul>
</div>
<div id="navs">
    <div id="nav_in">
        <a href="javascript:void(0)">«</a>
        <a href="javascript:void(0)">1</a>
        <a href="javascript:void(0)">2</a>
        <a href="javascript:void(0)">3</a>
        <a href="javascript:void(0)">4</a>
        <a href="javascript:void(0)">5</a>
        <a href="javascript:void(0)">»</a>
    </div>
</div>
<!--页脚-->
<div class="width100 hidden_yh" style="background:#66c561;margin-top:90px;">
    <div class="width1200 center_yh tcenter" style="margin-top:44px;">
        <a href="detailShow.jsp" class="in_block font16 c_33" style="padding:0 30px">热销商品</a>
        <a href="#b" class="in_block font16 c_33" style="padding:0 30px">美食推荐</a>
        <a href="#c" class="in_block font16 c_33" style="padding:0 30px">店铺推荐</a>
        <a href="#d" class="in_block font16 c_33" style="padding:0 30px">清真百科</a>
        <a href="#e" class="in_block font16 c_33" style="padding:0 30px">关于我们</a>
        <p class="font16 c_33 tcenter" style="margin-top:46px;">www.qingzhenwei.com © CopyRight 清真味 2000-2000 </p>
        <p class="font16 c_33 tcenter" style="margin-top:6px;">电话：000-0000000 手机：1878755618</p>
        <p class="font16 c_33 tcenter" style="margin-top:6px;margin-bottom:10px;">宁ICP备:1218486号-1</p>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url: "/manage/product/list.do",
            type : "GET",
            dataType : 'json',
            success : function(res){
                var status = res.status;
                if(status==0){
                var data = res.data;
                var list = data.list;

                for(var i=0;i<list.length;i++){
                    var name = list[i].name;
                    var price = list[i].price;
                    var imageHost = list[i].imageHost;
                    var mainImage = list[i].mainImage;
                    var Id = list[i].id;
                    $(".listSs").append("<li>\n" +
                        "            <a href='productDetail.jsp?Id="+Id+"'class='bjK'>\n" +
                        "            \t<img src="+imageHost+mainImage+">\n" +
                        "            </a>\n" +
                        "            <h3 class=\"spName\">"+name+"</h3>\n" +
                        "            <p class=\"center_yh block_yh hidden_yh\" style=\"width:202px;\">\n" +
                        "            \t<font class=\"left_yh red font16\">￥"+price+"</font>\n" +
                        "                <font class=\"right_yh c_66 font14\">126人已买</font>\n" +
                        "            </p>\n" +
                        "            <div class=\"wCa\">\n" +
                        "            \t<div class=\"wCa1\">\n" +
                        "                \t<b><img src=\"images/star.png\"></b>\n" +
                        "                    <font>收藏</font>\n" +
                        "                </div>\n" +
                        "                <div class=\"wCa2\">\n" +
                        "                \t<b><img src=\"images/sar.png\"></b>\n" +
                        "                    <font>加入购物车</font>\n" +
                        "                </div>\n" +
                        "            </div>\n" +
                        "        </li>");
                }

                //收藏按钮和加入购物车按钮点击函数
                $(".wCa div").click(function(){
                    $(this).addClass("on")
                })
                }else{
                    alert(res.msg);
                }
            },
            error : function (err) {
                alert(err.msg);
            }
        })
    })
</script>
</html>
