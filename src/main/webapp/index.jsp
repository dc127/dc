<%@page import="com.mmall.pojo.User"%>
<%@page import="com.mmall.pojo.Cart"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品主页</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.luara.0.0.1.min.js"></script>
</head><body>
<div class="width100" style="height:25ox;background:#f0f0f0;">
	<div class="width1200 center_yh font14 c_66" style="height:25px;line-height:25px;">
    	<font class="left_yh">欢迎来到清真的味道•商城</font>
        <div class="right_yh" id="fast_jump">
        	<a href="/user/login.do">登录</a>
            <b></b>
            <a href="/user/register.do">注册</a>
            <b></b>
            <a href="peopleCenter.jsp">个人中心</a>
            <b></b>
            
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
    	<!--列表导航-->
    	<div class="left_yh Selected" style="width:230px;height:45px;" id="hiddenShow">
        	<!--头部的图标-->
        	<img src="images/cd.png" class="left_yh" style="margin-left:24px;">
            <span class="block_yh left_yh fff" style="height:45px;line-height:44px;margin-left:10px;">商品分类</span>
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
        	<a href="PeopleCenterServlet">个人中心</a>
            <a href="#a">热销商品</a>
            <a href="#b">电子礼品</a>
            <a href="#c">礼盒类产品</a>
            <a href="#d">高温熟食</a>
            <a href="#e">点心小吃</a>
        </div>
    </div>
  </div>
<!--banner-->
<div class="width1200 center_yh hidden_yh" style="position:relative;z-index:80;">
    <div class="example2" style="width:1200px;height:490px;overflow:hidden;margin-left:234px">
        <ul>
            <li><img src="images/madoufuhedouzhi.jpg" alt="1"/></li>
            <li><img src="images/wanggou.jpg" alt="1"/></li>
        </ul>
    </div>
    <!--Luara图片切换骨架end-->
    <script>
        $(function(){
            $(".example2").luara({width:"966",height:"490",interval:4500,selected:"seleted",deriction:"left"});
        });
    </script>
</div>
<!--今日推荐-->
<div class="width1200 center_yh groom">
	<a href="#" class="right_yh block_yh" style="width:73px;height:45px;"></a>
</div>
<div class="width1200 center_yh" style="margin-top:20px;">
	<%
//       List<Gift> gift = (List<Gift>)request.getAttribute("gift");
//       if(gift!=null){
//         for(int i=0;i<3;i++){
    %>
	<div class="tjgoods">  
	<a href="/GiftFamily/GiftListServlet1?s=泰迪">
    <%
//    out.print("<img src='"+gift.get(i).getGift_img()+">");
//    out.print("<h4 class='yihang'>"+gift.get(i).getGift_name()+"</h4>");
//    out.print("<p class='red tcenter'> ￥"+gift.get(i).getGift_price()+"</p>");
     %>
       </a>
         </div>
     </div>
     <%
//     	}
//     }
     %>    
<!--热销商品-->
<div class="width1200 center_yh hidden_yh">
	<div class="width100" style="height:45px;line-height:45px;border-bottom:2px solid #66c561;margin-top:20px;">
    	<a name="a"></a>
    	<font class="left_yh font20">热销商品</font>
        <a href="#" class="right_yh c_33 font16">更多»</a>
    </div>
    <div class="width100 hidden_yh" style="height:388px;">
    	<!-- <a href="/GiftFamily/CommodityServlet?giftId=52" style="width:227px;height:388px;float:left;"><img src="images/tongshizi.jpg"></a> -->
        <div class="normalPic">
        	<a href="/GiftFamily/GiftListServlet1?s=香米小粑粑香米">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香米小粑粑香米</h3>
                <p class="red font14" style="padding-left:10px;">￥18.0</p>
                <img src="images/香米小粑粑香米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=3">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">豆沙年糕糯米</h3>
                <p class="red font14" style="padding-left:10px;">￥328.0</p>
                <img src="images/豆沙年糕糯米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/GiftListServlet1?s=玉如意">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">伊路香随</h3>
                <p class="red font14" style="padding-left:10px;">￥369.9</p>
                <img src="images/伊路香随.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=5">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香米饵丝香米</h3>
                <p class="red font14" style="padding-left:10px;">￥129.9</p>
                <img src="images/香米饵丝香米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=6">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">牛排</h3>
                <p class="red font14" style="padding-left:10px;">￥79.9</p>
                <img src="images/牛排.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=7">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">美厨佳宴</h3>
                <p class="red font14" style="padding-left:10px;">￥299.9</p>
                <img src="images/美厨佳宴.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=8">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">玉米饵块玉米</h3>
                <p class="red font14" style="padding-left:10px;">￥369.9</p>
                <img src="images/玉米饵块玉米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=9">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">牛仔骨切片</h3>
                <p class="red font14" style="padding-left:10px;">￥99.9</p>
                <img src="images/牛仔骨切片.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=10">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">贺岁佳肴</h3>
                <p class="red font14" style="padding-left:10px;">￥688.0</p>
                <img src="images/贺岁佳肴.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=11">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">草原情奶片</h3>
                <p class="red font14" style="padding-left:10px;">￥49.9</p>
                <img src="images/草原情奶片.jpg" width="105" height="118" style="margin:0 auto">
            </a>
        </div>
    </div>
