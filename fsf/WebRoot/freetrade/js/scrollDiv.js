var speed=10
  scroll_div2.innerHTML=scroll_div1.innerHTML
  function Marquee(){
  if(scroll_div2.offsetWidth-scroll_div.scrollLeft<=0)
  scroll_div.scrollLeft-=scroll_div1.offsetWidth
  else{
  scroll_div.scrollLeft++
  }
  }
  var MyMar=setInterval(Marquee,speed)
  scroll_div.onmouseover=function() {clearInterval(MyMar)}
  scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed)}