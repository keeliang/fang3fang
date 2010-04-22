function showmenu(strID){ 
    var i; 
    for(i=0;i<=4;i++){ 
        var lay;
		var laya;
        lay = eval('lay' + i); 
        if (lay.style.display=="block" && lay!=eval(strID)  ){ 
            lay.style.display = "none";
			
        } 	
    } 
    if (strID.style.display=="none"){ 
        strID.style.display = "block"; 
    }else{ 
        strID.style.display = "none"; 
    } 
} 
function dismenu(straID){ 
    var j; 
    for(j=0;j<=4;j++){ 
		var laya;
        laya = eval('laya' + j); 
        if (laya.style.display=="block" && laya == eval(straID)  ){ 
            laya.style.display = "none";
			
        } else{laya.style.display = "block";}	
    } 
 
}