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
            <a href="productShow.jsp"  class="on">商品管理</a>
            <%--<a href="address.jsp">分类管理</a>--%>
            <a href="orderList.jsp" >订单管理</a>
        </div>
        <div id="vipRight">
            <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;">
            	<div class="width100 font24" style="height:60px;line-height:60px;text-indent:50px;background:#f5f8fa;border-bottom:1px solid #ddd;">商品管理</div>
                    <button class="" style="height:28px;width: 70px;margin-top:30px;margin-left:110px;"><a href="addProduct.jsp" style="color: #1d1d1d">添加商品</a></button>
                <div class="width40 font24" style="height:28px;width: 122px;margin-top:-25px;margin-left:200px;">
                            <select id="select1">
                                <option value="productId">按商品Id查询</option>
                                <option selected value="prductName">按商品名称查询</option>
                            </select>
                </div>
                        <div class="width60 font24" style="height:28px;width: 320px;border:1px solid #66c561;margin-top:-32px;margin-left:350px;">
                            <form>
                                <input type="text" placeholder="关键词查询" class="searCh">
                                <input type="button" class="btnSearh" value="搜索" onclick="search1();">
                            </form>

                        </div>
                <script type="text/javascript">
                  function search1() {
                    var option1 = $("#select1 option:selected").val();
                    var searCh21 = $(".searCh").val();
                   /* window.location.href="http://qingzhenwei.natapp1.cc/view/productSearchShow.jsp?"+option1+"="+searCh21;*/
                    $.ajax({
                            url : "/manage/product/search.do?"+option1+"="+searCh21,
                            type : "GET",
                            async : true,
                            dataType : 'json',
                            success : function(res) {
                                var status = res.status;
                                var data = res.data;
                                var list = data.list;
                                if(list==""||list==null){
                                    alert("搜索的东西不存在");
                                }
                                $("#productSelect div:gt(1)").hide();
                                for (var i = 0; i < list.length; i++) {
                                    var id = list[i].id;
                                    var name = list[i].name;
                                    var subtitle = list[i].subtitle;
                                    var price = list[i].price;
                                    var status1 = list[i].status;//1-在售，2-已下架，3-已删除
                                    if(1==status1){
                                        status1="在售";
                                    }else if(2==status1){
                                        status1="已下架";
                                    }
                                    else if(3==status1){
                                        status1="已删除";
                                    }
                                    $("#productSelect").append("<div  id=\"" + id + "\" class=\"width100 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" + id + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" +name+"<br>"+ subtitle + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 red width20\">" + price + "</div>\n" +
                                        "            <div name='pstatus' class=\"left_yh tcenter font16 c_66 width20\"><font>" + status1 + "</font>" +

                                        "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20 hidden_yh\">\n" +
                                        " <button name='updis' class=\"c_33 onHover\">上架</button>\n"+
                                        " <button name='dis' class=\"c_33 onHover\">下架</button>\n"+
                                        "                <a href='seeProduct.jsp?id=" + id + "'  class=\"c_33 onHover\">查看</a>\n"+
                                        "                <a href='updateProduct.jsp?id=" + id + "' class=\"c_33 onHover\">编辑</a>\n" +
                                        "<a name='del' class=\"c_33 onHover\">删除</a>\n"+
                                        "            </div>\n" +
                                        "        </div>");
                                    if("在售"==status1){
                                        $("button[name='updis']").hide();
                                    }else if("已下架"==status1){
                                        $("button[name='dis']").hide();
                                    }
                                    else if("已删除"==status1){
                                        $("a[name='del']").hide();
                                    }
                                }
                                //上架功能
                                $("button[name='updis']").click(function () {
                                    $.ajax({
                                        url : "/manage/product/setSaleStatus.do",
                                        type : "GET",
                                        data : {productId:$(this).parent().parent().attr('id'),status:1},
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

                                //下架功能
                                $("button[name='dis']").click(function () {
                                    $.ajax({
                                        url : "/manage/product/setSaleStatus.do",
                                        type : "GET",
                                        data : {productId:$(this).parent().parent().attr('id'),status:2},
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
                                //删除功能
                                $("a[name='del']").click(function () {
                                    $.ajax({
                                        url : "/manage/product/setSaleStatus.do",
                                        type : "GET",
                                        data : {productId:$(this).parent().parent().attr('id'),status:3},
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
                                /*for (var i = 0; i < list.length; i++) {
                                    var id = list[i].id;
                                    var name = list[i].name;
                                    var subtitle = list[i].subtitle;
                                    var price = list[i].price;
                                    var status1 = list[i].status;//1-在售，2-已下架，3-已删除
                                    if(1==status1){
                                        status1="在售";
                                    }else if(2==status1){
                                        status1="已下架";
                                    }
                                    else if(3==status1){
                                        status1="已删除";
                                    }
                                    $("#productSelect").append("<div  id=\"" + id + "\" class=\"width100 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" + id + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" +name+"<br>"+ subtitle + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 red width20\">" + price + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20\">" + status1 + "</div>\n" +
                                        "            <div class=\"left_yh tcenter font16 c_66 width20 hidden_yh\">\n" +
                                        "                <a href=\"javascript:void(0)\" class=\"c_33 onHover\">查看</a>\n"+
                                        "                <a href=\"javascript:void(0)\" class=\"c_33 onHover\">编辑</a>\n" +
                                        "                <a name='del' class=\"c_33 onHover\">删除</a>\n"+
                                        "            </div>\n" +
                                        "        </div>");
                                }*/
                            },
                            error : function (err) {
                                alert(err.msg);
                            }
                        });
                    }
                </script>
                <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;margin-top:26px;"id="productSelect">
                    <div class="width100" style="height:60px;line-height:60px;border-bottom:1px solid #ddd;background:#faf5f5;">
                        <div class="left_yh tcenter font20 width20">ID</div>
                        <div class="left_yh tcenter font20 width20">信息</div>
                        <div class="left_yh tcenter font20 width20">价格</div>
                        <div class="left_yh tcenter font20 width20">状态</div>
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
            $.ajax({
                url : "/manage/product/list.do",
                type : "GET",
                dataType	: "json",
                success     : function(res) {
                    var status = res.status;
                    var data = res.data;
                    var list = data.list;
                    for (var i = 0; i < list.length; i++) {
                        var id = list[i].id;
                        var name = list[i].name;
                        var subtitle = list[i].subtitle;
                        var price = list[i].price;
                        var status1 = list[i].status;//1-在售，2-已下架，3-已删除
                        if(1===status1){
                            status1="在售";
                        }else if(2===status1){
                            status1="已下架";
                        }
                        else if(3===status1){
                            status1="已删除";
                        }
                        $("#productSelect").append("<div  id=\"" + id + "\" class=\"width100 hidden_yh\" style=\"padding-top:20px;padding-bottom:20px;\">\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" + id + "</div>\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20\">" +name+"<br>"+ subtitle + "</div>\n" +
                            "            <div class=\"left_yh tcenter font16 red width20\">" + price + "</div>\n" +
                            "            <div name='pstatus' class=\"left_yh tcenter font16 c_66 width20\"><font>" + status1 + "</font>" +

                            "</div>\n" +
                            "            <div class=\"left_yh tcenter font16 c_66 width20 hidden_yh\">\n" +
                            " <button name='updis' class=\"c_33 onHover\">上架</button>\n"+
                            " <button name='dis' class=\"c_33 onHover\">下架</button>\n"+
                            "                <a href='seeProduct.jsp?id=" + id + "'  class=\"c_33 onHover\">查看</a>\n"+
                            "                <a href='updateProduct.jsp?id=" + id + "' class=\"c_33 onHover\">编辑</a>\n" +
                            "<a name='del' class=\"c_33 onHover\">删除</a>\n"+
                            "            </div>\n" +
                            "        </div>");
                      /*  if(status1==="在售"){
                            $("button[name='updis']").hide();
                        }else if(status1==="已下架"){
                            $("button[name='dis']").hide();
                        }
                        else if(status1==="已删除"){
                            $("a[name='del']").hide();
                        }*/
                    }
                    //上架功能
                    $("button[name='updis']").click(function () {
                        $.ajax({
                            url : "/manage/product/setSaleStatus.do",
                            type : "GET",
                            data : {productId:$(this).parent().parent().attr('id'),status:1},
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

                    //下架功能
                    $("button[name='dis']").click(function () {
                        $.ajax({
                            url : "/manage/product/setSaleStatus.do",
                            type : "GET",
                            data : {productId:$(this).parent().parent().attr('id'),status:2},
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
                    //删除功能
                    $("a[name='del']").click(function () {
                        $.ajax({
                            url : "/manage/product/setSaleStatus.do",
                            type : "GET",
                            data : {productId:$(this).parent().parent().attr('id'),status:3},
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
                },
                error       : function(err){
                    alert(err.statusText);
                }
            })

        })
</script>

</body>
</html>