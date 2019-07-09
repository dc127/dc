<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
            <%--<a href="collect.jsp">商品收藏</a>--%>
            <a href="shopCar.jsp">我的购物车</a>
            <a href="password.jsp" class="on">修改密码</a>
            <%--<a href="after-sales.jsp">售后管理</a>--%>
            <a href="address.jsp">收货地址</a>
        </div>
        <script type="text/javascript">
            function restPassword() {
                if($("#newPassword").val()==$("#newPassword1").val()){
                    $.ajax({
                        url : "/user/restPassword.do",
                        type : "POST",
                        data        :{oldPassword:$("#oldPassword").val(),newPassword:$("#newPassword").val()},
                        dataType	: "json",
                        success     : function(res){
                            if(res.status == 0) {
                                alert(res.msg);
                            }else if(res.status==1){
                                alert(res.msg);
                            }else{
                                alert("修改密码失败，请重试");
                            }
                        },
                        error       : function(err){
                            alert(err.statusText);
                        }
                    });
                }else {
                    alert("新密码不同，请重新输入");
                }
            }
        </script>
        <div id="vipRight">
            <div class="font24" style="height:60px;line-height:60px;text-indent:50px;background:#f5f8fa;width:938px;border:1px solid #ddd;">
            	修改密码
         	</div>
            <div class="bj_fff hidden_yh" style="width:838px;border:1px solid #ddd;margin-top:29px;padding:50px;">
                <div class="width100" style="height:32px;line-height:32px;">
                	<div   class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>旧密码：</div>
                    <input id="oldPassword" type="password" style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div  class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>新密码：</div>
                    <input id="newPassword" type="password" style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;">
                </div>
                <div  class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>确认新密码：</div>
                    <input id="newPassword1" type="password" style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:83px;">
                	<a onclick="restPassword();" class="left_yh block_yh font16 tcenter ff5802" style="width:244px;height:33px;line-height:33px;margin-left:120px;">保存</a>
                </div>
            </div>
    	</div>
    </div>    
</div>
</body>
</html>