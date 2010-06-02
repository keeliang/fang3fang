function showDiv(num,num1)
{
 for(var id = 1;id<=9;id++)
 {
  var ss="about"+num1+id;
  var nss="aboutnav"+num1+id;
  if(id==num){
  try{document.getElementById(ss).style.display="block"}catch(e){};
  try{document.getElementById(nss).className="wangpuHere"}catch(e){};
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

function showDiv03(num,num1)
{
 for(var id = 1;id<=7;id++)
 {
  var ss="about03"+num1+id;
  var nss="aboutnav03"+num1+id;
  if(id==num){
  try{document.getElementById(ss).style.display="block"}catch(e){};
  try{document.getElementById(nss).className="active02"}catch(e){};
  }else{
  try{document.getElementById(ss).style.display="none"}catch(e){};
  try{document.getElementById(nss).className=""}catch(e){};
  }
 }  
}