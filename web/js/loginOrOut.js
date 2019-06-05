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
})
function Logout() {
    //网络请求
    $.ajax({
        type  		: "POST",
        url   		: '/user/logout.do',
        dataType	: "json",
        success     : function(res){
            //请求成功
            if(0 === res.status){
                window.location.href='http://qingzhenwei.natapp1.cc/index.jsp';
                alert(res.msg);
            }
            //无登陆状态，需要强制登陆
            else if(10 === res.status){
                alert("需要登录");
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