<%@ page language="java" pageEncoding="UTF-8"%>
<script type="text/javascript">
var query1 = false;
var query2 = false;
function f_queryNear(o,n){
	if(eval("query"+o)){
		document.getElementById("aboutc1"+n).style.display = "none";
		document.getElementById("aboutnavc1"+n).className=""
		document.getElementById("aboutc1"+o).style.display = "block";
		document.getElementById("aboutnavc1"+o).className="active_com"
	}else{
		ajaxAnywhere.getZonesToReload = function(){return "aaZone"+o;}
		ajaxAnywhere.formName = "ajaxSubmitForm"+o;
		ajaxAnywhere.showLoadingMessage = function(){
			document.getElementById('loadingDiv3').style.display = "block";
			document.getElementById("aboutc1"+n).style.display = "none";
			document.getElementById("aboutnavc1"+n).className=""
		}
		ajaxAnywhere.hideLoadingMessage = function(){
			document.getElementById('loadingDiv3').style.display = "none";
		}
		ajaxAnywhere.onAfterResponseProcessing = function(){
			document.getElementById("aboutc1"+o).style.display = "block";
			document.getElementById("aboutnavc1"+o).className="active_com"
			eval("query"+o+"=true;" );
		}
		ajaxAnywhere.submitAJAX();	
	}
}
</script>
<div class="freeTrade_contnetR">
	<!-- scroll pic -->
	<div class="clear"></div>
	<div class="blank12"></div>
	<div class="freeTrade_invite">
		<p>
			<a href="#">
				<img src="images/freeTrade_intro.jpg" width="280" height="36" alt="邀请专家" title="邀请专家" />
			</a>
		</p>
	</div>
	<!-- compare -->
	<div class="freeTrade_compare">
		<div class="tap_com">
			<div id="aboutnavc11" style="margin-right: 8px;">
				<a href="javascript:f_queryNear(1,2);" target="_self">搜索相同居室房源</a>
			</div>
			<div id="aboutnavc12" style="margin-left: 8px;">
				<a href="javascript:f_queryNear(2,1);" target="_self">搜索相近价格房源</a>
			</div>
			<div id="aboutnavc13" style="display: none;"></div>
		</div>
		<div class="clear"></div>
		<div id="loadingDiv3" style="text-align: center;display: none;" >
			<img src="<%=contextPath %>/images/loading2.gif" /><br/>
			<font style="font-weight: bold;" >加载中...</font>
		</div>

		<form action="/freetrade/estateInNear.ajax" name="ajaxSubmitForm1" method="post" style="display: none;" >
			<input type="hidden" name="estateInParameter._ne_bedroom" value="${bedroom }" >
			<input type="hidden" name="estateInParameter._ne_hall" value="${hall }" >
			<input type="hidden" name="estateInParameter._ne_tradeMode" value="${tradeMode }" />
			<input type="hidden" name="estateInParameter._ne_tradeType" value="${tradeType }" />
			<input type="hidden" name="estateInParameter.sortColumns" value="createTime|DESC" />
		</form>
		<div class="list_com" id="aboutc11" style="display: none;">
			<aa:zone name="aaZone1">
				<s:if test="pageView.records!=null && pageView.records.size()>0">
					<s:iterator value="pageView.records" >
						<p><a href="<%=contextPath %>/freetrade/inContent.action?estateId=${estateId }" target="blank">${title } ${bedroom }室${hall }厅 
						${areaFrom }-${areaTo }m<sup>2</sup><br/>
						<s:if test="tradeMode==1" >${rentPriceFrom }-${rentPriceTo }元/月</s:if><s:else>${buyPriceFrom/10000 }-${buyPriceTo/10000 }万元</s:else></a></p>
					</s:iterator>
				</s:if>
				<s:else>暂无相同居室房源</s:else>
			</aa:zone>
		</div>
		
		<form action="/freetrade/estateInNear.ajax" name="ajaxSubmitForm2" method="post" style="display: none;" >
			<s:if test="tradeMode==1 || tradeMode==3">
				<input type="hidden" name="estateInParameter._nle_rentPriceTo" value="${rentPriceTo*(1.2) }" >
			</s:if>
			<s:if test="tradeMode==2 || tradeMode==3">
				<input type="hidden" name="estateInParameter._nle_buyPriceTo" value="${buyPriceTo*(1.2) }" >
			</s:if>
			<input type="hidden" name="estateInParameter._ne_tradeMode" value="${tradeMode }" />
			<input type="hidden" name="estateInParameter._ne_tradeType" value="${tradeType }" />
			<input type="hidden" name="estateInParameter.sortColumns" value="createTime|DESC" />
		</form>
		
		<div class="list_com" id="aboutc12" style="display: none;">
			<aa:zone name="aaZone2">
				<s:if test="pageView.records!=null && pageView.records.size()>0">
					<s:iterator value="pageView.records" >
						<p><a href="<%=contextPath %>/freetrade/inContent.action?estateId=${estateId }" target="blank">${title } ${bedroom }室${hall }厅 
						${areaFrom }-${areaTo }m<sup>2</sup><br/>
						<s:if test="tradeMode==1" >${rentPriceFrom }-${rentPriceTo }元/月</s:if><s:else>${buyPriceFrom }-${buyPriceTo }万元</s:else></a></p>
					</s:iterator>
				</s:if>
				<s:else>暂无相近价格房源</s:else>
			</aa:zone>
		</div>
	</div>
</div>