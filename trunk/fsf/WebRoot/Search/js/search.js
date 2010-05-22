var tradeTypeFlag = 0;
function f_query(pageNum){
	var sb = new StringBuffer();
	var param = "";

	var o = $('#divTradeMode div[class="active"]');
	if(o.parent().get(0).style.display=="none"){
		sb.append("?newEstateParameter._ne_status=1");
		param = "newEstateParameter";
	}else if(o.attr('id')=="divSaleOut"){
		sb.append("?estateOutParameter._nin_tradeMode=2&estateOutParameter._nin_tradeMode=3");
		param = "estateOutParameter";
	}else if(o.attr('id')=="divRentOut"){
		sb.append("?estateOutParameter._nin_tradeMode=1&estateOutParameter._nin_tradeMode=3");
		param = "estateOutParameter";
	}else if(o.attr('id')=="divSaleIn"){
		sb.append("?estateInParameter._nin_tradeMode=2&estateInParameter._nin_tradeMode=3");
		param = "estateInParameter";
	}else if(o.attr('id')=="divRentIn"){
		sb.append("?estateInParameter._nin_tradeMode=1&estateInParameter._nin_tradeMode=3");
		param = "estateInParameter";
	}
	
	o = $('#divTradeType a[class="selected_filter"]');
	if(o.attr('id')=='divTradeType_1'){
		sb.append("&"+param+"._ne_tradeType=1");
	}else if(o.attr('id')=='divTradeType_2'){
		sb.append("&"+param+"._ne_tradeType=2");
	}else if(tradeTypeFlag!=0){
		sb.append("&"+param+"._ne_tradeType="+tradeTypeFlag);
	}
	

	o = $('#divEstateType a[class="selected_filter"]');
	if(o.attr('id')!='divEstateType_0'){
		sb.append("&"+param+"._ne_estateType="+o.attr('id').substring(14));
	}

	o = $('#place a[class="selected_filter"]');
	if(o.attr('id')!='place_'){
		sb.append("&"+param+"._ne_"+o.attr('id').substring(6,o.attr('id').lastIndexOf('_'))+"="+o.attr('id').substring(o.attr('id').lastIndexOf('_')+1));
	}

	o = $('#price a[class="selected_filter"]');
	if(o.attr('id')!='price_' ){
		var f = o.attr('id').substring(6,o.attr('id').lastIndexOf('_'))
		if(f!="" && !isNaN(f)){
			if($('#divSaleOut_').get(0).style.display=="none"){
				sb.append("&estateOutParameter._nge_rentPrice="+f);
			}else{
				sb.append("&estateOutParameter._nge_salePrice="+f);
			}
		}
		var t = o.attr('id').substring(o.attr('id').lastIndexOf('_')+1);
		if(t!="" && !isNaN(t)){
			if($('#divSaleOut_').get(0).style.display=="none"){
				sb.append("&estateOutParameter._nle_rentPrice="+t);
			}else{
				sb.append("&estateOutParameter._nle_salePrice="+t);
			}
		}
	}
	
	if($("#divArea_1").get(0).style.display!="none"){
		o = $('#area a[class="selected_filter"]');
		if(o.attr('id')!='area_'){
			var f = o.attr('id').substring(5,o.attr('id').lastIndexOf('_'));
			if(f!="" && !isNaN(f)){
				sb.append("&estateOutParameter._nge_area="+f);
			}
			var t = o.attr('id').substring(o.attr('id').lastIndexOf('_')+1);
			if(t!="" && !isNaN(t)){
				sb.append("&estateOutParameter._nle_area="+t);
			}
		}
	}
	
	o = $('#bedroom a[class="selected_filter"]');
	if(o.attr('id')!='bedroom_' ){
		var s = o.attr('id');
		var sa = s.split('_');
		if(sa[1]!="" && !isNaN(sa[1])){
			sb.append("&"+param+"._ne_bedroom="+sa[1]);	
		}else if(sa[2]!="" && !isNaN(sa[2])){
			sb.append("&"+param+"._nge_bedroom="+sa[2]);
		}else if(sa[3]!="" && !isNaN(sa[3])){
			sb.append(str+="&"+param+"._nle_bedroom="+sa[3]);
		}
	}
	
	if(pageNum && !isNaN(pageNum)){
		sb.append("&"+param+".currentPage="+pageNum);
	}
	
	
	if($('div.active').parent().get(0).style.display=="none"){
		document.forms['formList'].action ="/est/newEstate/list.ajax"+sb.toString();
	}else if($('div.active').attr('id').indexOf("Out")>-1){
		if(tradeTypeFlag){
			document.forms['formList'].action ="/est/estateout/query.ajax"+sb.toString();
		}else{
			document.forms['formList'].action ="/est/estateout/indexList.ajax"+sb.toString();
		}
	}else {
		if(tradeTypeFlag){
			document.forms['formList'].action ="/est/estatein/query.ajax"+sb.toString();
		}else{
			document.forms['formList'].action ="/est/estatein/indexList.ajax"+sb.toString();
		}
	}
	alert(sb.toString());
	alert(document.forms['formList'].action );
	
	ajaxAnywhere.formName = "formList";
	ajaxAnywhere.showLoadingMessage = function(){
		document.getElementById('EstateInfo').style.display = "block";
		document.getElementById('content').style.display = "none";
	}
	ajaxAnywhere.hideLoadingMessage = function(){
		document.getElementById('EstateInfo').style.display = "none";
	}
	
	ajaxAnywhere.getZonesToReload = function(){return "listZone";} 
	ajaxAnywhere.submitAJAX();
}

function f_selectFilter(divId,val){
	$('#'+divId+' a').removeClass('selected_filter');
	$('#'+divId+' a').addClass('choose_filter');
	$('#'+val).removeClass('choose_filter');
	$('#'+val).addClass('selected_filter');
	f_query();
}

function f_selectOutIn(divIdShow,val){
	$('#'+divIdShow).parent().find("div").removeClass('active');
	$('#'+divIdShow).addClass('active');
	$('#'+divIdShow+'_').parent().find("div").hide();
	$('#'+divIdShow+'_').show();
	$('#divArea_'+val).parent().find("div").hide();
	$('#divArea_'+val).show();
	f_query();
}