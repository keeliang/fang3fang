$(document).ready(function() {   
    ShowDetailQZ();	 
	HloansCalculator();
	LeaveWord(); 
});

function ShowDetailQZ(){
    var url = window.location.href;
	var id = url.indexOf('=');
	var img;
	if (id == -1) return "";
	id = url.substring(id + 1);
	$.ajax({
		url: "/Fang3FangWeb/Access",
		type: "POST",
		dataType: "xml",
		data: "useraction=Estates&referaction=SelectEstateByID&SellorRent=1&RequireSellRent=1&IsConsign=0&EstateMsgID=" + id,
		cache: false,
		success: function(xml){
			    var properties = $(xml).find("Estate")[0];			    
			    
			    var EstateMsgID=$(properties).find("EstateMsgID").text();
				var TownName = $(properties).find("TownName").text();
				var FBDate = $(properties).find("FBDate").text();				 
				
				$("#TypeInfo").empty();
				$("#TypeInfo").append('求租信息');
				
				$("#PropertyInfo").empty();
				$("#PropertyInfo").append(TownName);
				
				$("#EstateInfo").empty();
				$("#EstateInfo").append('<span class="float_right">发布日期：'+FBDate+'</span><span class="cOrange font14"><b>'+TownName+'基本信息</b></span> <img src="images/freeTrade_down.jpg" width="13" height="13" align="absmiddle" />');
								
				var EstateMsgID = $(properties).find("EstateMsgID").text();
				$("#EstateMsgID").empty();
				$("#EstateMsgID").append('<span id="estateid" class="cOrange">'+EstateMsgID+'</span>');
				
				var CityName = $(properties).find("CityName").text();
				$("#CityName").empty();
				$("#CityName").append(CityName);
				
				var DistrictName = $(properties).find("DistrictName").text();
				$("#DistrictName").empty();
				$("#DistrictName").append(DistrictName);
				
				var TownName = $(properties).find("TownName").text();
				$("#TownName").empty();
				$("#TownName").append(TownName);
				
				var PropertyTypeName = $(properties).find("PropertyTypeName").text();
				$("#PropertyTypeName").empty();
				$("#PropertyTypeName").append(PropertyTypeName);
				
			  	var Room = $(properties).find("Room").text();
				var Hall = $(properties).find("Hall").text();
				var Toilet = $(properties).find("Toilet").text();
				var Balcony = $(properties).find("Balcony").text();
				$("#HouseType").empty();
				$("#HouseType").append(Room+'室'+Hall+'厅'+Toilet+'卫'+Balcony+'阳台');
				
				var OrientationName=$(properties).find("OrientationName").text();
				$("#OrientationName").empty();
				$("#OrientationName").append(OrientationName);
				
				var StartFloor=$(properties).find("FloorIs").text();
				var EndFloor=$(properties).find("FloorNum").text();
				 
				$("#StartFloor").empty();
				$("#StartFloor").append('从第  <span class="cOrange">'+StartFloor+'</span>  层');
				
				$("#EndFloor").empty();
				$("#EndFloor").append('第  <span class="cOrange">'+EndFloor+'</span>  层');
				
				var StartArea=$(properties).find("UsableArea").text();
				var EndArea=$(properties).find("TotalArea").text();
				$("#StartArea").empty();
				$("#StartArea").append('<span class="cOrange">'+StartArea+'</span>  平方米');
				$("#EndArea").empty();
				$("#EndArea").append('<span class="cOrange">'+EndArea+'</span>  平方米'); 
				
				var StartRent=$(properties).find("ManagementFees").text();
				var EndRent=$(properties).find("Rent").text();
				$("#StartRent").empty();
				$("#StartRent").append('<span class="cOrange">'+StartRent+'</span>  元/月');
				$("#EndRent").empty();
				$("#EndRent").append('<span class="cOrange">'+EndRent+'</span>  元/月'); 
							
				var VisitTime=$(properties).find("VisitTime").text();
				$("#VisitTime").empty();
				$("#VisitTime").append(VisitTime+'&nbsp;');
				if($("#VisitTime").html()=='null &nbsp;'){
				   $("#VisitTime").empty();			   
				   $("#VisitTime").append('&nbsp;');
				}
				 		
			    var RenovationStandardName = $(properties).find("RenovationStandardName").text();
			    $("#RenovationStandardName").empty();
				$("#RenovationStandardName").append(RenovationStandardName+'&nbsp;');
				if($("#RenovationStandardName").html()=='null &nbsp;'){
				   $("#RenovationStandardName").empty();			   
				   $("#RenovationStandardName").append('&nbsp;');
				} 			 
				
				var PayWayTypeName=$(properties).find("PayWayTypeName").text();
				$("#PayWayTypeName").empty();
				$("#PayWayTypeName").append(PayWayTypeName+'&nbsp;');
				if($("#PayWayTypeName").html()=='null &nbsp;'){
				   $("#PayWayTypeName").empty();			   
				   $("#PayWayTypeName").append('&nbsp;');
				} 				 
			   
				var Introduction = $(properties).find("Introduction").text();
				$("#Remark").empty();
				$("#Remark").append(Introduction+'&nbsp;');
				if($("#Remark").html()=='null &nbsp;'){
				   $("#Remark").empty();			   
				   $("#Remark").append('&nbsp;');
				} 				 			 
				
				var Contacter = $(properties).find("Contacter").text();
				$("#Contacter").empty();
				$("#Contacter").append(Contacter);	
				 
				
				var HomePhone = $(properties).find("HomePhone").text();
				$("#HomePhone").empty();
				$("#HomePhone").append(HomePhone+'&nbsp;');
				if($("#HomePhone").html()=='null &nbsp;'){
				   $("#HomePhone").empty();			   
				   $("#HomePhone").append('&nbsp;');
				} 
				
				var MobilePhone = $(properties).find("MobilePhone").text();
				$("#MobilePhone").empty();
				$("#MobilePhone").append(MobilePhone+'<span class="cRed03">(中介免问)</span>');
				if($("#MobilePhone").html()=='null <span class="cRed03">(中介免问)</span>'){
				   $("#MobilePhone").empty();
				   $("#MobilePhone").append('&nbsp;');		
				}
										
				var QQ = $(properties).find("QQ").text();
				$("#QQ").empty();
				$("#QQ").append(QQ+'&nbsp;');
				if($("#QQ").html()=='null &nbsp;'){
				   $("#QQ").empty();  
				   $("#QQ").append('&nbsp;');
				}			 
				
				var MSN = $(properties).find("MSN").text();
				$("#MSN").empty();
				$("#MSN").append(MSN+'&nbsp;');	 				
				if($("#MSN").html()=='null &nbsp;'){
				   $("#MSN").empty();
				   $("#MSN").append('&nbsp;');	
				}				 
				
				var Email = $(properties).find("Email").text();
				$("#Email").empty();
				$("#Email").append(Email+'&nbsp;');				
				if($("#Email").html()=='null &nbsp;'){
				   $("#Email").empty();
				   $("#Email").append('&nbsp;');
				}				
				 
				var OverdueDate =$(properties).find("OverdueDate").text();
				$("#OverdueDate").empty();
				$("#OverdueDate").append(OverdueDate+'&nbsp;');
				if($("#OverdueDate").html()=='null &nbsp;'){
				   $("#OverdueDate").empty();
				   $("#OverdueDate").append('&nbsp;');
				}					 
				
				var DepositName=$(properties).find("DepositName").text();
				$("#DepositName").empty();				 
				$("#DepositName").append(DepositName);
				 
		}
	});	 
}

