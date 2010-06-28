
function jumpTo(strID)
{
 for(var i = 1;i<=2;i++)
 {
  var a="a"+i;
  if(i==strID){
  try{document.getElementById(a).style.display="block"}catch(e){};
  }else{
  try{document.getElementById(a).style.display="none"}catch(e){};
  }
 }  
}

function jumpTob(strID)
{
 for(var i = 1;i<=5;i++)
 {
  var b="b"+i;
  if(i==strID){
  try{document.getElementById(b).style.display="block"}catch(e){};
  }else{
  try{document.getElementById(b).style.display="none"}catch(e){};
  }
 }  
}

function jumpToc(strID)
{
 for(var i = 1;i<=2;i++)
 {
  var c="c"+i;
  if(i==strID){
  try{document.getElementById(c).style.display="block"}catch(e){};
  }else{
  try{document.getElementById(c).style.display="none"}catch(e){};
  }
 }  
}
