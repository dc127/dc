<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人中心</title>
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
	<span>当前位置:</span><a href="#" class="c_66">首页></a><a href="#" class="c_66">我的账户></a>
</div>
<div class="width100 hidden_yh" style="background:#66c561;padding-top:34px;padding-bottom:34px;">
	<div class="width1200 hidden_yh center_yh">
    	<div id="vipNav">
        	<a href="#" class="on">账户总览</a>
            <a href="peopleMessage.jsp" onclick="FormSubmit();">个人信息</a>
            <a href="order.jsp">我的订单</a>
            <%--<a href="collect.jsp">商品收藏</a>--%>
            <a href="shopCar.jsp">我的购物车</a>
            <a href="password.jsp">修改密码</a>
            <%--<a href="after-sales.jsp">售后管理</a>--%>
            <a href="address.jsp">收货地址</a>
        </div>
         <div id="vipRight">
        	<div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;">
            	<div class="width100 hidden_yh" style="height:122px;background:#f5f8fa;">
                	<div class="left_yh hidden_yh" style="margin-top:32px;margin-left:50px;">
                    	<img src="images/n,.jpg" width="60" height="60" class="left_yh" style="border-radius:50%;margin-right:34px;">
                        <div class="left_yh">
                        	<h3 class='font24 c_33 font100'>${sessionScope.currentUser.username }</h3>
                            <p class='font20 c_66' style='margin-top:4px;'>${sessionScope.currentUser.phone }</p>
                        </div>
                    </div>
                    <div class="left_yh hidden_yh font20" style="margin-left:150px;line-height:122px;">
                    	<a href="address.jsp" style="color:#ff5802;" class="onHover">我的收货地址</a>
                    </div>
                    <div class="left_yh hidden_yh font20" style="margin-left:150px;line-height:122px;">
                    	<a href="collect.jsp" style="color:#ff5802;" class="onHover">我的收藏</a>
                    </div>
                </div>
                <ul class="width100 hidden_yh" style="height:78px;border-top:1px solid #ddd;">
                    <li  id="allCount"  class="left_yh tcenter font20" style="width:233.5px;border-right:1px solid #ddd;height:14px;margin-top:32px;line-height:10px;">待付款<font>(0)</font></li>
                    <li class="left_yh tcenter font20" style="width:233.5px;border-right:1px solid #ddd;height:14px;margin-top:32px;line-height:10px;">待发货<font>(0)</font></li>
                    <li class="left_yh tcenter font20" style="width:233.5px;border-right:1px solid #ddd;height:14px;margin-top:32px;line-height:10px;">待收货<font>(0)</font></li>
                    <li class="left_yh tcenter font20" style="width:233.5px;margin-top:32px;line-height:10px;">待评价<font>(0)</font></li>
                </ul>
            </div>
            <div class="hidden_yh bj_fff" id="orderGet" style="width:938px;border:1px solid #ddd;margin-top:26px;">
            	<div class="width100 font24" style="height:60px;line-height:60px;text-indent:50px;background:#f5f8fa;border-bottom:1px solid #ddd;">最近订单</div>
                <div class="width100" style="height:60px;line-height:60px;border-bottom:1px solid #ddd">
                	<div class="left_yh tcenter font20" style="width:16.4%">订单号</div>
                    <div class="left_yh tcenter font20" style="width:16.4%">金额</div>
                    <div class="left_yh tcenter font20" style="width:18%">下单时间</div>
                    <div class="left_yh tcenter font20" style="width:16.4%">订单状态</div>
                    <div class="left_yh tcenter font20" style="width:16.4%">支付方式</div>
                    <div class="left_yh tcenter font20" style="width:16.4%">操作</div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $.ajax({
                            url : "order/list.do?pageSize=10",
                            type : "GET",
                            async : true,
                            dataType : 'json',
                            success : function(res) {
                                if(res.status == 0){
                                    var data= res.data;
                                    var list = data.list;
                                    for(var i=0;i<list.length;i++){
                                        var orderNo = list[i].orderNo;//订单号
                                        var payment = list[i].payment;//订单金额
                                        var createTime = list[i].createTime;//下单时间
                                       var paymentTypeDesc= list[i].paymentTypeDesc; //支付方式
                                        var statusDesc = list[i].statusDesc;//状态
                                        var allCount = list.length;
                                        $("#allCount font").text("("+allCount+")");
                                        $("#orderGet").append("<div class=\"width100 hidden_yh\" style=\"height:45px;line-height:45px;\">\n" +
                                            "                \t<div class=\"left_yh tcenter font20 c_66\" style=\"width:16.4%\">"+orderNo+"</div>\n" +
                                            "                    <div class=\"left_yh tcenter font20 red\" style=\"width:16.4%\">￥"+payment+"</div>\n" +
                                            "                    <div class=\"left_yh tcenter font20 c_66\" style=\"width:18%\">"+createTime+"</div>\n" +
                                            "                    <div class=\"left_yh tcenter font20 c_66\" style=\"width:16.4%\">"+statusDesc+"</div>\n" +
                                            "                    <div class=\"left_yh tcenter font20 c_66\" style=\"width:16.4%\">"+paymentTypeDesc+"</div>\n" +
                                            "                    <div class=\"left_yh tcenter font20 c_66\" style=\"width:16.4%\"><a style='color: #1d1d1d;' href='http://qingzhenwei.natapp1.cc/orderFinalShow.jsp?orderNo="+orderNo+"'>"+statusDesc+"</a></div>\n" +
                                            "                </div>");
                                    }
                                }
                            },
                            error : function (err) {
                                alert(err.msg);
                            }
                        });
                    })
                </script>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url : "/user/getUserInfo.do",
            type : "POST",
            async : true,
            dataType : 'json',
            success : function(data) {
                if(data.status===0){
                    $(".not-login").hide();
                    $(".login").show();
                }else{
                    $(".login").hide();
                    $(".not-login").show();
                }
            },
            error : function (err) {
                alert(err.msg);
            }
        });
    })
    function Logout() {
        //网络请求
        $.ajax({
            type  		: "POST",
            url   		: '/user/logout.do',
            dataType	: "json",
            success     : function(res){
                //请求成功
                if(0 === res.status){
                    window.location.href='http://localhost:8888/index.jsp';
                    alert(res.msg);
                }
                //无登陆状态，需要强制登陆
                else if(10 === res.status){
                    alert("需要登录");
                }
                //请求数据错误
                else if(1  === res.status){
                    alert("登录错误"+res.msg);
                }

            },
            error       : function(err){
                alert(err.statusText);
            }

        });
    }
</script>
</html>