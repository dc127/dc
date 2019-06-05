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
    <script src="/ckeditor/ckeditor.js"></script>
    <style type="text/css">
        label{
            position: relative;
        }
        #fileinp{
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
        }
        #fbtn{
            padding: 5px 10px;
            background: #66c561;
            color: #FFF;
            border: none;
            border-radius: 5px;

        }
        #upload{
            margin-right: 5px;
            padding: 5px 10px;
            background: #66c561;
            color: #FFF;
            border: none;
            border-radius: 5px;

        }
        #text{
            color: red;
        }
    </style>
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
            <a href="productShow.jsp" class="on" >商品管理</a>
            <%--<a href="address.jsp">分类管理</a>--%>
            <a href="orderList.jsp" >订单管理</a>
        </div>
        <div id="vipRight">
            <div class="hidden_yh bj_fff" style="width:938px;border:1px solid #ddd;">
                <div class="width100 font24" style="height:60px;line-height:60px;text-indent:50px;background:#f5f8fa;border-bottom:1px solid #ddd;">商品管理——新增商品</div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">商品名称：</div>
                    <input type="text" style="width:443px;height:30px;text-indent:10px;" name="productName" placeholder="请输入商品名称">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">商品描述：</div>
                    <input type="text" style="width:443px;height:30px;text-indent:10px;" name="subtitle"
                           placeholder="请输入商品描述">
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">所属分类：</div>
                    <select id="select2">
                        <option selected value="10004">选择一级分类</option>
                    </select>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">商品价格：</div>
                    <input type="text" style="width:160px;height:30px;text-indent:10px;" name="price" placeholder="价格">元
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">商品库存：</div>
                    <input type="text" style="width:160px;height:30px;text-indent:10px;" name="stock" placeholder="库存"><font>件</font>
                </div>
                <div class="width100" style="height:32px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">商品图片：</div>
                    <form name="form2" id="myform" enctype="multipart/form-data" >
                        <input type="file" name="upload_file" >
                        <input type="submit" id="upload" value="点我上传"/>
                    </form>
                </div>
                <div class="width100" style="height:30px;line-height:32px;margin-top:25px;">
                    <div class="left_yh font16 tright" style="width:120px;">商品详情：</div>
                </div>
                <div class="width80" style="height:500px;line-height:32px;margin-left:125px;margin-top:-25px;">
                    <textarea  id="scpg" name="editor01"></textarea>
                </div>
                <div class="width80" style="height:50px;line-height:32px;margin-left:125px;margin-top:-40px;">
                    <input type="button" value="提交" id="fbtn">
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    CKEDITOR.replace('editor01');//这句话相当的重要，没有这句话，只会显示文本域，没有富文本框的效果
    var htmlData=CKEDITOR.instances.scpg.getData();//注意：这个scpg是博主的id,也就是你文本域的id
    $(function () {
        $("#cke_scpg").css("style","margin-left:120px");
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
        //上传文件点击事件
        $("#fileinp").change(function () {
            $("#text").html($("#fileinp").val());
        })

        //上传图片文件
        $("#upload").click(function(){
                $.ajax({
                    url: "/manage/product/upload.do",
                    type: 'POST',
                    data: new FormData($("#myform")[0]),
                    cache: false,
                    processData: false,
                    contentType: false,
                    success: function(res){
                        alert("上传成功");
                    },
                    error: function (err) {
                        alert(err.statusText);
                    }
                })
            });
        //提交
        $("#fbtn").click(function(){
        var categoryId = $("#select2 option:selected").val();
        var name= $("input[name='productName']").val();
        var subtitle = $("input[name='subtitle']").val();
        var mainImage = $("input[name='upload_file']").val();
        var subImages = $("input[name='upload_file']").val();
        var detail = $("textarea[name='editor01']").val();
        var price = $("input[name='price']").val();
        var stock = $("input[name='stock']").val();
        var status =1;
            $.ajax({
                url: "/manage/product/productSave.do",
                type: 'GET',
                data: {categoryId:categoryId,name:name,subtitle:subtitle,mainImage:mainImage,subImages:subImages,detail:detail,price:price,stock:stock,status:status},
               dataType:"json",
                success: function(res){
                    alert(res.msg);
                    window.location.href="http://qingzhenwei.natapp1.cc/view/productShow.jsp";
                },
                error: function (err) {
                    alert(err.statusText);
                }
            })
        })

    })
</script>

</body>
</html>