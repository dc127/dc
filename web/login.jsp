<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>清真的味道-登陆</title>
<link href="css/sanbaosx.css" rel="stylesheet" type="text/css">
<link href="css/huiyuan.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.luara.0.0.1.min.js"></script>
<script language="javascript">
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
<!-- <script type="text/javascript">
var loing_input_err = "用户名或密码输入错误，请返回重新输入！";
var seccode_empty = "验证码输入错误或为空，请重新输入！";
$().ready(function() {
	$("#clickmenubotton li span").hover(function() {
		$(this).addClass("bgmenuhove2");
		$(this).parent().find("ul.subnav").slideDown('fast').show();
		$(this).parent().hover(function() {}, function(){
			$(this).parent().find("ul.subnav").fadeOut('fast');
			$(this).parent().find("span").removeClass("bgmenuhove2");
		});
	});
});
</script> -->
</head>
<body>
<div class="width100" style="height:25ox;background:#f0f0f0;">
	<div class="width1200 center_yh font14 c_66" style="height:25px;line-height:25px;">
    	<font class="left_yh">欢迎来到清真的味道•商城</font>
        <div class="right_yh" id="fast_jump">
        	<a href="login.jsp">登录</a>
            <b></b>
            <a href="enroll.jsp">注册</a>
            <b></b>
            <a href="address.jsp">个人中心</a>
            <b></b>
            
        </div>
    </div>
</div>
<div class="width100 hidden_yh">
	<div class="width1200 center_yh hidden_yh">
    	<a href="#" class="block_yh left_yh" style="margin-top:40px;"><img src="images/logo2.png"></a>
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
    	<form name="mainform" method="post" action="${pageContext.request.contextPath}/LoginServlet" onsubmit="return CheckPost();">
							<input type="hidden" name="tokenkey" value="">
        <div class="hui_login-kuan">
          <label><span class="hui_login-kuan_span01"></span></label>
          <input name="username" id="username" type="text" class="login-input">
        </div>
        <div class="clear"></div>
        <div class="hui_login-kuan">
          <label><span class="hui_login-kuan_span02"></span></label>
          <input name="password" id="password" type="password" class="login-input">
        </div>
        <p class="hui_login_pp"><a href="">忘记登录密码？</a></p>
        <div class="hui_login_boot">
          <input name="submit" type="submit" class="hui_login_boot01" value="登  录">
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
</html>