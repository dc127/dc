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
            <a href="#b">电子礼品</a>
            <a href="#c">礼盒类产品</a>
            <a href="#d">高温熟食</a>
            <a href="#e">点心小吃</a>
        </div>
    </div>
</div>
<!--当前位置-->
<div class="width1200 center_yh hidden_yh font14" style="height:40px;line-height:40px;">
	<span>当前位置:</span><a href="#" class="c_66">首页></a><a href="#" class="c_66">我的账户></a><a href="#" class="c_66">购物车</a>
</div>
<!--全部商品-->
<div class="width1200 hidden_yh center_yh font20">全部商品<font class="red" id="allCount">(2)</font></div>
<div class="width1198 hidden_yh center_yh" style="border:1px solid #ddd;margin-top:18px;min-height:100px;" id="addressSelect" >
        <div class="width100" style="height:60px;line-height:60px;border-bottom:1px solid #ddd;background:#faf5f5;">
            <div class="left_yh tcenter font20 width25">地址</div>
            <div class="left_yh tcenter font20 width25">收货人</div>
            <div class="left_yh tcenter font20 width25">联系电话</div>
            <div class="left_yh tcenter font20 width25">操作</div>
        </div>
        <!--一条-->
    <script type="text/javascript">
        $(function () {
        $.ajax({
            url : "shipping/list.do",
            type : "GET",
            dataType	: "json",
            success     : function(res){
                var status= res.status;
                var data = res.data;
                var list = data.list;
                for(var i =0;i<list.length;i++){
                    var shippingId = list[i].id;
                    var receiverName = list[i].receiverName;//收货人
                    var receiverMobile = list[i].receiverMobile;//手机号
                    var receiverProvince = list[i].receiverProvince;//省
                    var receiverCity = list[i].receiverCity;//城市
                    var receiverAddress = list[i].receiverAddress;//具体地址
                    var address = receiverProvince+receiverCity+receiverAddress;
                $("#addressSelect").append("<div  id=\""+shippingId+"\" class=\"width100 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                    "            <div class=\"left_yh tcenter font16 c_66 width25\">"+address+"</div>\n" +
                    "            <div class=\"left_yh tcenter font16 red width25\">"+receiverName+"</div>\n" +
                    "            <div class=\"left_yh tcenter font16 c_66 width25\">"+receiverMobile+"</div>\n" +
                    "            <div class=\"left_yh tcenter font16 c_66 width25 hidden_yh\">\n" +
                    "                <%--<a href=\"javascript:void(0)\" class=\"c_33 onHover\">编辑</a>\n"+
"                <a href=\"javascript:void(0)\" class=\"c_33 onHover\">删除</a>--%>\n" +
                    "                <a id=\"selectAdrees"+i+"\" class=\"c_33 onHover\">选择</a>\n" +
                    "            </div>\n" +
                    "        </div>");
                $("#selectAdrees"+i).click(function(){
                    $.ajax({
                        url : "/shipping/select.do",
                        type : "GET",
                        data :{shippingId:$(this).parent().parent().attr('id')},
                        dataType	: "json",
                        success     : function(res){
                            var status =  res.status;
                            var Id = res.data.id;
                            if(status ==0){
                               $("#"+Id+"").addClass("selectOn");
                               $(".ifJs").click(function(){
                                   $.ajax({
                                       url : "/order/create.do",
                                       type : "GET",
                                       data :{shippingId:Id},
                                       dataType	: "json",
                                       success     : function(res){
                                           var status = res.status;
                                           if(status == 0){
                                           var data =res.data;
                                           var orderNo  = data.orderNo;
                                               window.location.href='http://qingzhenwei.natapp1.cc/orderFinalShow.jsp?orderNo='+orderNo;
                                           }

                                       },
                                       error       : function(err){
                                           alert(err.statusText);
                                       }
                                   });
                               })
                            }
                        },
                        error       : function(err){
                            alert(err.statusText);
                        }
                    });
                })
                }
            },
            error       : function(err){
                alert(err.statusText);
            }
        })
        })
    </script>
    </div>
