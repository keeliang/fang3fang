<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<script src="http://ditu.google.cn/maps?file=api&amp;v=2.x&amp;key=ABQIAAAAocJHGW0ap4UNnVRlkcIXaBRI72q-S1Jctj7uK0x7k3XXlqwPOxSorscFfkcw5l3KNKS5zp7r9eGzpw" type="text/javascript"></script>

<script type="text/javascript">
function initialize() {
  if (GBrowserIsCompatible()) {
    var map = new GMap2(document.getElementById("map_canvas"));
    map.setCenter(new GLatLng(22.936346, 113.384123), 14);
    var smallMapControl = new GSmallMapControl();
    var topRight = new GControlPosition(G_ANCHOR_TOP_RIGHT, new GSize(10,10));
    var bottomRight = new GControlPosition(G_ANCHOR_BOTTOM_RIGHT, new GSize(10,10));
    map.addControl(smallMapControl, topRight);
    GEvent.addListener(map, "dblclick", function() {
      map.removeControl(smallMapControl);
      map.addControl(new GSmallMapControl(), bottomRight);
    });
  }
}
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

<!-- -end of test -->

<div class="freeTrade_contnetR">

	<!-- map -->
	<div class="clear"></div>
	<div class="freeTrade_map">
		<div id="map_canvas" style="width: 278px; height: 199px"></div>
	</div>

	<!-- compare -->
	<div class="freeTrade_compare">
		<div class="tap_com">
			<div id="aboutnavc11" style="margin-right: 8px;" >
				<a href="javascript:f_queryNear(1,2);" target="_self">搜索相同居室房源</a>
			</div>
			<div id="aboutnavc12" style="margin-left: 8px;">
				<a href="javascript:f_queryNear(2,1);" target="_self">搜索相近价格房源</a>
			</div>
		</div>
		<div class="clear"></div>

		<div id="loadingDiv3" style="text-align: center;display: none;" >
			<img src="<%=contextPath %>/images/loading2.gif" /><br/>
			<font style="font-weight: bold;" >加载中...</font>
		</div>

		<form action="/freetrade/estateOutNear.ajax" name="ajaxSubmitForm1" method="post" style="display: none;" >
			<input type="hidden" name="estateOutParameter._ne_bedroom" value="${bedroom }" >
			<input type="hidden" name="estateOutParameter._ne_hall" value="${hall }" >
			<input type="hidden" name="estateOutParameter._ne_tradeMode" value="${tradeMode }" />
			<input type="hidden" name="estateOutParameter._ne_tradeType" value="${tradeType }" />
		</form>
		<div class="list_com" id="aboutc11" style="display: none;">
			<aa:zone name="aaZone1">
				<s:if test="pageView.records!=null && pageView.records.size()>0">
					<s:iterator value="pageView.records" >
						<p><a href="#">${estateName } ${bedroom }室${hall }厅 
						${area }m <s:if test="tradeMode==1" >${rentPrice }元/月</s:if><s:else>${salePrice }元/月</s:else></a></p>
					</s:iterator>
				</s:if>
				<s:else>暂无相同居室房源</s:else>
			</aa:zone>
		</div>
		
		
		<form action="/freetrade/estateOutNear.ajax" name="ajaxSubmitForm2" method="post" style="display: none;" >
			<s:if test="tradeMode==1 || tradeMode==3">
				<input type="hidden" name="estateOutParameter._nge_rentPrice" value="${rentPrice*(1-0.2) }" >
				<input type="hidden" name="estateOutParameter._nle_rentPrice" value="${rentPrice*(1+0.2) }" >
			</s:if>
			<s:if test="tradeMode==2 || tradeMode==3">
				<input type="hidden" name="estateOutParameter._nge_salePrice" value="${salePrice*(1-0.2) }" >
				<input type="hidden" name="estateOutParameter._nle_salePrice" value="${salePrice*(1+0.2) }" >
			</s:if>
			<input type="hidden" name="estateOutParameter._ne_tradeMode" value="${tradeMode }" />
			<input type="hidden" name="estateOutParameter._ne_tradeType" value="${tradeType }" />
		</form>
		
		<div class="list_com" id="aboutc12" style="display: none;">
			<aa:zone name="aaZone2">
				<s:if test="pageView.records!=null && pageView.records.size()>0">
					<s:iterator value="pageView.records" >
						<p><a href="#">${estateName } ${bedroom }室${hall }厅 
						${area }m <s:if test="tradeMode==1" >${rentPrice }元/月</s:if><s:else>${salePrice }元/月</s:else></a></p>
					</s:iterator>
				</s:if>
				<s:else>暂无相近价格房源</s:else>
			</aa:zone>
		</div>
	</div>
	<div class="clear"></div>
	<div class="blank12"></div>
</div>