function HloansCalculator(){       
       $("#CalMethod ul li").click(function(){
              $("#CalMethod ul li.NavOn").removeClass("NavOn");
              var className = $(this).attr("id").substring(5);              
              $(this).addClass("NavOn");
              var html = "";
               
              switch(className) {
                case "1":
                   $("#CalculatorTable").empty();
                   $("#CalculatorTable").append('<tr><td colspan="2" class="grayBg">填写贷款信息</td></tr><tr><td class="grayBg right freeTrade_tableW01">贷款类别：</td><td class="left"><select name="type" onchange="changehz(this)"><option value="1" selected="selected">商业贷款</option><option value="2">公积金</option><option value="3">组合型</option></select></td></tr><tr><td class="grayBg right" valign="middle">计算方式：</td><td class="left"><div><p id="other1" class="padt5"><input id="calc_radio1" name="jisuan_radio" type="radio" value="1" checked="checked" onclick="exc_js(this.form,1);"/> 根据面积、单价计算</p><p class="padt5" id="pricep">单价：<input name="price" type="text" class="inputW01" /> 元/平米</p><p class="padt5" id="sqmp">面积：<input name="sqm" type="text" class="inputW01" />平方米</p><p class="padt5" id="anjiep">按揭成数：<select name="anjie"><option value="9">9成</option><option value="8">8成</option><option value="7" selected="selected">7成</option><option value="6">6成</option><option value="5">5成</option><option value="4">4成</option><option value="3">3成</option><option value="2">2成</option></select></p><p id="other2" class="padt5"><input id="calc_radio2" name="jisuan_radio" type="radio" value="2" onclick="exc_js(this.form,2);" /> 根据贷款总额计算</p><p id="calc_js_div2" class="padt5" style="display:none;">贷款总额：<input maxLength="8" size="10" name="daikuan_total000" />元</p><p id="hz" style="display:none"> <table class="ttt9" cellspacing="0" cellpadding="0" width="100%"><tbody><tr><td><b>组合比例(组合型)：</b></td></tr> <tr><td>商业性：<input maxlength="8" size="8" name="total_sy" />元</td></tr><tr><td>公积金：<input maxlength="8" size="8" name="total_gjj" />元 </td></tr></tbody></table></p></div></td></tr><tr><td class="grayBg right freeTrade_tableW01">按揭年数：</td><td class="left"><select id="years" name="years"><option value="1">1年（12期）</option><option value="2">2年（24期）</option><option value="3">3年（36期）</option><option value="4">4年（48期）</option><option value="5">5年（60期）</option><option value="6">6年（72期）</option><option value="7">7年（84期）</option><option value="8">8年（96期）</option><option value="9">9年（108期）</option><option value="10">10年（120期）</option><option value="11">11年（132期）</option><option value="12">12年（144期）</option><option value="13">13年（156期）</option><option value="14">14年（168期）</option><option value="15">15年（180期）</option><option value="16">16年（192期）</option><option value="17">17年（204期）</option> <option value="18">18年（216期）</option><option value="19">19年（228期）</option><option value="20" selected="selected">20年（240期）</option><option value="21">21年（252期）</option><option value="22">22年（264期）</option><option value="23">23年（276期）</option><option value="24">24年（288期）</option><option value="25">25年（300期）</option><option value="26">26年（312期）</option><option value="27">27年（324期）</option><option value="28">28年（336期）</option><option value="29">29年（348期）</option><option value="30">30年（360期）</option></select></td></tr><tr><td class="grayBg right freeTrade_tableW01">利&nbsp;&nbsp;&nbsp;&nbsp;率：</td><td class="left"><select id="lilv" name="lilv"><option value="42">08年12月23日利率上限</option><option value="41" selected >08年12月23日利率下限</option><option value="40">08年11月27日第二套房</option><option value="39">08年11月27日利率基准</option><option value="38">08年11月27日利率上限</option><option value="37">08年11月27日利率下限</option><option value="36">08年10月30日第二套房</option><option value="35">08年10月30日利率基准</option><option value="34">08年10月30日利率上限</option><option value="33">08年10月30日利率下限</option><option value="32">08年10月27日第二套房</option><option value="31">08年10月27日利率基准</option><option value="30">08年10月27日利率上限</option><option value="29">08年10月27日利率下限</option><option value="28">08年10月09日第二套房</option><option value="27">08年10月09日利率上限</option><option value="26">08年10月09日利率下限</option><option value="25">08年09月16日第二套房</option> <option value="24">08年09月16日利率上限</option><option value="23">08年09月16日利率下限</option><option value="22">07年12月21日第二套房</option><option value="21">07年12月21日利率上限</option><option value="20">07年12月21日利率下限</option><option value="19">07年9月15日第二套房</option><option value="18">07年9月15日利率上限</option><option value="17">07年9月15日利率下限</option><option value="16">07年8月22日利率上限</option><option value="15">07年8月22日利率下限</option><option value="14">07年7月21日利率上限</option><option value="13">07年7月21日利率下限</option><option value="12">07年5月19日利率上限</option><option value="11">07年5月19日利率下限</option><option value="10">07年3月18日利率上限</option><option value="9">07年3月18日利率下限</option><option value="8">06年8月19日利率上限</option><option value="7">06年8月19日利率下限</option><option value="6">06年4月28日利率上限</option><option value="5">06年4月28日利率下限</option><option value="4">05年3月17日后利率上限</option><option value="3">05年3月17日后利率下限</option><option value="2">05年1月1日-3月17日利率</option><option value="1">05年1月1日前利率</option></select></td></tr><tr><td colspan="2"><button class="freeTrade_button" onclick="ext_total();">开始计算</button>&nbsp;&nbsp;<button class="freeTrade_button" onclick="formReset();">清除</button></td></tr>');
                   $("#CalculatorResult").empty();
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content");
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content1");
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content2");
                   $("#CalculatorResult").addClass("freeTrade_contnetL_show02_conR_content");
                   $("#CalculatorResult").append('<p><b>计算结果：</b></p><p><label>房款总额：</label> <input name="fangkuan_total" type="text" /></p><p><label>贷款总额：</label> <input name="daikuan_total" type="text" /></p><p><label>还款总额：</label> <input name="all_total" type="text" /></p><p><label>支付利息款：</label> <input name="accrual" type="text" /></p><p><label>首期付款：</label> <input name="money_first" type="text" /></p><p><label>贷款月数：</label> <input name="month" type="text" /></p><p><label>月均还款：</label> <input name="month_money" type="text" /></p>');
                   break;
                  
                case "2":
                   $("#CalculatorTable").empty();
                   $("#CalculatorTable").append('<tr><td colspan="2" class="grayBg">填写贷款信息</td></tr><tr><td class="grayBg right freeTrade_tableW01">贷款类别：</td><td class="left"><select name="type" onchange="changehz(this)"><option value="1" selected="selected">商业贷款</option><option value="2">公积金</option><option value="3">组合型</option></select></td></tr><tr><td class="grayBg right" valign="middle">计算方式：</td><td class="left"><div><p id="other1" class="padt5"><input id="calc_radio1" name="jisuan_radio" type="radio" value="1" checked="checked" onclick="exc_js(this.form,1);"/> 根据面积、单价计算</p><p class="padt5" id="pricep">单价：<input name="price" type="text" class="inputW01" /> 元/平米</p><p class="padt5" id="sqmp">面积：<input name="sqm" type="text" class="inputW01" />平方米</p><p class="padt5" id="anjiep">按揭成数：<select name="anjie"><option value="9">9成</option><option value="8">8成</option><option value="7" selected="selected">7成</option><option value="6">6成</option><option value="5">5成</option><option value="4">4成</option><option value="3">3成</option><option value="2">2成</option></select></p><p id="other2" class="padt5"><input id="calc_radio2" name="jisuan_radio" type="radio" value="2" onclick="exc_js(this.form,2);" /> 根据贷款总额计算</p><p id="calc_js_div2" class="padt5" style="display:none;">贷款总额：<input maxLength="8" size="10" name="daikuan_total000" />元</p><p id="hz" style="display:none"> <table class="ttt9" cellspacing="0" cellpadding="0" width="100%"><tbody><tr><td><b>组合比例(组合型)：</b></td></tr> <tr><td>商业性：<input maxlength="8" size="8" name="total_sy" />元</td></tr><tr><td>公积金：<input maxlength="8" size="8" name="total_gjj" />元 </td></tr></tbody></table></p></div></td></tr><tr><td class="grayBg right freeTrade_tableW01">按揭年数：</td><td class="left"><select id="years" name="years"><option value="1">1年（12期）</option><option value="2">2年（24期）</option><option value="3">3年（36期）</option><option value="4">4年（48期）</option><option value="5">5年（60期）</option><option value="6">6年（72期）</option><option value="7">7年（84期）</option><option value="8">8年（96期）</option><option value="9">9年（108期）</option><option value="10">10年（120期）</option><option value="11">11年（132期）</option><option value="12">12年（144期）</option><option value="13">13年（156期）</option><option value="14">14年（168期）</option><option value="15">15年（180期）</option><option value="16">16年（192期）</option><option value="17">17年（204期）</option> <option value="18">18年（216期）</option><option value="19">19年（228期）</option><option value="20" selected="selected">20年（240期）</option><option value="21">21年（252期）</option><option value="22">22年（264期）</option><option value="23">23年（276期）</option><option value="24">24年（288期）</option><option value="25">25年（300期）</option><option value="26">26年（312期）</option><option value="27">27年（324期）</option><option value="28">28年（336期）</option><option value="29">29年（348期）</option><option value="30">30年（360期）</option></select></td></tr><tr><td class="grayBg right freeTrade_tableW01">利&nbsp;&nbsp;&nbsp;&nbsp;率：</td><td class="left"><select id="lilv" name="lilv"><option value="42">08年12月23日利率上限</option><option value="41" selected >08年12月23日利率下限</option><option value="40">08年11月27日第二套房</option><option value="39">08年11月27日利率基准</option><option value="38">08年11月27日利率上限</option><option value="37">08年11月27日利率下限</option><option value="36">08年10月30日第二套房</option><option value="35">08年10月30日利率基准</option><option value="34">08年10月30日利率上限</option><option value="33">08年10月30日利率下限</option><option value="32">08年10月27日第二套房</option><option value="31">08年10月27日利率基准</option><option value="30">08年10月27日利率上限</option><option value="29">08年10月27日利率下限</option><option value="28">08年10月09日第二套房</option><option value="27">08年10月09日利率上限</option><option value="26">08年10月09日利率下限</option><option value="25">08年09月16日第二套房</option> <option value="24">08年09月16日利率上限</option><option value="23">08年09月16日利率下限</option><option value="22">07年12月21日第二套房</option><option value="21">07年12月21日利率上限</option><option value="20">07年12月21日利率下限</option><option value="19">07年9月15日第二套房</option><option value="18">07年9月15日利率上限</option><option value="17">07年9月15日利率下限</option><option value="16">07年8月22日利率上限</option><option value="15">07年8月22日利率下限</option><option value="14">07年7月21日利率上限</option><option value="13">07年7月21日利率下限</option><option value="12">07年5月19日利率上限</option><option value="11">07年5月19日利率下限</option><option value="10">07年3月18日利率上限</option><option value="9">07年3月18日利率下限</option><option value="8">06年8月19日利率上限</option><option value="7">06年8月19日利率下限</option><option value="6">06年4月28日利率上限</option><option value="5">06年4月28日利率下限</option><option value="4">05年3月17日后利率上限</option><option value="3">05年3月17日后利率下限</option><option value="2">05年1月1日-3月17日利率</option><option value="1">05年1月1日前利率</option></select></td></tr><tr><td colspan="2"><button class="freeTrade_button" onclick="ext_total();">开始计算</button>&nbsp;&nbsp;<button class="freeTrade_button" onclick="formReset();">清除</button></td></tr>');
                   $("#CalculatorResult").empty();
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content");
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content1");
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content2");
                   $("#CalculatorResult").addClass("freeTrade_contnetL_show02_conR_content");
                   $("#CalculatorResult").append('<p><b>计算结果：</b></p><p><label>房款总额：</label> <input name="fangkuan_total" type="text" /></p><p><label>贷款总额：</label> <input name="daikuan_total" type="text" /></p><p><label>还款总额：</label> <input name="all_total" type="text" /></p><p><label>支付利息款：</label> <input name="accrual" type="text" /></p><p><label>首期付款：</label> <input name="money_first" type="text" /></p><p><label>贷款月数：</label> <input name="month" type="text" /></p><p><label>月还金额：</label> <input name="month_money" type="text" /></p>');
                   break; 
            
                case "3":
                   $("#CalculatorTable").empty();
                   $("#CalculatorTable").append('<tr><td colspan="4" class="grayBg">计算您申请公积金贷款的最高限额</td></tr><tr><td class="grayBg right freeTrade_tableW01">住房公积金个人月缴存额</td><td width="30"><p><input name="mount2" type="text" class="inputW01" />元</p></td><td class="grayBg right freeTrade_tableW01">缴存比例</td><td width="30"><input name="jcbl" type="text" class="inputW01" value="8" />%</td></tr><tr><td class="grayBg right freeTrade_tableW01">配偶公积金个人月缴存额</td><td><input name="mount3" type="text" class="inputW01" />元</td><td class="grayBg right freeTrade_tableW01">缴存比例</td><td><input name="p_bl" type="text" class="inputW01" value="8"/>%</td></tr><tr><td class="grayBg right freeTrade_tableW01">房屋评估价值或实际购房款</td><td><input name="mount" type="text" class="inputW01" />元 </td><td class="grayBg right freeTrade_tableW01">房屋性质</td><td><p><input name="xz" type="radio" />政策住房</p><p><input name="xz" type="radio"  checked="checked" />其它</p></td></tr><tr><td class="grayBg right freeTrade_tableW01">贷款申请年限</td><td colspan="3"><input name="mount10" type="text" class="width60 borderblue" />年 <span class="graytime"><p>（注：贷款期限最长可以计算到借款人70周岁，同时不得超过30年）</p></span></td></tr><tr><td class="grayBg right freeTrade_tableW01">个人信用等级</td><td colspan="3"><input name="xy" type="radio" />AAA级<input name="xy" type="radio" />AA级<input name="xy" type="radio" checked="checked" />其它</td></tr><tr><td colspan="4"><button name="math2" class="freeTrade_button" onclick="gjjloan1();">开始计算</button>&nbsp;&nbsp;<button name="qx" class="freeTrade_button" onclick="formReset();">清除</button></td></tr><tr><td colspan="4">您可以申请的最高贷款额度是:<input name="ze2" type="text" class="freeTrade_tableW01" />万元</td></tr> ');
                   $("#CalculatorResult").empty();
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content");
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content2");
                   $("#CalculatorResult").addClass("freeTrade_contnetL_show02_conR_content1");
                   $("#CalculatorResult").append('<div><table border="0" cellspacing="0"><tr><td colspan="2">计算您的月还款额:</td></tr><tr><td width="60">您所需要的贷款额度:</td><td><p><input name="need" type="text" class="inputW01" />万元</p><p>注：不高于申请最高贷款额</p></td></tr><tr><td>请选择还款方式</td><td><select name="select"><option value="1">等额本息</option><option value="2">等额本金</option><option value="3">自由还款</option></select></td></tr><tr><td colspan="2"><button name="math3" class="freeTrade_button" onclick="gjjloan2();">开始计算</button>&nbsp;&nbsp;<button name="qx2" class="freeTrade_button" onclick="formReset();">清除</button></td></tr></table><table border="0" cellspacing="0"><tr class="backwhite"><td colspan="2" height="10"></td></tr><tr class="backwhite"><td colspan="2" class="backgray hg24 padl5">等额本息还款方式计算结果：</td></tr><tr class="backwhite"><td colspan="2" ><p><label>月均还款:</label><input name="ze22" type="text" class="inputW01" />元 </p> <p><label>本息合计:</label><input name="lx2" type="text" class="inputW01" />元</p></td></tr><tr class="backwhite"><td colspan="2" class="backgray hg24 padl5"> 等额本金还款方式计算结果：</td></tr> <tr class="backwhite"><td colspan="2" class="lh31 padl10"><p><label>首月还款:</label><input name="sfk2" type="text" class="inputW01" />元</p><p> <label>本息合计:</label><input name="lx3" type="text" class="inputW01" />元</p></td></tr><tr class="backwhite"><td colspan="2" class="backgray hg24 padl5">自由还款方式计算结果：</td></tr><tr class="backwhite"><td height="24" colspan="2"><p><label>最低还款额:</label><input name="sfk3" type="text" class="inputW01" />元</p><p><label>最后期本金:</label><input name="lx4" type="text" class="inputW01"/>元</p></td></tr><tr class="backwhite"><td height="24" colspan="2"><p><label>最后期利息:</label><input name="lx5" type="text" class="inputW01" />元</p><p><label>总偿还利息:</label><input name="lx6" type="text" class="inputW01" />元</p></td></tr></table></div>');
                   break; 
            
                case "4": 
                   $("#CalculatorTable").empty();
                   $("#CalculatorTable").append('<tr><td colspan="2" class="grayBg">填写提前还款信息（系统默认为最新利率）</td></tr><tr><td class="grayBg right freeTrade_tableW01">贷款总额：</td><td class="left"><input size="10" name="dkzws">万元</td></tr><tr><td class="grayBg right freeTrade_tableW01">原贷款期限：</td><td class="left"><select size="1" name="yhkqs"><option value="24">2年(24期)</option><option value="36">3年(36期)</option><option value="48">4年(48期)</option><option value="60">5年(60期)</option> <option value="72">6年(72期)</option><option value="84">7年(84期)</option><option value="96">8年(96期)</option><option value="108">9年(108期)</option><option value="120">10年(120期)</option><option value="132">11年(132期)</option><option value="144">12年(144期)</option><option value="156">13年(156期)</option><option value="168">14年(168期)</option><option value="180" selected>15年(180期)</option><option value="240">20年(240期)</option><option value="252">21年(252期)</option><option value="264">22年(264期)</option><option value="276">23年(276期)</option><option value="288">24年(288期)</option><option value="300">25年(300期)</option><option value="312">26年(312期)</option><option value="324">27年(324期)</option><option value="336">28年(336期)</option><option value="348">29年(348期)</option><option value="360">30年(360期)</option></select></td></tr><tr><td class="grayBg right freeTrade_tableW01">利&nbsp;&nbsp;&nbsp;&nbsp;率：</td><td class="left"><select id="lilv" name="dklv_class"><option value="42">08年12月23日利率上限</option><option value="41" selected >08年12月23日利率下限</option><option value="40">08年11月27日第二套房</option><option value="39">08年11月27日利率基准</option> <option value="38">08年11月27日利率上限</option><option value="37">08年11月27日利率下限</option><option value="36">08年10月30日第二套房</option><option value="35">08年10月30日利率基准</option><option value="34">08年10月30日利率上限</option><option value="33">08年10月30日利率下限</option><option value="32">08年10月27日第二套房</option><option value="31">08年10月27日利率基准</option><option value="30">08年10月27日利率上限</option><option value="29">08年10月27日利率下限</option><option value="28">08年10月09日第二套房</option><option value="27">08年10月09日利率上限</option><option value="26">08年10月09日利率下限</option><option value="25">08年09月16日第二套房</option><option value="24">08年09月16日利率上限</option><option value="23" >08年09月16日利率下限</option><option value="22">07年12月21日第二套房</option><option value="21">07年12月21日利率上限</option><option value="20">07年12月21日利率下限</option><option value="19">07年9月15日第二套房</option><option value="18">07年9月15日利率上限</option><option value="17">07年9月15日利率下限</option><option value="16">07年8月22日利率上限</option><option value="15">07年8月22日利率下限</option><option value="14">07年7月21日利率上限</option><option value="13">07年7月21日利率下限</option><option value="12">07年5月19日利率上限</option><option value="11">07年5月19日利率下限</option><option value="10">07年3月18日利率上限</option><option value="9">07年3月18日利率下限</option><option value="8">06年8月19日利率上限</option><option value="7">06年8月19日利率下限</option><option value="6">06年4月28日利率上限</option><option value="5">06年4月28日利率下限</option><option value="4">05年3月17日后利率上限</option><option value="3">05年3月17日后利率下限</option><option value="2">05年1月1日-3月17日利率</option><option value="1">05年1月1日前利率</option></select></td></tr><tr><td class="grayBg right freeTrade_tableW01">第一次还款时间：</td><td class="left"><select name="yhksjn"><option value="2009" selected>2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option><option value="2030">2030</option></select>年<select name="yhksjy"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5" selected>5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>月</td></tr><tr><td class="grayBg right freeTrade_tableW01">预计提前还款期：</td><td class="left"><select name="tqhksjn"><option value="2009" selected>2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option><option value="2030">2030</option></select>年<select name="tqhksjy"><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5" selected>5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>月</td></tr><tr><td class="grayBg right freeTrade_tableW01">贷款类型：</td><td class="left"><input type="radio" checked name="dklx">公积金贷款<input type="radio" name="dklx">商业性贷款</td></tr><tr><td class="grayBg right freeTrade_tableW01">提前还款方式：</td><td class="left"><p><input type="radio" checked name="tqhkfs"/>一次提前还清</p><p><input type="radio" name="tqhkfs"/>部分提前还款<input size="6" name="tqhkws"/>万元</p><p>（不含当月应还款额）</p></td></tr><tr><td class="grayBg right freeTrade_tableW01">处理方式：</td><td class="left"><p><input type="radio" checked name="clfs">缩短还款年限，月还款额不变</p><p><input type="radio" name="clfs">减少月还款额，还款期不变</p></td></tr><tr><td colspan="2"><button name="math2" class="freeTrade_button" onclick="play();">开始计算</button>&nbsp;&nbsp;<button name="qx" class="freeTrade_button" onclick="formReset();">清除</button></td></tr>');
                   $("#CalculatorResult").empty();
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content");
                   $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content1");                 
                   $("#CalculatorResult").addClass("freeTrade_contnetL_show02_conR_content2");
                   $("#CalculatorResult").append('<p><b>计算结果：</b></p><p><label>原月还款额：</label><input name="ykhke" type="text" />元</p><p><label>原最后还款期：</label> <input name="yzhhkq" type="text" /></p><p><label>已还款总额：</label> <input name="yhkze" type="text" />元</p><p><label>已还利息额：</label> <input name="yhlxe" type="text" />元</p><p><label>该月一次还款额：</label> <input name="gyyihke" type="text" />元</p><p><label>下月起月还款额：</label> <input name="xyqyhke" type="text" />元</p><p><label>节省利息支出：</label><input name="jslxzc" type="text" />元</p><p><label>新的最后还款期：</label> <input name="xdzhhkq" type="text" /></p><p><label>计算结果提示：</label><input name="jsjgts" type="text"/></p>');
                   break;  
              
                  break;      
             }  
         return false;
       });
         $("#HLoanRate a").click(function(){
             $("#CalMethod ul li.NavOn").removeClass("NavOn");
             $("#CalculatorTable").empty();             
             $("#CalculatorTable").append('<tr><td colspan="3" class="grayBg">商业贷款利率</td></tr><tr><td class="grayBg">年限</td><td class="grayBg">1-5年</td><td class="grayBg">5-30年</td></tr><tr><td class="left" align="center">2008.12.23后</td><td class="left">5.760 %</td><td class="left">5.940 %</td></tr><tr><td class="left">2008.11.27后</td><td class="left">5.940 %</td><td class="left">6.120 %</td></tr><tr><td class="left">2008.10.30后 </td><td class="left">7.020 %</td><td class="left">7.200 %</td></tr>');
             $("#CalculatorResult").empty();
             $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content");
             $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content1");
             $("#CalculatorResult").removeClass("freeTrade_contnetL_show02_conR_content2");
             $("#CalculatorResult").addClass("freeTrade_contnetL_show02_conR_content");
             $("#CalculatorResult").append('<div><table border="0" cellspacing="10"><tr><td colspan="3" align="center">公积金贷款利率</td></tr><tr><td align="center">年限</td><td align="center">1-5年</td><td align="center">5-30年</td></tr><tr><td align="center">2008.12.23后</td><td align="center">3.330 %</td><td align="center">3.870 %</td></tr><tr><td align="center">2008.11.27后</td><td align="center">3.510 %</td><td align="center">4.050 %</td></tr><tr><td align="center">2008.10.27后</td><td align="center">4.050 %</td><td align="center">4.590 %</td></tr></table></div>');
              
             
         
         return false;
        });
}


