// Lee dialog 1.0 http://www.xij.cn/blog/?p=68

var dialogFirst=true;
function dialog(title,content,width,height,cssName){

if(dialogFirst==true){
  var temp_float=new String;
  temp_float="<div id=\"floatBoxBg\" style=\"height:"+$(document).height()+"px;filter:alpha(opacity=50);opacity:0.5;\"></div>";
  temp_float+="<div id=\"floatBox\" class=\"floatBox\">";
  temp_float+="<div class=\"title\"><h4></h4><span>关闭</span></div>";
  temp_float+="<div class=\"ShowContent\"><table><tr><td>类型:</td><td>餐厅-转让</td></tr><tr><td>标题：</td><td>市桥车站附近餐厅急转</td></tr><tr><td>内容：</td><td>装修精美，格价优惠，免转手费</td></tr><tr><td>地址:</td><td>番禺区-市桥-市桥大北路123号</td></tr><tr><td>联系人：</td><td>陈生</td></tr><tr><td>联系电话：</td><td>1381111111</td></tr></table></div>";
  temp_float+="</div>";
  $("body").append(temp_float);
  dialogFirst=false;
}

$("#floatBox .title span").click(function(){
  $("#floatBoxBg").animate({opacity:"0.5"},"normal",function(){$(this).hide();});
 
  $("#floatBox").animate({top:($(document).scrollTop()-(height=="auto"?300:parseInt(height)))+"px"},"normal",function(){$(this).hide();}); 
 
    
  
  
});

$("#floatBox .title h4").html(title);
contentType=content.substring(0,content.indexOf(":"));
content=content.substring(content.indexOf(":")+1,content.length);
switch(contentType){
  case "url":
  var content_array=content.split("?");
  $("#floatBox .content").ajaxStart(function(){
    $(this).html("loading...");
  });
  $.ajax({
    type:content_array[0],
    url:content_array[1],
    data:content_array[2],
	error:function(){
	  $("#floatBox .content").html("error...");
	},
    success:function(html){
      $("#floatBox .content").html(html);
    }
  });
  break;
  case "text":
  $("#floatBox .content").html(content);
  break;
  case "id":
  $("#floatBox .content").html($("#"+content+"").html());
  break;
  case "iframe":
  $("#floatBox .content").html("<iframe src=\""+content+"\" width=\"100%\" height=\""+(parseInt(height)-30)+"px"+"\" scrolling=\"auto\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\"></iframe>");
}

$("#floatBoxBg").show();
$("#floatBoxBg").animate({opacity:"0.5"},"normal");
$("#floatBox").attr("class","floatBox "+cssName);
$("#floatBox").css({display:"block",left:(($(document).width())/2-(parseInt(width)/2))+"px",top:($(document).scrollTop()-(height=="auto"?300:parseInt(height)))+"px",width:width,height:height});
$("#floatBox").animate({top:($(document).scrollTop()+50)+"px"},"normal"); 
}