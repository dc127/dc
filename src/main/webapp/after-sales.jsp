<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.luara.0.0.1.min.js"></script>
    <script src="js/loginOrOut.js"></script><%--登录登出的js--%>
</head>

<body>
<div class="width100" style="height:25ox;background:#f0f0f0;">
    <div class="width1200 center_yh font14 c_66" style="height:25px;line-height:25px;">
        <font class="left_yh">欢迎来到清真的味道•商城</font>
        <div class="right_yh" id="fast_jump">
            <div class="login">
                <a href="#">欢迎您,${sessionScope.currentUser.username }</a>
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
            <script type="text/javascript">
                $(function () {
                    $("input[name='sousuobutton']").click(function () {
                        var keyword =$("input[name='sousuo']").val();
                        window.location.href="http://qingzhenwei.natapp1.cc/searchDetailShow.jsp?keyword="+keyword;
                    })
                })
            </script>
            <form action="" method="get">
                <input type="text" placeholder="关键词查询" class="searCh" name="sousuo">
                <input type="submit" class="btnSearh" value="搜索" name="sousuobutton">
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
            <a href="#a">热销商品</a>
            <a href="#b">电子礼品</a>
            <a href="#c">礼盒类产品</a>
            <a href="#d">高温熟食</a>
            <a href="#e">点心小吃</a>
        </div>
    </div>
</div>
<!--当前位置-->
<div class="width1200 center_yh hidden_yh font14" style="height:40px;line-height:40px;">
	<span>当前位置:</span><a href="#" class="c_66">首页></a><a href="#" class="c_66">我的账户></a>
</div>
<div class="width100 hidden_yh" style="background:#66c561;padding-top:34px;padding-bottom:34px;">
	<div class="width1200 hidden_yh center_yh">
    	<div id="vipNav">
        		<a href="peopleCenter.jsp" >账户总览</a>
            <a href="peopleMessage.jsp">个人信息</a>
            <a href="order.jsp">我的订单</a>
           <%-- <a href="collect.jsp">商品收藏</a>--%>
            <a href="shopCar.jsp">我的购物车</a>
            <a href="password.jsp">修改密码</a>
         <%--   <a href="after-sales.jsp" class="on">售后管理</a>--%>
            <a href="address.jsp">收货地址</a>
        </div>
        <div id="vipRight">
            <div style="width:938px;border:1px solid #ddd;background:#fff;">
            	<!--top-->
                <div class="width100 hidden_yh" style="height:74px;background:#f5f8fa;" id="conNav">
                	<span style="margin-left:50px;" class="on">仅退款</span>
                    <span style="margin-left:130px;">退货退款</span>
                </div>
                <!--center-->
                <div class="hidden_yh center_yh" style="border-bottom:1px solid #ddd;height:78px;line-height:78px;width:898px;">
                	<span class="left_yh block_yh tcenter font16" style="width:420px;height:78px;">订单号</span>
                    <span class="left_yh block_yh tcenter font16" style="width:152px;height:78px;">退款金额</span>
                    <span class="left_yh block_yh tcenter font16" style="width:92px;height:78px;">申请时间</span>
                    <span class="left_yh block_yh tcenter font16" style="width:120px;height:78px;">处理状态</span>
                    <span class="left_yh block_yh tcenter font16" style="width:114px;height:78px;">操作</span>
                </div>
                <!--bottom-->
                <div class="width100 hidden_yh">
                	<!--仅退款-->
                    <div class="width100 hidden_yh jTk" style="display:block">
                    	<!--一条-->
                        <div class="hidden_yh center_yh" style="padding-top:25px;padding-bottom:25px;border-bottom:1px dashed #ddd;width:898px;">
                        	<div class="left_yh hidden_yh" style="width:420px;">
                            	<img src="images/132340c4fxnvp3ppwnohnv.jpg" width="65" height="65" class="left_yh" style="margin-right:6px;">
                                <div class="left_yh">
                                	<h4 class="font100 font16 c_33">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h4>
                                    <p class="font14 c_66">订单编号600123456001</p>
                                    <p class="font14 c_66">退款编号600123456001</p>
                                </div>
                            </div>
                            <div class="left_yh hidden_yh font16 tcenter red" style="width:152px;line-height:65px;">￥268.00</div>
                            <div class="left_yh hidden_yh font14 tcenter c_66" style="width:92px;"><p style="margin-top:14px;">2017.09.28 14:30:54</p></div>
                            <div class="left_yh hidden_yh font14 tcenter c_66" style="width:120px;line-height:65px;">待处理</div>
                            <a href="javascript:void(0)" class="left_yh hidden_yh font14 tcenter c_66 block_yh onorange" style="width:114px;line-height:65px;">查看详情</a>
                        </div>
                        <!--一条-->
                        <div class="hidden_yh center_yh" style="padding-top:25px;padding-bottom:25px;border-bottom:1px dashed #ddd;width:898px;">
                        	<div class="left_yh hidden_yh" style="width:420px;">
                            	<img src="images/132340c4fxnvp3ppwnohnv.jpg" width="65" height="65" class="left_yh" style="margin-right:6px;">
                                <div class="left_yh">
                                	<h4 class="font100 font16 c_33">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h4>
                                    <p class="font14 c_66">订单编号600123456001</p>
                                    <p class="font14 c_66">退款编号600123456001</p>
                                </div>
                            </div>
                            <div class="left_yh hidden_yh font16 tcenter red" style="width:152px;line-height:65px;">￥268.00</div>
                            <div class="left_yh hidden_yh font14 tcenter c_66" style="width:92px;"><p style="margin-top:14px;">2017.09.28 14:30:54</p></div>
                            <div class="left_yh hidden_yh font14 tcenter c_66" style="width:120px;line-height:65px;">已完成</div>
                            <a href="javascript:void(0)" class="left_yh hidden_yh font14 tcenter c_66 block_yh onorange" style="width:114px;line-height:65px;">查看详情</a>
                        </div>
                    </div>
                    <!--退货退款-->
                    <div class="width100 hidden_yh jTk" style="display:none">
                    	<!--一条-->
                        <div class="hidden_yh center_yh" style="padding-top:25px;padding-bottom:25px;border-bottom:1px dashed #ddd;width:898px;">
                        	<div class="left_yh hidden_yh" style="width:420px;">
                            	<img src="images/132340c4fxnvp3ppwnohnv.jpg" width="65" height="65" class="left_yh" style="margin-right:6px;">
                                <div class="left_yh">
                                	<h4 class="font100 font16 c_33">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h4>
                                    <p class="font14 c_66">订单编号600123456001</p>
                                    <p class="font14 c_66">退款编号600123456001</p>
                                </div>
                            </div>
                            <div class="left_yh hidden_yh font16 tcenter red" style="width:152px;line-height:65px;">￥268.00</div>
                            <div class="left_yh hidden_yh font14 tcenter c_66" style="width:92px;"><p style="margin-top:14px;">2017.09.28 14:30:54</p></div>
                            <div class="left_yh hidden_yh font14 tcenter c_66" style="width:120px;line-height:65px;">待处理</div>
                            <a href="javascript:void(0)" class="left_yh hidden_yh font14 tcenter c_66 block_yh onorange" style="width:114px;line-height:65px;">查看详情</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
$(".mG").click(function(){
	$(this).parent().parent().remove()
	})
$("#conNav span").click(function(){
	var t=$(this).index();
	$(this).addClass("on").siblings().removeClass("on")
	$(".jTk").eq(t).css({display:"block"}).siblings(".jTk").css({display:"none"});
	})	
</script>
</body>
</html>