<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="jquery/jquery-3.2.1.js"></script>
<script type="text/javascript">
 function isExist() 
 {
  var $phon= $("#tip").val();
  if ($phon == null || $phon.length != 11) 
  {
   $("#tip").html("请输入正确的手机号码！");
  } else 
  {
   $.ajax({
    url:"RegPhoneServlet",
    type:"get" ,
    data:"phon=" + $phon,
    success:function(result)
{ 
     if ($.trim(result) == "true") 
     {
      $("#tip").html("此号码已经被绑定，请尝试其他号码!");
     } else {
      $("#tip").html("绑定成功!");
     }
     },
     error:function(){
     $("#tip").html("检测失败!");
     }
   });
  }
 }
 
 function check(){
	    if (password3.value!=password4.value)
	    {
	        check_tip.innerHTML="<font color=red>密码不相符</font>";
	    }else{
	        check_tip.innerHTML="<font color=blue>密码相符</font>";
	    }
	}


</script>

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
        	<img src="images/bz.png" class="n2">
        </div>
        <div class="width100 hidden_yh">
        <form action="ForgetServlet1" method="post">
        	<div class="center_yh hidden_yh" style="width:475px;margin-bottom:40px;">
            	<span style="margin-right:40px;height:42px;line-height:42px;width:100px" class="left_yh block_yh tright">手机验证:</span>
                <input type="text"  value="${requestScope.user.phone}" id="tip" name="phone" readonly style="border:1px solid #c9c9c9;width:292px;height:42px;font-size:16px;text-indent:22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width:475px;margin-bottom:40px;">
            	<span style="margin-right:40px;height:42px;line-height:42px;width:100px" class="left_yh block_yh tright">用户名:</span>
                <input type="text" value="${requestScope.user.username}" readonly style="border:0;width:292px;height:42px;font-size:16px;text-indent:22px;" class="left_yh">
            </div>
            <div class="center_yh hidden_yh" style="width:475px;margin-bottom:40px;">
            	<span style="margin-right:40px;height:42px;line-height:42px;width:100px" class="left_yh block_yh tright">验证手机:</span>
                <input type="text" value="${requestScope.user.phone}" readonly style="border:0;width:292px;height:42px;font-size:16px;text-indent:22px;" class="left_yh">(如果)
            </div> 
            <div class="center_yh hidden_yh" style="width:475px;">
            	<span style="margin-right:40px;height:42px;line-height:42px;width:100px" class="left_yh block_yh tright">手机验证码:</span>
                <div style="width:293px;height:42px;border:1px solid #c9c9c9" class="left_yh">
                	<input  name="tel" type="text" placeholder="请输入验证码" style="border:0;width:184px;height:39px;font-size:16px;text-indent:22px;" class="left_yh">
                    <a href="javascript:isExist()" style="width:103px;height:40px;margin-top:1px;float:right;margin-right:1px;display:block;color:#666;background:#ddd;text-align:center;line-height:40px;">获取验证码</a>
                </div>
            </div>
            <input type="submit" value="提交" class="ipt_tj" style="width:295px;height:44px;margin-left:505px;">
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