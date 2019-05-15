//文字切换
	function getNames(obj,name,tij)
	{	
		var p = document.getElementById(obj);
		var plist = p.getElementsByTagName(tij);
		var rlist = new Array();
		for(i=0;i<plist.length;i++)
		{
			if(plist[i].getAttribute("name") == name)
			{
				rlist[rlist.length] = plist[i];
			}
		}
		return rlist;
	}

		function yysweb_com(obj,name)
		{
			var p = obj.parentNode.getElementsByTagName("li");
			var p1 = getNames(name,"f","div");
			for(i=0;i<p1.length;i++)
			{
				if(obj==p[i])
				{
					p[i].className = "s";
					p1[i].className = "dis";
				}
				else
				{
					p[i].className = "";
					p1[i].className = "undis";
				}
			}
		}


$(document).ready(function(){
	
//导航下拉*/
  $('#Navigation li').mousemove(function(){
    $(this).find('dl').slideDown();
    $(this).find('a').addClass('active');
  });
  $('#Navigation li').mouseleave(function(){
    $(this).find('dl').stop(true,false).slideUp("fast");
	$(this).find('a').removeClass('active');
			
  }); 
  $('#Navigation li').mouseleave(function(){
    $(this).find('dl').stop(true,false).slideUp("fast");
	$(this).find('a').removeClass('active');

  });	
	
	

//三级分类						   
  $('#sub_nav h1').click(function(){
	 $(this).next('dl').slideToggle().siblings('dl').slideUp();;	
	});

  

//新手上路
$('#sub_nav_s h1').click(function(){
	 $(this).next('dl').slideToggle().siblings('dl').slideUp();;	
	});
	  
  


//快捷操作
$(".wraps div").hover(function() {
	$(this).animate({"top": "-80px"}, 400, "swing");
},function() {
	$(this).stop(true,false).animate({"top": "0px"}, 400, "swing");
});


		
});