</div>
<!--电子礼品-->
<div class="width1200 center_yh hidden_yh">
	<div class="width100" style="height:45px;line-height:45px;border-bottom:2px solid #66c561;margin-top:20px;">
  		<a name="b"></a>  	
    	<font class="left_yh font20">电子礼品</font>
        <a href="#" class="right_yh c_33 font16">更多»</a>
    </div>
    <div class="width100 hidden_yh" style="height:388px;">
    	<!-- <a href="/GiftFamily/CommodityServlet?giftId=53" style="width:227px;height:388px;float:left;"><img src="images/dianzicheng.jpg"></a> -->
        <div class="normalPic">
        	<a href="/GiftFamily/CommodityServlet?giftId=12">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">电子时钟</h3>
                <p class="red font14" style="padding-left:10px;">￥19.9</p>
                <img src="images/dianzishizhong.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=13">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">蝴蝶灯</h3>
                <p class="red font14" style="padding-left:10px;">￥39.8</p>
                <img src="images/hudiedeng.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=14">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">计步器</h3>
                <p class="red font14" style="padding-left:10px;">￥29.9</p>
                <img src="images/jibuqi.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=15">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">LED挂件</h3>
                <p class="red font14" style="padding-left:10px;">￥9.9</p>
                <img src="images/LEDguajian.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=16">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">企鹅台灯</h3>
                <p class="red font14" style="padding-left:10px;">￥35.9</p>
                <img src="images/qietaideng.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=17">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">电子体温计</h3>
                <p class="red font14" style="padding-left:10px;">￥15.0</p>
                <img src="images/tiwenji.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=18">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">迷你小手电</h3>
                <p class="red font14" style="padding-left:10px;">￥9.9</p>
                <img src="images/xiaoshoudian.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=19">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">小台灯</h3>
                <p class="red font14" style="padding-left:10px;">￥19.9</p>
                <img src="images/xiaotaideng.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=20">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">小音箱</h3>
                <p class="red font14" style="padding-left:10px;">￥49.9</p>
                <img src="images/xiaoyinxiang.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=21">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">智能手表</h3>
                <p class="red font14" style="padding-left:10px;">￥139.9</p>
                <img src="images/zhinengshoubiao.jpg" width="105" height="118" style="margin:0 auto">
            </a>
        </div>
    </div>
</div>
<!--礼盒类产品-->
<div class="width1200 center_yh hidden_yh">
	<div class="width100" style="height:45px;line-height:45px;border-bottom:2px solid #66c561;margin-top:20px;">
    	<a name="c"></a>
    	<font class="left_yh font20">礼盒类产品</font>
        <a href="#" class="right_yh c_33 font16">更多»</a>
    </div>
    <div class="width100 hidden_yh" style="height:388px;">
    	<!-- <a href="/GiftFamily/CommodityServlet?giftId=54" style="width:227px;height:388px;float:left;"><img src="images/lutouxianglian.jpg"></a> -->
        <div class="normalPic">
        	<a href="/GiftFamily/CommodityServlet?giftId=42">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">贺岁佳肴</h3>
                <p class="red font14" style="padding-left:10px;">￥268.0</p>
                <img src="images/贺岁佳肴.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/GiftFamily/CommodityServlet?giftId=43">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">京肴</h3>
                <p class="red font14" style="padding-left:10px;">￥156.0</p>
                <img src="images/京肴.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=44">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">美厨佳宴</h3>
                <p class="red font14" style="padding-left:10px;">￥49.0</p>
                <img src="images/美厨佳宴.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=45">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">伊路香随</h3>
                <p class="red font14" style="padding-left:10px;">￥218.0</p>
                <img src="images/伊路香随.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=46">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">豆沙年糕 糯米</h3>
                <p class="red font14" style="padding-left:10px;">￥169.0</p>
                <img src="images/豆沙年糕糯米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=47">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香米饵块香米</h3>
                <p class="red font14" style="padding-left:10px;">￥28.0</p>
                <img src="images/香米饵块香米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=48">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香米饵丝香米</h3>
                <p class="red font14" style="padding-left:10px;">￥90.0</p>
                <img src="images/香米饵丝香米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=49">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香米小粑粑香米</h3>
                <p class="red font14" style="padding-left:10px;">￥36.0</p>
                <img src="images/香米小粑粑香米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=50">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">玉米饵块玉米</h3>
                <p class="red font14" style="padding-left:10px;">￥86.0</p>
                <img src="images/玉米饵块玉米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=51">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">玉米小粑粑玉米</h3>
                <p class="red font14" style="padding-left:10px;">￥39.0</p>
                <img src="images/玉米小粑粑玉米.jpg" width="105" height="118" style="margin:0 auto">
            </a>
        </div>
    </div>
