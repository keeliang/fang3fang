var nn;
nn = 1;
change_img();
function change_img(){
	if (nn > 4) {
		nn = 1;
	}
	setTimeout("setFocus1(" + nn + ")", 3000);
	nn++;
	tt = setTimeout("change_img()", 3000);
}

function setFocus1(i) {
	selectLayer1(i);
}

function selectLayer1(i) {
	switch (i) {
	  case 1:
			document.getElementById("focusPic1").style.display = "block";
			document.getElementById("focusPic2").style.display = "none";
			document.getElementById("focusPic3").style.display = "none";
			document.getElementById("focusPic4").style.display = "none";
			document.getElementById("focusPic1nav").style.display = "block";
			document.getElementById("focusPic2nav").style.display = "none";
			document.getElementById("focusPic3nav").style.display = "none";
			document.getElementById("focusPic4nav").style.display = "none";
		break;
	  case 2:
			document.getElementById("focusPic1").style.display = "none";
			document.getElementById("focusPic2").style.display = "block";
			document.getElementById("focusPic3").style.display = "none";
			document.getElementById("focusPic4").style.display = "none";
			document.getElementById("focusPic1nav").style.display = "none";
			document.getElementById("focusPic2nav").style.display = "block";
			document.getElementById("focusPic3nav").style.display = "none";
			document.getElementById("focusPic4nav").style.display = "none";
		break;
	  case 3:
			document.getElementById("focusPic1").style.display = "none";
			document.getElementById("focusPic2").style.display = "none";
			document.getElementById("focusPic3").style.display = "block";
			document.getElementById("focusPic4").style.display = "none";
			document.getElementById("focusPic1nav").style.display = "none";
			document.getElementById("focusPic2nav").style.display = "none";
			document.getElementById("focusPic3nav").style.display = "block";
			document.getElementById("focusPic4nav").style.display = "none";
		break;
	  case 4:
			document.getElementById("focusPic1").style.display = "none";
			document.getElementById("focusPic2").style.display = "none";
			document.getElementById("focusPic3").style.display = "none";
			document.getElementById("focusPic4").style.display = "block";
			document.getElementById("focusPic1nav").style.display = "none";
			document.getElementById("focusPic2nav").style.display = "none";
			document.getElementById("focusPic3nav").style.display = "none";
			document.getElementById("focusPic4nav").style.display = "block";
		break;
	}
}