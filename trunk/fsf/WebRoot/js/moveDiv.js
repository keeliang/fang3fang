var kbb_n;
var TimeOut=5000; 
var adNum=0;
var theTimer;
var theone;
function _slip(kbb_n){
for (var w=1; w<=4; w++ ){
document.getElementById("kbb_content"+w).style.display = "none";
} 
document.getElementById("kbb_content"+kbb_n).style.display = "block"; 
}
function play_s(){
if(adNum<4){adNum++;}else{adNum=1;}
_slip(adNum);
theTimer=setTimeout("play_s()",TimeOut);
}
function pause_s(theone){window.clearInterval(theTimer);_slip(theone)}