</div>
<!--高温熟食-->
<div class="width1200 center_yh hidden_yh">
	<div class="width100" style="height:45px;line-height:45px;border-bottom:2px solid #66c561;margin-top:20px;">
    	<a name="d"></a>
    	<font class="left_yh font20">高温熟食</font>
        <a href="#" class="right_yh c_33 font16">更多»</a>
    </div>
    <div class="width100 hidden_yh" style="height:388px;">
    	<!-- <a href="/shop/CommodityServlet?giftId=55" style="width:227px;height:388px;float:left;"><img src="images/beijingkaoya.jpg"></a> -->
        <div class="normalPic">
        	<a href="/shop/CommodityServlet?giftId=22">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">熟食套餐</h3>
                <p class="red font14" style="padding-left:10px;">￥2299.9</p>
                <img src="images/shushitaocan.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=23">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">红烧牛肉</h3>
                <p class="red font14" style="padding-left:10px;">￥18.8</p>
                <img src="images/hongshaoniurou.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=24">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">清香牛肉</h3>
                <p class="red font14" style="padding-left:10px;">￥58.0</p>
                <img src="images/qingxiangniurou.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=25">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">五香酱鸡</h3>
                <p class="red font14" style="padding-left:10px;">￥259.9</p>
                <img src="images/wuxiangjiangji.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=26">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香叶牛腱</h3>
                <p class="red font14" style="padding-left:10px;">￥19.8</p>
                <img src="images/xiangyeniujian.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=27">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">北京烤鸭</h3>
                <p class="red font14" style="padding-left:10px;">￥299.9</p>
                <img src="images/beijingkaoya.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=28">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">香辣牛肉</h3>
                <p class="red font14" style="padding-left:10px;">￥1088.0</p>
                <img src="images/xianglaniurou.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=29">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">红烧牛腱</h3>
                <p class="red font14" style="padding-left:10px;">￥369.0</p>
                <img src="images/hongshaoniujian.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=30">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">红烧牛肉</h3>
                <p class="red font14" style="padding-left:10px;">￥199.0</p>
                <img src="images/hongshaoniurou.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=31">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">清香牛肉</h3>
                <p class="red font14" style="padding-left:10px;">￥158.0</p>
                <img src="images/qingxiangniurou.jpg" width="105" height="118" style="margin:0 auto">
            </a>
        </div>
    </div>
</div>
<!--点心小吃-->
<div class="width1200 center_yh hidden_yh">
	<div class="width100" style="height:45px;line-height:45px;border-bottom:2px solid #66c561;margin-top:20px;">
    	<a name="e"></a>
    	<font class="left_yh font20">点心小吃</font>
        <a href="#" class="right_yh c_33 font16">更多»</a>
    </div>
    <div class="width100 hidden_yh" style="height:388px;">
    	<!-- <a href="/shop/CommodityServlet?giftId=56" style="width:227px;height:388px;float:left;"><img src="images/hei.jpg"></a> -->
        <div class="normalPic">
        	<a href="/shop/CommodityServlet?giftId=32">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">创意糕点</h3>
                <p class="red font14" style="padding-left:10px;">￥59.9</p>
                <img src="images/chuangyigaodian.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=33">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">蛋黄酥</h3>
                <p class="red font14" style="padding-left:10px;">￥49.0</p>
                <img src="images/danhuangsu.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=34">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">海鲜零食</h3>
                <p class="red font14" style="padding-left:10px;">￥138.0</p>
                <img src="images/haixianlingshi.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=35">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">坚果大礼包</h3>
                <p class="red font14" style="padding-left:10px;">￥76.9</p>
                <img src="images/jianguodalibao.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=36">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">零食礼包</h3>
                <p class="red font14" style="padding-left:10px;">￥56.0</p>
                <img src="images/lingshilibao.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=37">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">绿豆糕</h3>
                <p class="red font14" style="padding-left:10px;">￥35.9</p>
                <img src="images/lvdougao.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=38">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">马卡龙</h3>
                <p class="red font14" style="padding-left:10px;">￥39.9</p>
                <img src="images/makalong.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=39">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">巧克力礼包</h3>
                <p class="red font14" style="padding-left:10px;">￥129.0</p>
                <img src="images/qiaokeli.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=40">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">桃酥饼</h3>
                <p class="red font14" style="padding-left:10px;">￥29.9</p>
                <img src="images/taosubing.jpg" width="105" height="118" style="margin:0 auto">
            </a>
            <a href="/shop/CommodityServlet?giftId=41">
            	<h3 class="yihang c_33 font14 font100" style="padding-left:10px;padding-right:10px;margin-top:10px;">鲜花饼</h3>
                <p class="red font14" style="padding-left:10px;">￥36.9</p>
                <img src="images/xianhuabing.jpg" width="105" height="118" style="margin:0 auto">
            </a>
        </div>
    </div>
</div>
<!--品质保证-->
<!-- <div class="width1200 center_yh" style="height:130px;margin-top:60px;">
	<img src="images/db.png">
</div> -->
<!--页脚-->
<div class="width100 hidden_yh" style="background:#66c561;margin-top:90px;">
	<div class="width1200 center_yh tcenter" style="margin-top:44px;">
    	<a href="#a" class="in_block font16 c_33" style="padding:0 30px">热销商品</a>
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
</html>