function changehz(obj)
        {
            if(obj.value=="3")
            {
                for(var i=1;i<3;i++)
                {
                    document.getElementById("other"+i).style.display="none";
                }
                document.getElementById("pricep").style.display="none";
                document.getElementById("sqmp").style.display="none";
                document.getElementById("anjiep").style.display="none";
                document.getElementById("calc_js_div2").style.display="none";
                document.getElementById("hz").style.display="block";
            }
            else
            {
                for(var i=1;i<3;i++)
                {
                    document.getElementById("other"+i).style.display="block";
                }
                document.getElementById("pricep").style.display="block";
                document.getElementById("sqmp").style.display="block";
                document.getElementById("anjiep").style.display="block";
                document.forms["calc"].jisuan_radio[0].checked=true;
                document.getElementById("hz").style.display='none';
            }
}

function LeaveWord(){
   var hello=$("#hello").html();
   if (hello=="您还没有登录"){
      $("#Login").removeAttr("disabled");   
   }else{      
      $("#Login").attr("disabled","disabled");        
   }
   $("#Login").click(function() {
        var Username=$("#Username").val();
        var Password=$("#Password").val();
        var estateid=$("#estateid").html();
               
        $.ajax({
		  url: "/Fang3FangWeb/Access",
		  type: "POST",		  
		  data: "useraction=dovalidation&Username="+Username +"&Password="+Password+"&show=0",
		  cache: false,
		  success: function(){
		  	alert("登录成功！");
		  	window.location = "show.jsp?EstateMsgID="+estateid;			 
		  },
		  error: function(a, b) {
			 alert("登录失败，请检查用户名和密码！");
		  } 
		});
		return false;
	});
	
	$("#Publish").click(function() {
        var QuestionMsg =$("#QuestionMsg").html();
        var hello=$("#hello").html();
        var estateid=$("#estateid").html();
        var anonymous=$("#anonymous").val();
        var userID=$("#UserID").val();
        if ((hello!="您还没有登录")||($("#anonymous").val()=="1")){
           $.ajax({
		    url: "/Fang3FangWeb/Access",
		    type: "POST",		  
		    data: "useraction=Estates&referaction=AddQuestionMsg&QuestionMsg="+encodeURI(QuestionMsg)+"&Realname="+encodeURI(hello)+"&UserID="+userID+"&Anonymous="+anonymous+"&EstateMsgID="+estateid+"&qorm=1",
		    cache: false,
		    success: function(){
		    	alert("发布成功！");		  	   	 
		    },
		    error: function(a, b) {
			   alert("发布失败！");
		    }
		  });
           
        }else{         
          alert("您还没有登录，或者选择匿名！")
		}
		return false;
	});	
	
	$("#anonymous").click(function() {
         if ($("#anonymous").val()=="1"){
           $("#anonymous").removeAttr("checked"); 
           $("#anonymous").val("0")           
        }else if ($("#anonymous").val()=="0") { 
           $("#anonymous").attr("checked","yes");         
           $("#anonymous").val("1")
		}
		      
	});	
}

