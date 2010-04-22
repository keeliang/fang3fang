var fromName;
var fields = [];

var Field = function (inputName,desc,type,isNull,len,decimalLen,defaultValue,minval,maxval){
	this.inputName = inputName;
	this.desc = desc;
	this.type = type;
	this.isNull = isNull; 
	this.len = len;
	this.decimalLen = decimalLen;
	this.defaultValue = defaultValue;
	this.minval = minval;
	this.maxval = maxval;
}
function addfield(inputName,desc,type,isNull,len,decimalLen,defaultValue,minval,maxval){
	var i = fields.length;
	fields[i] = new Field(inputName,desc,type,isNull,len,decimalLen,defaultValue,minval,maxval);
}
function validate(){
	var isCorrect = true;
	var errorSb = new StringBuffer();
	var errorCode = -1;
	
	if(!eval('document.forms["'+fromName+'"]'))	alert('form '+fromName+' not exists');
	for(var i=0;i<fields.length;i++){
		if(fields[i]==null)	continue;
		var fieldValue = null;
		//alert(fields[i].inputName);
		if(eval('document.forms["'+fromName+'"].'+fields[i].inputName+".value")){
			fieldValue = trim(eval('document.forms["'+fromName+'"].'+fields[i].inputName+".value"));
		}else	if(eval('document.forms["'+fromName+'"].'+fields[i].inputName+".length")){
			var a = document.getElementsByName(fields[i].inputName);
			for(var j = 0;j<a.length;j++){
				if(a[j].checked){
					fieldValue = a[j].value;
					break;
				}
			}
		}
		if(fieldValue==null || fieldValue==""){
			if(fields[i].defaultValue!=null && fields[i].defaultValue != ""){
				fieldValue = fields[i].defaultValue;
				eval('document.forms["'+fromName+'"].'+fields[i].inputName+".value='"+fields[i].defaultValue+"'");
			}
			if(!fields[i].isNull){
				errorCode = 0;
			}
		}else{
			switch(fields[i].type){
				case "String":errorCode = isString(fieldValue,fields[i]);break;
				case "Integer":errorCode = isInteger(fieldValue,fields[i]);	break;
				case "Number":errorCode = isNumber(fieldValue,fields[i]);	break;
				case "Date":errorCode = isDate(fieldValue,fields[i]);	break;
				case "DateTime":errorCode = isDateTime(fieldValue,fields[i]);	break;
				case "Time":errorCode = isTime(fieldValue,fields[i]);	break;
				case "Email":errorCode = isEmail(fieldValue,fields[i]);	break;
			}
		}

		if(errorCode!=-1){
			var spanStart = "<span style='color:red;'>[";
			var spanEnd = "]</span>";
			isCorrect = false;
			switch(errorCode){
				case 0:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 1:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 2:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 3:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+fields[i].len+".\n");break;
				case 4:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+fields[i].maxval+".\n");break;
				case 5:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+fields[i].minval+".\n");break;
				case 6:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+fields[i].len+".\n");break;
				case 7:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+fields[i].decimalLen+".\n");break;
				case 8:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 9:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 10:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 11:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
				case 12:errorSb.append(spanStart+fields[i].desc+spanEnd+errorMsg[errorCode]+"\n");break;
			}
		}
		errorCode=-1;
	}
	if(!isCorrect){
		document.getElementById("errorMsg").innerHTML = errorSb.toString(); 
	}
	fields = [];
	return isCorrect;
}

function isString(fieldValue,objField){
	if(fieldValue.length>objField.len)return 3;
	return -1;
}

function isInteger(fieldValue,objField){
	if(isNaN(fieldValue))return 1;
	if(fieldValue.indexOf(".")>-1)return 2;
	if(fieldValue.length>objField.len)return 3;
	if(objField.maxval && parseInt(fieldValue)>objField.maxval)return 4;
	if(objField.minval && parseInt(fieldValue)<objField.minval)return 5;
	return -1;
}

function isNumber(fieldValue,objField){
	if(isNaN(fieldValue))return 1;
	if(objField.len&&objField.decimalLen){
		if(fieldValue.indexOf(".")>-1){
			if(fieldValue.substring(0,fieldValue.indexOf(".")).length>objField.len)return 6;
			if(fieldValue.substring(fieldValue.indexOf(".")+1).length>objField.decimalLen)return 7;
		}else{
			if(fieldValue.length>objField.len)return 3;
		}
	}
	if(objField.maxval && parseFloat(fieldValue)>objField.maxval)return 4;
	if(objField.minval && parseFloat(fieldValue)<objField.minval)return 5;
	return -1;
}

function isDate(fieldValue,objField){
 	var reg = /^(\d{4})(\-|\.)(\d{2})(\-|\.)(\d{2})$/;
 	if(!reg.test(fieldValue))return 8;
 	var y = fieldValue.substring(0,4);
 	var m = fieldValue.substring(5,7);
 	var d = fieldValue.substring(8);
 	var dateAry = null;
 	if(y%4==0){var dateAry = [31,29,31,30,31,30,31,31,30,31,30,31];}
 	else{var dateAry = [31,29,31,30,31,30,31,31,30,31,30,31];}
 	if(parseInt(m)>12)return 12;
 	if(d>dateAry[parseInt(m)-1])return 12;
 	return -1;
}

function isTime(fieldValue,objField){
	var reg = /^(\d{2}):(\d{2}):(\d{2})$/;
	if(!reg.test(fieldValue))return 9;
	var h = fieldValue.substring(0,2);
	var m = fieldValue.substring(3,5);
	var s = fieldValue.substring(6);
	if(h>=24 || m>=60 || s>=60)return 12;
	return -1;
}

function isDateTime(fieldValue,objField){
	//var reg = /^(\d{4})(\-|\.)(\d{2})(\-|\.)(\d{2}) ([0-2]{1}\d{1}):([0-5]{1}[0-9]{1}):([0-5]{1}[0-9]{1})$/;
	var reg = /^(\d{4})(\-|\.)(\d{2})(\-|\.)(\d{2}) (\d{2}):(\d{2}):(\d{2})$/;
	if(!reg.test(fieldValue))return 10;
	var d = fieldValue.substring(0,10);
	var t = fieldValue.substring(11);
	var v = isDate(d,objField);
	if(-1!=v)return v;
	return isTime(t,objField);
}

function isEmail(fieldValue,objFiled){
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return filter.test(fieldValue)?-1:11;
}