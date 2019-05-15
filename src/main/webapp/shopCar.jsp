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
</head>

<body>
<div class="width100" style="height:25ox;background:#f0f0f0;">
	<div class="width1200 center_yh font14 c_66" style="height:25px;line-height:25px;">
    	<font class="left_yh">欢迎来到清真的味道•商城</font>
        <div class="right_yh" id="fast_jump">
        	<a href="login1.jsp">登录</a>
            <b></b>
            <a href="enroll1.jsp">注册</a>
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
            <a href="#a">热销商品</a>
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
<div class="width1200 hidden_yh center_yh font20">全部商品<font class="red">(2)</font></div>
<!--商品详情-->
<div class="width1198 hidden_yh center_yh" style="border:1px solid #ddd;margin-top:18px;min-height:300px;">
	<div class="width100 hidden_yh font14" style="height:32px;line-height:32px;background:#66c561;text-indent:21px;color:#000;font-weight:600;border-bottom:1px solid #ddd;">商品详情</div>
    <!--列表头部-->
    <div class="width100 hidden_yh font14" style="height:42px;line-height:42px;border-bottom:1px solid #ddd;">
    	<div class="left_yh tcenter font14" style="width:486px;">商品</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">价格</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">数量</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">小计</div>
        <div class="left_yh tcenter font14" style="width:175.75px;">操作</div>
    </div>
    <!--具体的商品-->
    <div class="speCific">
    	<div class="xzWxz">
        	<b><img src="images/xzwxz.png"></b>
        </div>
        <div class="xzSp">
        	<img src="images/02222946404.jpg">
            <div class="xzSpIn">
            	<h3 class="font16 c_33 font100">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h3>
                <p class="font13 c_99">颜色:墨绿色  规格:15cm</p>
            </div>
        </div>
        <div class="xzJg">￥<font>268.05</font></div>
        <div class="xzSl">
        	<div class="xzSlIn">
            	<b class="Amin">减</b>
                <input type="text" value="1" readonly class="cOnt">
                <b style="border-right:none;border-left:1px solid #ddd;" class="Aadd" onClick="zj(this)">加</b>
            </div>
        </div>
        <div class="xzXj">￥<font></font></div>
        <div class="xzCz">
        	<div class="xzCzIn">
            	<a href="javascript:void(0)" class="jRscj">移入收藏夹</a>
                <a href="javascript:void(0)" class="Dels">删除</a>
            </div>
        </div>
    </div>
    <div class="speCific">
    	<div class="xzWxz">
        	<b><img src="images/xzwxz.png"></b>
        </div>
        <div class="xzSp">
        	<img src="images/02222946404.jpg">
            <div class="xzSpIn">
            	<h3 class="font16 c_33 font100">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h3>
                <p class="font13 c_99">颜色:墨绿色  规格:15cm</p>
            </div>
        </div>
        <div class="xzJg">￥<font>268.05</font></div>
        <div class="xzSl">
        	<div class="xzSlIn">
            	<b class="Amin">减</b>
                <input type="text" value="1" readonly class="cOnt">
                <b style="border-right:none;border-left:1px solid #ddd;" class="Aadd" onClick="zj(this)">加</b>
            </div>
        </div>
        <div class="xzXj">￥<font></font></div>
        <div class="xzCz">
        	<div class="xzCzIn">
            	<a href="javascript:void(0)" class="jRscj">移入收藏夹</a>
                <a href="javascript:void(0)" class="Dels">删除</a>
            </div>
        </div>
    </div>
    <div class="speCific">
    	<div class="xzWxz">
        	<b><img src="images/xzwxz.png"></b>
        </div>
        <div class="xzSp">
        	<img src="images/02222946404.jpg">
            <div class="xzSpIn">
            	<h3 class="font16 c_33 font100">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h3>
                <p class="font13 c_99">颜色:墨绿色  规格:15cm</p>
            </div>
        </div>
        <div class="xzJg">￥<font>268.05</font></div>
        <div class="xzSl">
        	<div class="xzSlIn">
            	<b class="Amin">减</b>
                <input type="text" value="1" readonly class="cOnt">
                <b style="border-right:none;border-left:1px solid #ddd;" class="Aadd" onClick="zj(this)">加</b>
            </div>
        </div>
        <div class="xzXj">￥<font></font></div>
        <div class="xzCz">
        	<div class="xzCzIn">
            	<a href="javascript:void(0)" class="jRscj">移入收藏夹</a>
                <a href="javascript:void(0)" class="Dels">删除</a>
            </div>
        </div>
    </div>
