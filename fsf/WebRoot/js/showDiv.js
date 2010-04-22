function showDiv(num,num1)
{
 for(var id = 1;id<=7;id++)
 {
  var ss="about"+num1+id;
  var nss="aboutnav"+num1+id;
  var sss0="select"+num1+id+"0";
  var sss8="select"+num1+id+"8";
  if(id==num){
     try{document.getElementById(ss).style.display="block"}catch(e){};
     try{document.getElementById(nss).className="active"}catch(e){};
     if ($("#"+sss0).val()=='0'){
        $("#"+sss8).html("");
        $("#"+sss8).append('<option value="">价格</option><option value="1">50万元以下</option><option value="2">50 - 100万元</option><option value="3">100万元以上</option> ');        
        var content=$("#QuickSearchContent").html();      
        var count=content.split("SellorRent=1").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=1","SellorRent=0");
        }       
        $("#QuickSearchContent").html(content);
        
        content = $("#PriceContent").html(); 
        count=content.split("SellorRent=1").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=1","SellorRent=0");
        }
        $("#PriceContent").html(content); 
        
        content = $("#AreaContent").html(); 
        count=content.split("SellorRent=1").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=1","SellorRent=0");
        }
        $("#AreaContent").html(content); 
        
        content = $("#HouseTypeContent").html(); 
        count=content.split("SellorRent=1").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=1","SellorRent=0");
        }
        $("#HouseTypeContent").html(content);      
     }else if ($("#"+sss0).val()=='1'){	
        $("#"+sss8).html("");
        $("#"+sss8).append('<option value="">价格</option><option value="1">1000元以下</option><option value="2">1000 - 2000元</option><option value="3">2000元以上</option> ');
        var districtContent=$("#QuickSearchContent").html();       
        var count=districtContent.split("SellorRent=0").length-1;
        for(var i=0; i < count; i++) {
          districtContent=districtContent.replace("SellorRent=0","SellorRent=1");
        }  
        $("#QuickSearchContent").html(districtContent);
        
        content = $("#PriceContent").html(); 
        count=content.split("SellorRent=0").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=0","SellorRent=1");
        }
        $("#PriceContent").html(content); 
        
        content = $("#AreaContent").html(); 
        count=content.split("SellorRent=0").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=0","SellorRent=1");
        }
        $("#AreaContent").html(content); 
        
        content = $("#HouseTypeContent").html(); 
        count=content.split("SellorRent=0").length-1;       
        for(var i=0; i < count; i++) {
           content=content.replace("SellorRent=0","SellorRent=1");
        }
        $("#HouseTypeContent").html(content);         
     }	 
  }else{
     try{document.getElementById(ss).style.display="none"}catch(e){};
     try{document.getElementById(nss).className=""}catch(e){};
  }
 }  
}

function showDiv_com(num,num1)
{
 for(var id = 1;id<=3;id++)
 {
  var ss="aboutc"+num1+id;
  var nss="aboutnavc"+num1+id;
  if(id==num){
  try{document.getElementById(ss).style.display="block"}catch(e){};
  try{document.getElementById(nss).className="active_com"}catch(e){};
  }else{
  try{document.getElementById(ss).style.display="none"}catch(e){};
  try{document.getElementById(nss).className=""}catch(e){};
  }
 }  
}

function showDiv02(num,num1)
{
 for(var id = 1;id<=7;id++)
 {
  var ss="about02"+num1+id;
  var nss="aboutnav02"+num1+id;
  if(id==num){
  try{document.getElementById(ss).style.display="block"}catch(e){};
  try{document.getElementById(nss).className="active02"}catch(e){};
  }else{
  try{document.getElementById(ss).style.display="none"}catch(e){};
  try{document.getElementById(nss).className=""}catch(e){};
  }
 }  
}