<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>商品详情</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.luara.0.0.1.min.js"></script>
    <script src="js/loginOrOut.js"></script><%--登录登出的js--%>
</head><body>
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
            <a href="detailShow.jsp">热销商品</a>
            <a href="#b">电子礼品</a>
            <a href="#c">礼盒类产品</a>
            <a href="#d">高温熟食</a>
            <a href="#e">点心小吃</a>
        </div>
    </div>
</div>
<!--当前位置-->
<div class="width1200 center_yh hidden_yh font14" style="height:40px;line-height:40px;">
	<span>当前位置:</span><a href="#" class="c_66">首页></a><a href="#" class="c_66">工艺礼品></a><a href="#" class="c_66">详情</a>
</div>
<!--商品详情-->
<div class="width1200 center_yh hidden_yh" style="height:420px;">
	<div class="left_yh" style="width:350px;height:420px;">
    	<script src="js/163css.js"></script>
        <script src="js/lib.js"></script>
		<div id="preview">
				<div class=jqzoom id="spec-n1" onClick="window.open('/')">
                	<IMG height="350" src="images/穆斯林婚纱礼服开斋节2016新款影楼主题服装回族结婚服饰情侣写真.jpg" jqimg="images/穆斯林婚纱礼服开斋节2016新款影楼主题服装回族结婚服饰情侣写真.jpg" width="350">
				</div>
					<div id="spec-n5">
						<div class=control id="spec-left">
							<img src="images/left.gif">
						</div>
						<div id="spec-list">
							<ul class="list-h">
							    <%--<li><img src="images/1.jpg"></li>
								<li><img src="images/2.jpg"></li>
								<li><img src="images/3.jpg"></li>
								<li><img src="images/4.jpg"></li>
								<li><img src="images/10.png"></li>
								<li><img src="images/9.png"></li>
								<li><img src="images/穆斯林婚纱礼服开斋节2016新款影楼主题服装回族结婚服饰情侣写真.jpg"></li>
								<li><img src="images/12.png"></li>--%>
							<%--	<li><img src="images/124f8b8b366c26d.jpg"></li>
								<li><img src="images/124f8b8b366c26d.jpg"></li>--%>
							</ul>
						</div>
						<div class=control id="spec-right">
							<img src="images/right.gif">
						</div>
					</div>
				</div>
		<script type=text/javascript>
            $(function(){			
                   $(".jqzoom").jqueryzoom({
                        xzoom:400,
                        yzoom:400,
                        offset:10,
                        position:"right",
                        preload:1,
                        lens:1
                    });
                    $("#spec-list").jdMarquee({
                        deriction:"left",
                        width:350,
                        height:56,
                        step:2,
                        speed:4,
                        delay:10,
                        control:true,
                        _front:"#spec-right",
                        _back:"#spec-left"
                    });
                    $("#spec-list img").bind("mouseover",function(){
                        var src=$(this).attr("src");
                        $("#spec-n1 img").eq(0).attr({
                            src:src.replace("\/n5\/","\/n1\/"),
                            jqimg:src.replace("\/n5\/","\/n0\/")
                        });
                        $(this).css({
                            "border":"2px solid #ff6600",
                            "padding":"1px"
                        });
                    }).bind("mouseout",function(){
                        $(this).css({
                            "border":"",
                            "padding":"0"
                        });
                    });				
                })
        </script>
    </div>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url: "/product/detail.do?productId="+${param.Id},
                type : "GET",
                dataType : 'json',
                success : function(res) {
                    var data = res.data;
                    var list = data.list;
                    var mainImage = data.mainImage;
                    var subImages = data.subImages;
                    var imageHost = data.imageHost;
                    var name = data.name;
                    var price = data.price;
                    $("#spec-list ul").append("<li><img src="+imageHost+mainImage+"></li>");
                    document.getElementById('imgchange').src=imageHost+mainImage;
                    $("#spec-n1 img").attr('src',imageHost+mainImage);
                    $("#spec-n1 img").attr('jqimg',imageHost+mainImage);
                    $(".left_yh h3").text(name);
                    $("#productPrice").text(price);
                },
                error : function (err) {
                    alert(err.msg);
                }
            })
        })

    </script>
    <div class="left_yh" style="width:486px;height:420px;margin-left:42px;">
    	<h3 class="font20 font100">2017玉石摆件客厅装饰品玄关柜招财工艺品摆设</h3>
        <p class="font16 c_66" style="margin-top:25px;">
        	<font style="margin-right:20px;">价格:</font>
            <font class="red font20">
            	<em class="font14" style="font-style:normal">￥</em>
                <span id="productPrice">268.00</span>
            </font>
            <font class="font14 c_66">(运费10元)</font>
        </p>
        <%--<p class="font16 c_66" style="margin-top:25px;">
        	<font style="margin-right:20px;">已卖:</font>
            <font class="">536件</font>
        </p>
        <p class="font16 c_66 likeColor" style="margin-top:25px;">
        	<font style="margin-right:20px;">颜色:</font>
            <span>蓝色</span><span>粉红色</span>
        </p>
        <p class="font16 c_66 likeColor" style="margin-top:25px;">
        	<font style="margin-right:20px;">规格:</font>
            <span>身高高160cm</span><span>身高高165cm</span><span>身高高170cm</span>
        </p>--%>
        <p class="font16 c_66 likeColor" style="margin-top:25px;">
        	<font style="margin-right:20px;">数量:</font>
        	<a href="javascript:void(0)" id="min_s">-</a>
            <input type="text" value="1" readonly id="t_a">
            <a href="javascript:void(0)" id="add_s">+</a>
            <font class="font14 c_99" style="margin-left:20px;">库存100件</font>
        	<script>
			$(".likeColor span").click(function(){
				$(this).addClass("on").siblings().removeClass("on")
				})
			var tr=$("#t_a").val();
			$("#add_s").click(function(){
					tr++;
					$("#t_a").val(tr)
				})
			$("#min_s").click(function(){
				tr--;
				if(tr<1){
					$("#t_a").val(1);
					tr=1
				}else{
					$("#t_a").val(tr);
				}
					$("#ano").html(tr);
			})	
        </script>
        </p>
        <div class="buyFor">
        	<%--<a href="javascript:void(0)" class="mstBuy">立即购买</a>--%>
            <a href="javascript:void(0)" class="addCar">加入购物车</a>
            <script type="text/javascript">
                /*加入购物车点击事件*/
                $(".addCar").click(function(){
                    $.ajax({
                        url : "cart/add.do",
                        type : "GET",
                        data        :{productId:${param.Id},count:$("#t_a").val()},
                        dataType	: "json",
                        success     : function(res){
                           var status =  res.status;
                           if(status==0){
                            window.location.href='http://qingzhenwei.natapp1.cc/shopCar.jsp';
                           }else{
                               alert(res.msg);
                           }
                        },
                        error       : function(err){
                            alert(err.statusText);
                        }

                    });
                });

            </script>
        </div>
        <%--<div class="jOy">
        	<a href="javascript:void(0)">收藏</a>
            <a href="javascript:void(0)">分享</a>
        </div>--%>
    </div>
    <div class="right_yh" style="width:198px;height:418px;margin-left:42px;padding-left:40px;padding-right:40px;border:1px solid #ddd">
    	<h3 class="tcenter font16 font100" style="margin-top:10px;">------&nbsp;今日推荐&nbsp;------</h3>
        <a href="#" class="lftSp">
        	<img src="images/lvdougao.jpg">
            <span class="yihang">绿豆糕</span>
            <p class="tcenter c_66">￥35.9</p>
        </a>
        <a href="#" class="lftSp">
        	<img src="images/xiangyeniujian.jpg">
            <span class="yihang">香叶牛腱</span>
            <p class="tcenter c_66">￥19.8</p>
        </a>
    </div>
