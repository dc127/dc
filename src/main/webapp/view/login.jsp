<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>清真的味道-登陆</title>
    <link href="/css/sanbaosx.css" rel="stylesheet" type="text/css">
    <link href="/css/huiyuan.css" rel="stylesheet" type="text/css">
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
<div class="width100 hidden_yh">
	<div class="width1200 center_yh hidden_yh">
    	<a href="#" class="block_yh left_yh" style="margin-top:40px;"><img src="/images/logo2.png"></a>
        <div class="right_yh" style="height:28px;width:316px;border:2px solid #66c561;margin-top:48px;">
        	<form action="GiftListServlet" method="post">
                <input type="text" placeholder="关键词查询" class="searCh" name="s">
                <input type="submit" class="btnSearh" value="搜索">
            </form>
        </div>
    </div>
</div>
<span class="kong"></span>
<div class="kong"></div>
<div class="kong"></div>
<div class="kong"></div>
<div class="hui_login_bg">
  <div class="hui_login_con">
    <div class="hui_login-kuang">
      <div class="hui_login_h2">
        <h2>清真的味道</h2>
      </div>
    	<form name="mainform" method="post" action="" onsubmit="FormSubmit();">
							<input type="hidden" name="tokenkey" value="">
        <div class="hui_login-kuan">
          <label><span class="hui_login-kuan_span01"></span></label>
          <input name="username" id="username" type="text" class="login-input">
        </div>
        <div class="clear"></div>
        <div class="hui_login-kuan">
          <label><span class="hui_login-kuan_span02"></span></label>
          <input name="password" id="password" type="password" class="login-input">
                <a href=""  size="40"><input name="adminOrUser" type="radio" value="0" checked="checked">用户</a>
            <a><input name="adminOrUser"  type="radio" value="1">管理员</a>
        </div>
            <p class="hui_login_pp"><a href="">忘记登录密码？</a></p>
        <div class="hui_login_boot">
          <input name="submit" type="submit" class="hui_login_boot01" value="登  录" onclick="CheckPost();">
          <p>还没有清真的味道账户？<span class="hui_login_register"> <a href="enroll.jsp">免费注册</a></span></p>
        </div>
      </form>
    </div>
  </div>
</div>

<!--页脚-->
<div class="width100 hidden_yh" style="background:#66c561;margin-top:5px;">
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

<script type="text/javascript">
    $(function () {
        $.ajax({
            url : "/user/getUserInfo.do",
            type : "POST",
            async : true,
            dataType : 'json',
            success : function(data) {
                //var data=jQuery.parseJSON(data);
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
    function FormSubmit() {
        var adminOrUser = $("input[name='adminOrUser']:checked").val();
        alert(adminOrUser);
        if(adminOrUser==1){
            $.ajax({
                type  		: "POST",
                url   		: '/manage/user/login.do',
                dataType	: "json",
                data        :{username:$("#username").val(),password:$("#password").val()},
                success     : function(res){
                    //请求成功
                    if(0==res.status){
                        window.location.href='http://qingzhenwei.natapp1.cc/index.jsp';
                    }
                    //无登陆状态，需要强制登陆
                    else if(10==res.status){
                        alert("需要登录");
                    }
                    //请求数据错误
                    else if(1==res.status){
                        alert("登录错误"+res.msg);
                    }

                },
                error       : function(err){
                    alert(err.statusText);
                }

            });
        }else {
            //网络请求
            $.ajax({
                type: "POST",
                url: '/user/login.do',
                dataType: "json",
                data: {username: $("#username").val(), password: $("#password").val()},
                success: function (res) {
                    //请求成功
                    if (0 == res.status) {
                        window.location.href = 'http://qingzhenwei.natapp1.cc/index.jsp';
                        //alert(res.msg);
                    }
                    //无登陆状态，需要强制登陆
                    else if (10 == res.status) {
                        alert("需要登录");
                    }
                    //请求数据错误
                    else if (1 == res.status) {
                        alert("登录错误" + res.msg);
                    }

                },
                error: function (err) {
                    alert(err.statusText);
                }

            });
        }
    }
    function CheckPost ()
    {
        if (mainform.username.value == "")
        {
            alert("请填写用户名！");
            return false;
        }
        if (mainform.password.value.length < 5&& mainform.password.value=="")
        {
            alert("密码长度不能少于5个字符，并且不能为空");
            return false;
        }
        return true;
    }
</script>
</html>