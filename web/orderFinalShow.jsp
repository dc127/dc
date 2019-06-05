<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>二维码展示页</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.luara.0.0.1.min.js"></script>
    <script src="js/loginOrOut.js"></script><%--登录登出的js--%>
    <style type="text/css">
        .selectOn{
            border-style: outset;border-color: blue rgb(25%,35%,45%) #909090';
        }
    </style>
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
            <form>
                <input type="text" placeholder="关键词查询" class="searCh">
                <input type="button" class="btnSearh" value="搜索">
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
	<span>当前位置:</span><a href="index.jsp" class="c_66">首页></a><a href="peopleCenter.jsp" class="c_66">我的账户></a>
</div>
<div class="width100 hidden_yh">
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url : "/order/pay.do",
                type : "GET",
                data :{orderNo:${param.orderNo}},
                dataType	: "json",
                success     : function(res){
                    if(res.status == 0) {
                        var data = res.data;
                        var qrUrl =data.qrUrl;
                        $("#qrPath").attr("src",qrUrl);
                    }
                },
                error       : function(err){
                    alert(err.statusText);
                }
            });

        })
        window.onload = function () {
            setTimeout('myrefresh()', 10000); //指定10秒刷新一次 
        }


        function myrefresh() {
            $.ajax({
                url : "order/query_order_pay_status.do",
                type : "GET",
                data :{orderNo:${param.orderNo}},
                dataType	: "json",
                success     : function(res){
                    if(res.status == 0&res.data==true) {
                        window.location.href='http://qingzhenwei.natapp1.cc/peopleCenter.jsp';
                        alert("支付成功");
                    }
                },
                error       : function(err){
                    alert(err.statusText);
                }
            });
            window.location.reload();
        }
    </script>
	<!--top-->
    <div class="center_yh hidden_yh width1198" style="border:1px solid #ddd;height:510px;">
        <div class="left_yh width1198" style="height:500px;" align="center">
            <br>
            <h3 class="font20 font100 tcenter" style="color:#4f4f4f">订单提交成功，请您尽快支付。
                <br>
                订单号：<span>${param.orderNo}</span>
                <br>
            <span style="color: #c71818">请使用支付宝扫描下面二维码进行支付：</span></h3>
            <br>
            <img  id="qrPath" class="font14 font100 center" src=""  alt="图片加载失败" style="border:1px solid #ddd;height:310px;">
        </div>
    </div>
    <!--center-->
    
    <!--bottom-->
    
</div>
</body>
</html>
