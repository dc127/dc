<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>清真的味道-注册</title>

    <link href="css/sanbaosx.css" rel="stylesheet" type="text/css">
    <link href="css/huiyuan.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="js/jquery.js"></script>
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
<div class="kong"></div>
<div class="kong"></div>
<div class="huige_bg">
  <div class="huixjq_cbg">
    <div class="hui_regleft">
      <div class="hui_reglf_h2">
        <h2>免费注册</h2>
      </div>
      <div class="huige_rt_form menu-box">		
		<form name="memberreg" id="memberreg" method="post">
			<input type="hidden" name="tokenkey" value="94ffc75493feaf6ba92506d93bb902a8">
          <div class="huige_rt_dl">
            <dl class="addlist">
              <dt><em>用户名：</em>
                <input type="text" name="username" id="username" class="infoInput" size="40" onblur="">
                  <br><label id="usermsg"> <font></font>请输入4-16个字母、数字、下划线、减号组成的字符</label>
              </dt>
              <dt><em>E-mail:</em>
                <input type="text" name="email" id="email" class="infoInput" size="40" onblur="">
                  <br><label id="mailmsg"><font></font>请真实填写您的邮件，用于密码找回和相关通知服务</label>
              </dt>
              <dt><em>密　码:</em>
                <input type="password" name="password" id="password" class="infoInput" size="40">
                  <br><label>请输入以字母开头6~18个只包含字母、数字和下划线组成的字符</label>
              </dt>
			  
              <dt><em>确认密码:</em>
                <input type="password" name="password2" id="password2" class="infoInput" size="40">
                  <br><label>两次密码保持一致</label>
              </dt>
               <dt><em>手机号:</em>
                <input type="text" name="phone" id="phone" class="infoInput" size="40">
                   <br><label>请输入11位数字</label>
              </dt>
                <dt><em>验证码:</em>
                    <input id="code" name="code" type="text" class="infoInput"
                           placeholder="验证码" onblur="checkCode()" size="20">
                    <a href="javascript:;" onClick="changeCaptcha()" style="color: #666;">看不清楚</a>
                    <img id="captchaImg"  onclick="changeCaptcha()" title="看不清楚?请点击刷新验证码!"  src="${ctx}/captchaServlet" height="18" width="55">
                    <label id="code_span" style="color: red"></label>
                <%--<input type="text" id="code" name="code" class="infoInput" size="20">--%>
               <%--<a onclick="changeImg()"> <label><img title="点击更换验证码"   id="imgObj" alt="验证码"</label>	</a>--%>
              </dt>
			  </dl>
            <div class="submit_btn"> <span>
              <input value="同意以下协议并提交注册" type="submit" class="submit_btn_re01" onclick="check();">
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
    	<a href="detailShow.jsp" class="in_block font16 c_33" style="padding:0 30px">热销商品</a>
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
    var username_len = "错误：用户名输入错误";
    var email_err = "错误：E-mail格式错误";
    var password_len = "错误：密码输入错误";
    var password_disaffinity = "错误：两次密码输入不一致，请重新输入";
    var phone_len  = "错误：手机号格式错误";
    var agree_empty = "提示：请确认注册条款";
    var seccode_empty = "验证码输入错误或为空，请重新输入！";

    function check() {
        //用户名正则，4到16位（字母，数字，下划线，减号）
        var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
        //密码强度正则，以字母开头，长度在6~18之间，只能包含字母、数字和下划线
        var pPattern = /^[a-zA-Z]\w{5,17}$/;
        //Email正则
        var ePattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        //手机号正则
        var mPattern = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\d{8}$/;
        var username = $("#username").val();
        var password = $("#password").val();
        var password2 = $("#password2").val();
        var email    = $("#email").val();
        var phone    = $("#phone").val();
        if(uPattern.test(username) & pPattern.test(password) & ePattern.test(email) & mPattern.test(phone) & password2 == password){
            FormSubmit();//提交表单
        }else if(!uPattern.test(username)){
            alert(username_len);
        }else if(!pPattern.test(password)){
            alert(password_len);
        }else if(!ePattern.test(email)){
            alert(email_err);
        } else if(!mPattern.test(phone)){
            alert(phone_len);
        }else if(password2 != password){
            alert(password_disaffinity);
        } else{
            alert("发生意外错误，请返回重新填写");
        }
    }
    function FormSubmit() {
        //网络请求
        $.ajax({
            type  		: "POST",
            url   		: '/user/register.do',
            dataType	: "json",
            data        :{username:$("#username").val(),
                password:$("#password").val(),
                email:$("#email").val(),
                phone:$("#phone").val()},
            success     : function(res){
                //请求成功
                if(0 === res.status){
                    window.location.href='http://localhost:8888/login.jsp';
                    alert(res.msg);
                }
                //请求数据错误
                else if(1  === res.status){
                    alert("登录错误"+res.msg);
                }

            },
            error       : function(err){
                alert(err.statusText);
            }

        });
    }
        //更换验证码
        function changeCaptcha() {
            $("#captchaImg").attr('src', '${ctx}/captchaServlet?t=' + (new Date().getTime()));
        }

    //验证码校验
    var flag_c = false;
    function checkCode() {
        var code = $("#code").val();
        code = code.replace(/^\s+|\s+$/g,"");
        if(code == ""){
            $("#code_span").text("请输入验证码！").css("color","red");
            flag_c = false;
        }else{
            $.ajax({
                type: 'post',
                url: '/user/checkCode',
                data: {"code": code},
                dataType: 'json',
                success: function (data) {
                    var val = data['message'];
                    if (val == "success") {
                        $("#code_span").text("√").css("color","green");
                        $("#reg_span").text("");
                        flag_c = true;
                    }else {
                        $("#code_span").text("验证码错误！").css("color","red");
                        flag_c = false;
                    }
                }
            });

        }
        return flag_c;
    }
</script>
</html>