</div>
<!--合计-->
<div class="width1198 center_yh" style="height:60px;background:#66c561;border:1px solid #ddd;margin-top:40px;">
	<div class="center_yh hidden_yh" style="width:1178px;height:60px;margin-left:20px;">
    	<div class="ifAll"><b><img src="images/xzwxz2.png"></b><font>全选</font></div>
        <div class="ifDel">删除</div>
        <div class="ifRemove">移入收藏夹</div>
        <div class="sXd">
        	<div class="sXd1">已选商品(<font style="color:#cb1c20">0</font>)件</div>
            <div class="sXd2">合计(不含运费):￥<font style="color:#cb1c20" id="zjJg">0</font></div>
            <a href="javascript:void(0)" class="ifJs">结算</a>
        </div>
    </div>
</div>
<script>

(function cx(){
	var e=$(".speCific").length
for(var a=0;a<e;a++){
	var lt=$(".xzJg").eq(a).find("font").html()
	$(".xzXj").eq(a).find("font").html(lt)
	}
})();
var es=$(".speCific").length;
$(".xzWxz").click(function(){
	if($(this).hasClass("on")){
		$(this).removeClass("on")
		var ty=$(".xzWxz.on").length;
		$(".sXd1").find("font").html(ty);
		if(ty!=es){
		$(".ifAll").removeClass("on")
		}
		}else{
			$(this).addClass("on");
			var hj=$(this).siblings(".xzXj").find("font").html()*1;
			var ty=$(".xzWxz.on").length;
			$(".sXd1").find("font").html(ty);
			$("#zjJg").html()
			if(ty!=es){
			$(".ifAll").removeClass("on")
			}
			}
	})
$(".jRscj").click(function(){
	if($(this).hasClass("on")){
		$(this).removeClass("on").html("移入收藏夹")
		}else{
			$(this).addClass("on").html("已收藏")
			}
	})	
$(".Dels").click(function(){
	$(this).parent().parent().parent().remove();
	})	
$(".Aadd").click(function(){
	var t=$(this).siblings(".cOnt").val()*1;
	var price=$(this).parent().parent().siblings(".xzJg").find("font").html()*1;
	t++;
	$(this).siblings(".cOnt").val(t);
	$(this).parent().parent().siblings(".xzXj").find("font").html(sswr(price*t))
	})
$(".Amin").click(function(){
	var t=$(this).siblings(".cOnt").val()*1;
	var price=$(this).parent().parent().siblings(".xzJg").find("font").html()*1;
	t--
	if(t<1){
		t=1
		}
	$(this).siblings(".cOnt").val(t);
	$(this).parent().parent().siblings(".xzXj").find("font").html(sswr(price*t))
	})
function sswr(num){
	return(
		num.toFixed(2)
		)
}
$(".ifDel").click(function(){
	$(".xzWxz.on").parent().remove();
	})
$(".ifAll").click(function(){
	if($(".ifAll").hasClass("on")){
		$(this).removeClass("on");
		$(".xzWxz").removeClass("on");
		
		$(".sXd1").find("font").html(0);
		}else{
			$(this).addClass("on");
			$(".xzWxz").addClass("on");
			
			$(".sXd1").find("font").html(es);
			}
	})
function zj(obj){
	var zj=$(obj).parent().parent().siblings(".xzXj").find("font").html()*1;
	console.log(zj)
	}	
</script>
</body>
</html>