</div>
<!--左边和右边-->
<div class="width1200 hidden_yh center_yh" style="margin-top:40px;">
	<div class="left_yh hidden_yh" style="width:270px;border:1px solid #ddd;padding-bottom:36px;">
    	<h3 class="font16 c_33 font100 tcenter" style="padding-top:10px;padding-bottom:10px;">购买过该商品的用户还购买了</h3>
        <a href="#" class="center_yh hidden_yh block_yh" style="width:250px;margin-top:25px;">
        	<img src="images/hongshaoniurou.jpg" class="left_yh" width="105" height="115">
            <div class="left_yh" style="width:120px;margin-left:25px;">
            	<h4 class="font14 c_33 font100" style="margin-top:6px;">红烧牛肉</h4>
                <p class="red font14" style="margin-top:6px;">￥18.8</p>
            </div>
        </a>
        <a href="#" class="center_yh hidden_yh block_yh" style="width:250px;margin-top:25px;">
        	<img src="images/玉米饵块玉米.jpg" class="left_yh" width="105" height="115">
            <div class="left_yh" style="width:120px;margin-left:25px;">
            	<h4 class="font14 c_33 font100" style="margin-top:6px;">玉米饵块玉米</h4>
                <p class="red font14" style="margin-top:6px;">￥86.0</p>
            </div>
        </a>
    </div>
    <div class="right_yh" style="width:888px;">
    	<div class="hidden_yh" id="spXqpj">
        	<a href="javascript:void(0)" class="on">商品详情</a>
            <a href="javascript:void(0)">商品评价</a>
        </div>
        <div class="width100 hidden_yh">
        	<!--商品详情-->
            <div id="spDetil">
            	<div class="spGg">
					<h3 class="font16 c_33 font100">产品参数</h3>
                    <ul class="gGlb">
                    	<li>品牌名称:清真味商城</li>
                        <%--<li>外观造型:婚纱装</li>
                        <li>工艺:纯手工</li>
                        <li>颜色分类:天蓝色,粉红色</li>
                        <li>材质:丝绸</li>
                        <li>类型:衣物</li>--%>
                    </ul>
                </div>
                <img src="images/穆斯林婚纱礼服开斋节2016新款影楼主题服装回族结婚服饰情侣写真.jpg" class="spPic" id="imgchange">
            </div>
            <!--商品评价-->
            <div id="spPj">
            	<div class="pjYxz">
                    <a href="javascript:void(0)"><input type="radio" name="as" checked id="nn0" style="margin-right:8px;"><label for="nn0">全部</label></a>
                    <a href="javascript:void(0)"><input type="radio" name="as" id="nn1" style="margin-right:8px;"><label for="nn1">好评</label></a>
                    <a href="javascript:void(0)"><input type="radio" name="as" id="nn2" style="margin-right:8px;"><label for="nn2">差评</label></a>
                </div>
                <div class="pjBox">
                	<!--全部-->
                    <div class="pjBoxA">
                    	<!--一条-->
                        <div class="width100 hidden_yh" style="padding-bottom:20px;border-bottom:1px dashed #ddd;margin-bottom:10px;">
                        	<img src="images/x.jpg" style="width:40px;height:40px;border-radius:50%;float:left;border:1px solid #ddd;">
                            <div style="width:790px;float:right;overflow:hidden;">
                            	<h3 class="font16 c_33 font100">小***微</h3>
                                <p class="font14 c_99" style="margin-top:6px;">2017-7-7 墨绿色,15cm</p>
                                <p class="font16 c_33" style="margin-top:6px;">(所有)非常漂亮，家里朋友们看了都很喜欢。</p>
                            </div>
                        </div>
                        <div id="navs">
                        <div id="nav_in">
                        <a href="javascript:void(0)">«</a>
                        <a href="javascript:void(0)">1</a>
                        <a href="javascript:void(0)">2</a>
                        <a href="javascript:void(0)">3</a>
                        <a href="javascript:void(0)">4</a>
                        <a href="javascript:void(0)">5</a>
                        <a href="javascript:void(0)">»</a>
                        </div>
                        </div>
                    </div>
                    <!--好评-->
                    <div class="pjBoxG">
                    	<div class="width100 hidden_yh" style="padding-bottom:20px;border-bottom:1px dashed #ddd;margin-bottom:10px;">
                        	<img src="images/x.jpg" style="width:40px;height:40px;border-radius:50%;float:left;border:1px solid #ddd;">
                            <div style="width:790px;float:right;overflow:hidden;">
                            	<h3 class="font16 c_33 font100">小***微</h3>
                                <p class="font14 c_99" style="margin-top:6px;">2017-7-7 墨绿色,15cm</p>
                                <p class="font16 c_33" style="margin-top:6px;">(好)非常漂亮，挂在家里朋友们看了都很喜欢。</p>
                            </div>
                        </div>
                        <div id="navsa">
                        <div id="nav_ina">
                        <a href="javascript:void(0)">«</a>
                        <a href="javascript:void(0)">1</a>
                        <a href="javascript:void(0)">2</a>
                        <a href="javascript:void(0)">3</a>
                        <a href="javascript:void(0)">4</a>
                        <a href="javascript:void(0)">5</a>
                        <a href="javascript:void(0)">»</a>
                        </div>
                        </div>
                    </div>
                    <!--差评-->
                    <div class="pjBoxL">
                    	<div class="width100 hidden_yh" style="padding-bottom:20px;border-bottom:1px dashed #ddd;margin-bottom:10px;">
                        	<img src="images/x.jpg" style="width:40px;height:40px;border-radius:50%;float:left;border:1px solid #ddd;">
                            <div style="width:790px;float:right;overflow:hidden;">
                            	<h3 class="font16 c_33 font100">小***微</h3>
                                <p class="font14 c_99" style="margin-top:6px;">2017-7-7 墨绿色,15cm</p>
                                <p class="font16 c_33" style="margin-top:6px;">(差)非常漂亮，挂在家里朋友们看了都很喜欢。</p>
                            </div>
                        </div>
                        <div id="navss">
                        <div id="nav_ins">
                        <a href="javascript:void(0)">«</a>
                        <a href="javascript:void(0)">1</a>
                        <a href="javascript:void(0)">2</a>
                        <a href="javascript:void(0)">3</a>
                        <a href="javascript:void(0)">4</a>
                        <a href="javascript:void(0)">5</a>
                        <a href="javascript:void(0)">»</a>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
$("#spXqpj a").click(function(){
	$(this).addClass("on").siblings().removeClass("on")
	});
$("#spXqpj a").eq(0).click(function(){
	$("#spDetil").css({display:"block"}).siblings().css({display:"none"});
	})
$("#spXqpj a").eq(1).click(function(){
	$("#spPj").css({display:"block"}).siblings().css({display:"none"});
	})
$(".pjYxz a").eq(0).click(function(){
	$(".pjBoxA").css({display:"block"}).siblings().css({display:"none"});
	})
$(".pjYxz a").eq(1).click(function(){
	$(".pjBoxG").css({display:"block"}).siblings().css({display:"none"});
	})
$(".pjYxz a").eq(2).click(function(){
	$(".pjBoxL").css({display:"block"}).siblings().css({display:"none"});
	})
</script>
<!--页脚-->
<div class="width100 hidden_yh" style="background:#66c561;margin-top:90px;">
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
