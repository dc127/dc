<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>收货地址</title>
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
            <a href="#b">电子礼品</a>
            <a href="#c">礼盒类产品</a>
            <a href="#d">高温熟食</a>
            <a href="#e">点心小吃</a>
        </div>
    </div>
</div>
<!--当前位置-->
<div class="width1200 center_yh hidden_yh font14" style="height:40px;line-height:40px;">
	<span>当前位置:</span><a href="UserOverviewServlet" class="c_66">首页></a><a href="#" class="c_66">我的账户></a>
</div>
<div class="width100 hidden_yh" style="background:#66c561;padding-top:34px;padding-bottom:34px;">
	<div class="width1200 hidden_yh center_yh">
    	<div id="vipNav">
        	  		<a href="peopleCenter.jsp" >账户总览</a>
            <a href="peopleMessage.jsp">个人信息</a>
            <a href="order.jsp">我的订单</a>
            <%--<a href="collect.jsp">商品收藏</a>--%>
            <a href="shopCar.jsp">我的购物车</a>
            <a href="password.jsp">修改密码</a>
            <%--<a href="after-sales.jsp">售后管理</a>--%>
            <a href="address.jsp" class="on">收货地址</a>
        </div>
        <div id="vipRight">
            <div class="font24" style="height:60px;line-height:60px;text-indent:50px;background:#f5f8fa;width:938px;border:1px solid #ddd;">
            	收货地址
            	<span class="right_yh font16 bj_fff block_yh tcenter onHoverr" style="width:110px;height:30px;border:1px solid #ddd;line-height:30px; text-indent:0;margin-top:14px;margin-right:50px;cursor:pointer;">
            	添加收货地址
            	</span>
         	</div>
            <div class="bj_fff hidden_yh" style="width:838px;border:1px solid #ddd;margin-top:29px;padding:50px;">
            	<h3 class="font20 font100 c_33">编辑地址</h3>
            	<form action="" method="get">
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>收货地区：</div>
                    <div class="left_yh">
                        <select name="province" id="province" style="padding:5px;border-color:#ddd;outline:none;">
                            <option value="请选择">请选择</option>
                        </select>
                        <select name="city" id="city" style="padding:5px;border-color:#ddd;outline:none;">
                            <option value="请选择">请选择</option>
                        </select>
                        <select name="town" id="town" style="padding:5px;border-color:#ddd;outline:none;">
                            <option value="请选择">请选择</option>
                        </select>
                    </div>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>具体地址：</div>
                    <input type="text" style="width:500px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;" name="address">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>收货人姓名：</div>
                    <input type="text" style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;" name="username">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>联系电话：</div>
                    <input type="text" style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;" name="telephone">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                	<div class="left_yh font16 tright" style="width:120px;"><font class="red">*</font>邮编：</div>
                    <input type="text" style="width:243px;border:1px solid #ddd;outline:none;height:30px;text-indent:10px;" name="postcode">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:10px;">
                	<div class="left_yh font16 tright" style="width:120px;height:32px;"></div>
                	<input type="checkbox">&nbsp;设为默认
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:10px;">
                	<input type="submit" value="确定" class="left_yh block_yh font16 tcenter ff5802" style="width:112px;height:33px;line-height:33px;margin-left:120px;" name="queding">
                    <input type="submit" value="修改" class="left_yh block_yh font16 tcenter ff5802" style="width:112px;height:33px;line-height:33px;margin-left:120px;" name="xiugai">
                    <input type="reset" value="取消" class="left_yh block_yh font16 tcenter onfff" style="width:112px;height:33px;line-height:33px;margin-left:17px;" >
                </div>
				</form>
				<script src="js/area.js"></script>
                <script src="js/select.js"></script>
            </div>
            <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;margin-top:26px;"id="addressSelect">
                <div class="width100" style="height:60px;line-height:60px;border-bottom:1px solid #ddd;background:#faf5f5;">
                	<div class="left_yh tcenter font20 width25">地址</div>
                    <div class="left_yh tcenter font20 width25">收货人</div>
                    <div class="left_yh tcenter font20 width25">联系电话</div>
                    <div class="left_yh tcenter font20 width25">操作</div>
                </div>
                <script type="text/javascript">
                    $(function () {
                        $("input[name='xiugai']").hide();
                        //添加地址
                        $("input[name='queding']").click(function () {
                            var userId=${sessionScope.currentUser.id};
                            var receiverName = $("input[name='username']").val();
                            var receiverPhone = $("input[name='telephone']").val();
                            var receiverMobile = $("input[name='telephone']").val();
                            var receiverProvince = $("#province").val();
                            var receiverCity = $("#city").val()+$("#town").val();
                            var receiverAddress = $("input[name='address']").val();
                            var receiverZip = $("input[name='postcode']").val();
                            if(receiverName!=""&receiverPhone!=""&receiverMobile!=""
                                &receiverProvince!=""&receiverCity!=""&receiverAddress!=""&receiverZip!=""){
                                $.ajax({
                                    url : "shipping/add.do",
                                    type : "GET",
                                    data :{userId:userId,receiverName:receiverName,receiverPhone:receiverPhone,receiverMobile:receiverMobile,receiverProvince:receiverProvince,receiverCity:receiverCity,receiverAddress:receiverAddress,receiverZip:receiverZip},
                                    dataType	: "json",
                                    success     : function(res) {
                                        var status = res.status;
                                        if(status==0){
                                            alert(res.msg);
                                        }
                                    },
                                    error       : function(err){
                                        alert(err.statusText);
                                    }
                                })
                            }else {
                                alert("请填写正确的地址信息");
                            }

                        })
                        //获取地址
                        $.ajax({
                            url : "shipping/list.do",
                            type : "GET",
                            dataType	: "json",
                            success     : function(res) {
                                var status = res.status;
                                var data = res.data;
                                var list = data.list;
                                for (var i = 0; i < list.length; i++) {
                                    var shippingId = list[i].id;
                                    var receiverName = list[i].receiverName;//收货人
                                    var receiverMobile = list[i].receiverMobile;//手机号
                                    var receiverProvince = list[i].receiverProvince;//省
                                    var receiverCity = list[i].receiverCity;//城市
                                    var receiverAddress = list[i].receiverAddress;//具体地址
                                    var address = receiverProvince+"省" + receiverCity +"市"+ receiverAddress;
                                    var receiverDistrict = list[i].receiverDistrict;
                                    var receiverZip = list[i].receiverZip;
                                    $("#addressSelect").append("<div  id=\"" + shippingId + "\" class=\"width100 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width25\">" + address + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 red width25\">" + receiverName + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width25\">" + receiverMobile + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width25 hidden_yh\">\n" +
                                        "                <a  href=\"javascript:void(0)\" name='update' class=\"c_33 onHover\">编辑</a>\n"+
"                <a href=\"javascript:void(0)\" name='del' class=\"c_33 onHover\">删除</a>\n" +
                                       /* "                <a id=\"selectAdrees" + i + "\" class=\"c_33 onHover\">设为默认</a>\n" +*/
                                        "            </div>\n" +
                                        "        </div>");
                                }
                                $("a[name='del']").click(function () {
                                    $.ajax({
                                        url : "shipping/del.do",
                                        type : "GET",
                                        data :{shippingId:shippingId},
                                        dataType	: "json",
                                        success     : function(res) {
                                                alert(res.data);
                                            window.location.reload();
                                        },
                                        error       : function(err){
                                            alert(err.statusText);
                                        }
                                    })
                                })
                                $("a[name='update']").click(function () {
                                    //修改地址
                                    $("input[name='username']").val(receiverName);
                                    $("input[name='telephone']").val(receiverMobile);
                                    // $("#province").val(receiverProvince);
                                    // $("#city").val(receiverCity);
                                    // $("#town").val(receiverDistrict);
                                    $("input[name='address']").val(receiverAddress);
                                    $("input[name='postcode']").val(receiverZip);
                                    $("input[name='queding']").hide();
                                    $("input[name='xiugai']").show();

                                    })
                                //修改确认
                                $("input[name='xiugai']").click(function () {
                                    var id=shippingId;
                                    var userId=${sessionScope.currentUser.id};
                                    var receiverName = $("input[name='username']").val();
                                    var receiverPhone = $("input[name='telephone']").val();
                                    var receiverMobile = $("input[name='telephone']").val();
                                    var receiverProvince = $("#province").val();
                                    var receiverCity = $("#city").val();
                                    var receiverDistrict = $("#town").val();
                                    var receiverAddress = $("input[name='address']").val();
                                    var receiverZip = $("input[name='postcode']").val();
                                    if(receiverName!=""&receiverPhone!=""&receiverMobile!=""
                                        &receiverProvince!=""&receiverCity!=""&receiverAddress!=""&receiverZip!=""){
                                        $.ajax({
                                            url : "shipping/update.do",
                                            type : "GET",
                                            data :{id:id,userId:userId,receiverName:receiverName,receiverPhone:receiverPhone,receiverMobile:receiverMobile,receiverProvince:receiverProvince,receiverCity:receiverCity,receiverAddress:receiverAddress,receiverZip:receiverZip},
                                            dataType	: "json",
                                            success     : function(res) {
                                                var status = res.status;
                                                if(status==0){
                                                    alert(res.data);
                                                }
                                            },
                                            error       : function(err){
                                                alert(err.statusText);
                                            }
                                        })
                                    }else {
                                        alert("请填写正确的地址信息");
                                    }

                                })
                            },
                                error       : function(err){
                                    alert(err.statusText);
                                }
                            })
                    })
                </script>
            </div>
    	</div>
    </div>    
</div>
</body>

</html>