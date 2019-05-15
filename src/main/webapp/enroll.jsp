<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>清真的味道-注册</title>

<link href="css/sanbaosx.css" rel="stylesheet" type="text/css">
<link href="css/huiyuan.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.yysweb.js"></script>
<script type="text/javascript" src="js/basicrun.js"></script>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.luara.0.0.1.min.js"></script>
<script type="text/javascript">

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

</script>
<!--验证码  -->
<script type="text/javascript">
    $(function() {

    });

    function changeImg() {        
        var imgSrc = $("#imgObj");    
        var src = imgSrc.attr("src");        
        imgSrc.attr("src", chgUrl(src));
    }
    
    // 时间戳
    // 为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
    function chgUrl(url) {
        var timestamp = (new Date()).valueOf();
        url = url.substring(0, 20);
        if ((url.indexOf("&") >= 0)) {
            url = url + "×tamp=" + timestamp;
        } else {
            url = url + "?timestamp=" + timestamp;
        }
        return url;
    }

</script>

<script type="text/javascript">
	var username_len = "错误：用户名为空或输入错误";
	var email_err = "错误：E-mail为空或者格式错误";
	var password_len = "错误：密码为空或输入错误";
	var password_len2 = "错误：密码过于简单，请返回重新输入";
	var password2_empty = "错误：确认密码为空或输入错误";
	var password_disaffinity = "错误：两次密码输入不一致，请重新输入";
	var agree_empty = "提示：请确认注册条款";
	var seccode_empty = "验证码输入错误或为空，请重新输入！";
</script>
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
<div class="kong"></div>
<div class="kong"></div>
<div class="huige_bg">
  <div class="huixjq_cbg">
    <div class="hui_regleft">
      <div class="hui_reglf_h2">
        <h2>免费注册</h2>
      </div>
      <div class="huige_rt_form menu-box">		
		<form name="memberreg" id="memberreg" method="post" action="${pageContext.request.contextPath}/RegServlet" onsubmit="return memberdbreg('1')">
			<input type="hidden" name="tokenkey" value="94ffc75493feaf6ba92506d93bb902a8">
          <div class="huige_rt_dl">
            <dl class="addlist">
              <dt><em>用户名：</em>
                <input type="text" name="username" id="username" class="infoInput" size="40" onblur="">
                <label id="usermsg"> <font></font>请输入1-16个英文或数字组成的字符,首字必须为英文字符</label>
              </dt>
              <dt><em>E-mail:</em>
                <input type="text" name="email" id="email" class="infoInput" size="40" onblur="">
                <label id="mailmsg"><font></font>请真实填写您的邮件，用于密码找回和相关通知服务</label>
              </dt>
              <dt><em>密　码:</em>
                <input type="password" name="password" id="password" class="infoInput" size="40"><label>5－15 个字符，包括英文字母、中文、数字、下划线</label>
              </dt>
			  
              <dt><em>确认密码:</em>
                <input type="password" name="password2" id="password2" class="infoInput" size="40">
                <label>两次密码保持一致</label>
              </dt>
               <dt><em>手机号:</em>
                <input type="text" name="phone" id="phone" class="infoInput" size="40">
                <label>请输入11位数字</label>
              </dt>
              <dt><em>验证码:</em>
                <input type="text" id="code" name="code" class="infoInput" size="20">
               <a onclick="changeImg()"> <label><img title="点击更换验证码"   id="imgObj" alt="验证码"
            src="${pageContext.request.contextPath}/getCode" style="cursor: pointer;" >
            </label>
            	</a>
              </dt>
			  </dl>
            <div class="submit_btn"> <span>
              <input value="同意以下协议并提交注册" type="submit" class="submit_btn_re01">
              </span> </div>
            <div class="sub_regis_xiey">
              <input type="checkbox" name="agree" id="agree" value="1">    注册协议    
              <a target="_blank"   href="agreement.jsp" title="您是否同意服务条款">（先看看条款？）</a>
              </div>
          </div>
        </form>
	  </div>
    </div>
    <div class="hui_regis_right">
      <div class="hui_regis_zhao">
        <h2>已经有帐号？请直接登录</h2>
        <a href="login.jsp" class="hui_regis_zhao01"> 登录 </a>
        <p>完成左侧表格，通过审核后您<br>就拥有一个绿色的生活</p>
      </div>
    </div>
    <div class="spacer"></div>
  </div>
</div>
<!--页脚-->
<div class="width100 hidden_yh" style="background:#66c561;margin-top:30px;">
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