<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>无标题文档</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <script src="/js/jquery-1.8.3.min.js"></script>
    <script src="/js/jquery.luara.0.0.1.min.js"></script>
    <script src="/js/loginOrOut.js"></script><%--登录登出的js--%>
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
<!--导航条-->
<div class="width100 hidden_yh">
	<div class="width1200 center_yh hidden_yh">
    	<a href="#" class="block_yh left_yh"style="margin-top:40px;margin-left:440px;"><img src="/images/logo2.png"></a>
    </div>
</div>
<!--当前位置-->
<div class="width1200 center_yh hidden_yh font14" style="height:40px;line-height:40px;">
	<%--<span>当前位置:</span><a href="#" class="c_66">首页></a><a href="#·" class="c_66">我的账户></a>--%>
</div>
<div class="width100 hidden_yh" style="background:#66c561;padding-top:34px;padding-bottom:34px;">
	<div class="width1200 hidden_yh center_yh">
    	<div id="vipNav">
            <a href="productShow.jsp"  >商品管理</a>
            <%--<a href="address.jsp">分类管理</a>--%>
            <a href="orderList.jsp" class="on">订单管理</a>
        </div>
        <div id="vipRight">
            <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;">
            	<div class="width100 font24" style="height:60px;line-height:60px;text-indent:50px;background:#f5f8fa;border-bottom:1px solid #ddd;">订单管理</div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">订单号：</div>
                    <input type="text" style="width:243px;border:none;outline:none;height:30px;text-indent:10px;" name="orderNo" readonly>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">创建时间：</div>
                    <input type="text" style="width:243px;border:none;outline:none;height:30px;text-indent:10px;" name="createTime" readonly>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">收件人：</div>
                    <input type="text" style="width:243px;border:none;outline:none;height:30px;text-indent:10px;" name="receiverName" readonly>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">订单状态：</div>
                        <input type="text" style="width:83px;border:none;outline:none;height:30px;text-indent:10px;" name="statusDesc" readonly>
                    <button id="fahuo">立即发货</button>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">支付方式：</div>
                    <input type="text" style="width:243px;border:none;outline:none;height:30px;text-indent:10px;" name="paymentTypeDesc" readonly>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">订单金额：</div>
                    <input type="text" style="width:243px;border:none;outline:none;height:30px;text-indent:10px;" name="payment" readonly>
                </div>
                <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;margin-top:26px;"id="productSelect">
                    <div class="width120" style="height:60px;line-height:60px;border-bottom:1px solid #ddd;background:#faf5f5;">
                        <div class="left_yh tcenter font20 width20">商品图片</div>
                        <div class="left_yh tcenter font20 width20">商品信息</div>
                        <div class="left_yh tcenter font20 width20">单价</div>
                        <div class="left_yh tcenter font20 width20">数量</div>
                       <%-- <div class="left_yh tcenter font20 width20">创建时间</div>--%>
                        <div class="left_yh tcenter font20 width20">合计</div>
                    </div>
            </div>
        </div>
    </div>
</div>
</div>
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
        $(function () {
            $.ajax({
                url : "/manage/order/detail.do",
                type : "GET",
                data:{orderNo:${param.orderNo}},
                dataType	: "json",
                success     : function(res) {
                    var status = res.status;
                    var data = res.data;
                    var list = data.orderItemVoList;
                    var orderNo = data.orderNo;
                    var createTime = data.createTime;
                    var receiverName = data.receiverName;
                    var statusDesc = data.statusDesc;
                    var imageHost = data.imageHost;
                    var payment = data.payment;
                    var paymentTypeDesc = data.paymentTypeDesc;
                    $("input[name='orderNo']").val(orderNo);
                    $("input[name='createTime']").val(createTime);
                    $("input[name='receiverName']").val(receiverName);
                    $("input[name='statusDesc']").val(statusDesc);
                    $("input[name='paymentTypeDesc']").val(paymentTypeDesc);
                    $("input[name='payment']").val(payment);
                    if(statusDesc!="已付款"){
                    $("#fahuo").hide();
                    }
                    for (var i = 0; i < list.length; i++) {
                        var productName = list[i].productName;
                        var currentUnitPrice = list[i].currentUnitPrice;
                        var statusDesc = list[i].statusDesc;
                        var totalPrice = list[i].totalPrice;
                        var quantity = list[i].quantity;
                        var productImage = list[i].productImage;
                        $("#productSelect").append("<div  id=\"" + orderNo + "\" class=\"width120 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">"
                            +"<img src='"+imageHost+productImage+"' width='100px' style='margin-left: 20px;'></div>\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" +productName+"</div>\n" +
                            "            <div class=\"left_yh tcenter font16 red width20\">" + currentUnitPrice + "</div>\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" + quantity + "</div>\n" +
                           /* "            <div class=\"left_yh tcenter font16 c_66 width20\">" + createTime + "</div>\n" +*/
                            "            <div class=\"left_yh tcenter font16 c_66 width20 hidden_yh\">\n" +totalPrice+               "            </div>\n" +
                            "        </div>");
                    }
                },
                error       : function(err){
                    alert(err.statusText);
                }
            })
        })
</script>

</body>
</html>