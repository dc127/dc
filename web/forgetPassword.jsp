<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
<div class="width100">
	<div class="width1200 center_yh hidden_yh" style="height:181px">
    	<a href="#" class="left_yh"><img src="images/logo.png"></a>
        <a href="javascript:void(0)" class="left_yh font30 c_33" style="line-height:192px;margin-left:36px;">找回密码</a>
    </div>
</div>
<div class="width100 hidden_yh" style="border-top:1px solid #ddd">
	<div class="width1200 hidden_yh center_yh" style="margin-top:75px">
    <!--n1,n2,n3,n4即为第一步第二步第三步-->
    	<div class="width100 hidden_yh" style="height:45px;margin-bottom:160px;">
        	<img src="images/bz.png" class="n1">
        </div>
        <div class="width100 hidden_yh">
        <form action="ForgetServlet" method="post">
        	<div class="center_yh hidden_yh" style="width:475px;margin-bottom:40px;">
            	<span style="margin-right:40px;height:42px;line-height:42px;" class="left_yh block_yh">用户名:</span>
                <input name="forgetPassword" type="text" placeholder="请输入您的用户名/邮箱/手机号" style="border:1px solid #c9c9c9;width:292px;height:42px;font-size:16px;text-indent:22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width:475px;">
            	<span style="margin-right:40px;height:42px;line-height:42px;" class="left_yh block_yh">验证码:</span>
                <div style="width:293px;height:42px;border:1px solid #c9c9c9" class="left_yh">
                	<input type="text"     name="check"  placeholder="输入验证码" style="border:0;width:184px;height:39px;font-size:16px;text-indent:22px;" class="left_yh">
                    <img src="<%=path%>/ImageServlet"  style="width:103px;height:40px;margin-top:1px;float:right;margin-right:1px;">
                </div>
            </div>
            <input type="submit" value="提交" class="ipt_tj">
            </form>
        </div>
    </div>
</div>
<div class="width100 hidden_yh" style="background:#00ff00;margin-top:90px;">
	<div class="width1200 center_yh tcenter" style="margin-top:44px;">
    	<a href="#" class="in_block font16 c_33" style="padding:0 30px">工艺礼品</a>
        <a href="#" class="in_block font16 c_33" style="padding:0 30px">电子礼品</a>
        <a href="#" class="in_block font16 c_33" style="padding:0 30px">品牌礼品</a>
        <a href="#" class="in_block font16 c_33" style="padding:0 30px">商务礼品</a>
        <a href="#" class="in_block font16 c_33" style="padding:0 30px">食品礼盒</a>
        <p class="font16 c_33 tcenter" style="margin-top:46px;">www.lipinshijia.com © CopyRight 礼品世家 2007-2012 </p>
        <p class="font16 c_33 tcenter" style="margin-top:6px;">电话：000-0000000 手机：18022113311</p>
        <p class="font16 c_33 tcenter" style="margin-top:6px;margin-bottom:10px;">鲁ICP备:1666666号-1</p>
    </div>
</div>
</body>
</html>