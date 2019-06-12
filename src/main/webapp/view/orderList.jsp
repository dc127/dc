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
                <div class="width40 font24" style="height:28px;width:36px;margin-top:48px;margin-left:130px;">
                    <select id="select1">
                        <option selected value="orderNo">按订单号查询</option>
                        <%--<option  value="prductName">按收件人姓名查询</option>--%>
                    </select>
                </div>
                <div class="width60 font24" style="height:28px;width:316px;border:1px solid #66c561;margin-top:-32px;margin-left:280px;">
                    <form>
                        <input type="text" placeholder="关键词查询" class="searCh">
                        <input type="button" class="btnSearh" value="搜索" onclick="search2();">
                    </form>
                </div>
                <script type="text/javascript">
                    function search2() {
                        var option1 = $("#select1 option:selected").val();
                        var searCh21 = $(".searCh").val();
                        $.ajax({
                            url : "/manage/order/search.do?"+option1+"="+searCh21,
                            type : "GET",
                            async : true,
                            dataType : 'json',
                            success : function(res) {
                                var status = res.status;
                                if(status==0){
                                var data = res.data;
                                var list = data.list;
                                if(list==""||list==null){
                                    alert("搜索的东西不存在");
                                }
                                $("#productSelect div:gt(1)").hide();
                                for (var i = 0; i < list.length; i++) {
                                    var orderNo = list[i].orderNo;
                                    var receiverName = list[i].receiverName;
                                    var payment = list[i].payment;
                                    var statusDesc = list[i].statusDesc;
                                    var createTime = list[i].createTime;
                                    $("#productSelect").append("<div  id=\"" + orderNo + "\" class=\"width120 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" + orderNo + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" +receiverName+"</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 red width20\">" + statusDesc + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" + payment + "</div>\n" +
                                        /* "            <div class=\"left_yh tcenter font16 c_66 width20\">" + createTime + "</div>\n" +*/
                                        "            <div class=\"left_yh tcenter font16 c_66 width20 hidden_yh\">\n" +
                                        "                <a href=\"orderDetail.jsp?orderNo="+orderNo+"\" class=\"c_33 onHover\">查看</a>\n"+
                                        "            </div>\n" +
                                        "        </div>");
                                }
                                }else {
                                alert(res.msg);
                                }
                            },
                            error : function (err) {
                                alert(err.msg);
                            }
                        });
                    }
                </script>
                <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;margin-top:26px;"id="productSelect">
                    <div class="width120" style="height:60px;line-height:60px;border-bottom:1px solid #ddd;background:#faf5f5;">
                        <div class="left_yh tcenter font20 width20">订单号</div>
                        <div class="left_yh tcenter font20 width20">收件人</div>
                        <div class="left_yh tcenter font20 width20">订单状态</div>
                        <div class="left_yh tcenter font20 width20">订单总价</div>
                       <%-- <div class="left_yh tcenter font20 width20">创建时间</div>--%>
                        <div class="left_yh tcenter font20 width20">操作</div>
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
                url : "/manage/order/list.do?pageSize=10",
                type : "GET",
                dataType	: "json",
                success     : function(res) {
                    var status = res.status;
                    var data = res.data;
                    var list = data.list;
                    for (var i = 0; i < list.length; i++) {
                        var orderNo = list[i].orderNo;
                        var receiverName = list[i].receiverName;
                        var payment = list[i].payment;
                        var statusDesc = list[i].statusDesc;
                        var createTime = list[i].createTime;
                        $("#productSelect").append("<div  id=\"" + orderNo + "\" class=\"width120 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" + orderNo + "</div>\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" +receiverName+"</div>\n" +
                            "            <div class=\"left_yh tcenter font16 red width20\">" + statusDesc + "</div>\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" + payment + "</div>\n" +
                           /* "            <div class=\"left_yh tcenter font16 c_66 width20\">" + createTime + "</div>\n" +*/
                            "            <div class=\"left_yh tcenter font16 c_66 width20 hidden_yh\">\n" +
                            "                <a href=\"orderDetail.jsp?orderNo="+orderNo+"\" class=\"c_33 onHover\">查看</a>\n"+
                            "            </div>\n" +
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