<!--商品详情-->
<div class="width1198 hidden_yh center_yh" style="border:1px solid #ddd;margin-top:18px;min-height:300px;" id="productdetil">
	<div class="width100 hidden_yh font14" style="height:32px;line-height:32px;background:#66c561;text-indent:21px;color:#000;font-weight:600;border-bottom:1px solid #ddd;">商品详情</div>
    <!--列表头部-->
    <div class="width100 hidden_yh font14" style="height:42px;line-height:42px;border-bottom:1px solid #ddd;">
    	<div class="left_yh tcenter font14" style="width:486px;">商品</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">价格</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">数量</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">小计</div>
    </div>
</div>
<!--合计-->
<div class="width1198 center_yh" style="height:60px;background:#66c561;border:1px solid #ddd;margin-top:40px;">
	<div class="center_yh hidden_yh" style="width:1178px;height:60px;margin-left:20px;">
    	<%--<div class="ifAll"><b><img src="images/xzwxz2.png"></b><font>全选</font></div>--%>
        <div class="sXd">
        	<%--<div class="sXd1">已选商品(<font style="color:#cb1c20">0</font>)件</div>--%>
            <div class="sXd2">合计(不含运费):￥<font style="color:#cb1c20" id="zjJg">0</font></div>
            <a href="javascript:void(0)" class="ifJs">提交订单</a>
        </div>
    </div>
</div>
<script>
    $(function () {
        $.ajax({
            url : "/cart/list.do",
            type : "GET",
            dataType	: "json",
            success     : function(res){
                var status= res.status;
                var data = res.data;
                var array = data.cartProductVoList;
                var imageHost = data.imageHost;
                var allCount = array.length;
                $("#allCount").text("("+allCount+")");
                for(var i =0;i<array.length;i++){
                    var productId = array[i].productId;
                    var name = array[i].productName;//商品的名称
                    var productPrice = array[i].productPrice;
                    var productSubtitle = array[i].productSubtitle;
                    var productTotalPrice = array[i].productTotalPrice;
                    var quantity = array[i].quantity;
                    var prductMainImage = array[i].prductMainImage;
                    $("#productdetil").append(
                        " <div class=\"speCific\">\n" +

                        "                <div class=\"xzSp\">\n" +
                        "                <img src="+imageHost+prductMainImage+">\n" +
                        "                <div class=\"xzSpIn\">\n" +
                        "                <h3 class=\"font16 c_33 font100\">"+name+"</h3>\n" +
                        "            <p class=\"font13 c_99\">"+productSubtitle+"</p>\n" +
                        "            </div>\n" +
                        "            </div>\n" +
                        "            <div class=\"xzJg\">￥<font>"+productPrice+"</font></div>\n" +
                        "            <div class=\"xzSl\">\n" +
                        "                <div class=\"xzSlIn\">\n" +
                        "                <!--<b class=\"Amin\">减</b>\n-->" +
                        "                <input type=\"text\" value="+quantity+" readonly class=\"cOnt\">\n" +
                        "                <!--<b style=\"border-right:none;border-left:1px solid #ddd;\" class=\"Aadd\" onClick=\"zj(this)\">加</b>\n-->" +
                        "                </div>\n" +
                        "                </div>\n" +
                        "                <div class=\"xzXj\">￥<font>"+productTotalPrice+"</font></div>\n" +
                        "            <div class=\"xzCz\">\n" +
                        "                <div class=\"xzCzIn\">\n" +
                        "                <!--<a href=\"javascript:void(0)\" class=\"jRscj\">移入收藏夹</a>\n-->" +
                        "               <!-- <a  class=\"Dels\">删除</a>\n-->" +
                        "                </div>\n" +
                        "                </div>\n" +
                        "                </div>");
                }

                $.ajax({
                    url : "/cart/selectAll.do",
                    type : "GET",
                    dataType	: "json",
                    // alert("已全勾选");
                    success     : function(res){
                        var status =  res.status;
                        if(status ==0){
                            var carttotalPrice = res.data.carttotalPrice;
                            $("#zjJg").text(carttotalPrice);
                        }
                    },
                    error       : function(err){
                        alert(err.statusText);
                    }
                });

            },
            error       : function(err){
                alert(err.statusText);
            }

        });
    })
</script>
</body>
</html>