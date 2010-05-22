<%@ page language="java" pageEncoding="UTF-8"	contentType="text/html; charset=UTF-8"%>
<div class="col03">
	<div class="nav02_content">
		<div id="divTradeMode" class="tap">
			<div id="divSaleOut" class="active" >
				<a href="javascript:f_selectOutIn('divSaleOut','1')" target="_self">出售</a>
			</div>
			<div id="divRentOut" >
				<a href="javascript:f_selectOutIn('divRentOut','1')" target="_self">出租</a>
			</div>
			<div id="divSaleIn" >
				<a href="javascript:f_selectOutIn('divSaleIn','2')" target="_self">求购</a>
			</div>
			<div id="divRentIn" >
				<a href="javascript:f_selectOutIn('divRentIn','2')" target="_self">求租</a>
			</div>
		</div>
		
		<form id="formList" name="formList" method="post" action="" style="text-align: right;" >
			<input name="estateName" type="text" value="" size="50" />
			<input type="button" value="搜索 " onclick="f_query()" />
		</form>
		
		<div class="clear"></div>
		<!-- city list -->
		<div class="city_list">
				<div style="float: left;" id="divTradeType">
					<span>[交易方式]:</span>
					<a href="javascript:f_selectFilter('divTradeType','divTradeType_0')" id="divTradeType_0" class="selected_filter">全部</a>
					<a href="javascript:f_selectFilter('divTradeType','divTradeType_1')" id="divTradeType_1" class="choose_filter">自主交易</a>
					<a href="javascript:f_selectFilter('divTradeType','divTradeType_2')" id="divTradeType_2" class="choose_filter">委托交易</a>
				</div>
				<div id="divEstateType">
					<span>[物业类型]:</span>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_0')" id="divEstateType_0" class="selected_filter">全部</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_1')" id="divEstateType_1" class="choose_filter">普通住宅</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_2')" id="divEstateType_2" class="choose_filter">公寓</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_3')" id="divEstateType_3" class="choose_filter">别墅</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_4')" id="divEstateType_4" class="choose_filter">餐厅</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_5')" id="divEstateType_5" class="choose_filter">商铺	</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_6')" id="divEstateType_6" class="choose_filter">写字楼</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_7')" id="divEstateType_7" class="choose_filter">厂房</a>
					<a href="javascript:f_selectFilter('divEstateType','divEstateType_8')" id="divEstateType_8" class="choose_filter">其他</a>
				</div>
				<p>
				<div id="place">
					<span>[区域查询]:</span>
					<a href="javascript:f_selectFilter('place','place_')" id="place_" class="selected_filter">全部</a>
					<s:iterator value="#application.est_filter.place" id="var">
						<a href="javascript:f_selectFilter('place','place_${var.from }')" id="place_${var.from }" class="choose_filter"><s:property value="#var.name"/></a>
					</s:iterator>
				</div>
				<p>
				<div id="price">
					<div id="divSaleOut_">
						<span>[售价查询]:</span>
						<a href="javascript:f_selectFilter('price','price_')" id="price_" class="selected_filter">全部</a>
						<s:iterator value="#application.est_filter.salePriceOut" id="var" >
							<a href="javascript:f_selectFilter('price','price_${var.from }_${var.to }')" id="price_${var.from }_${var.to }" class="choose_filter"><s:property value="#var.name"/></a>
						</s:iterator>
					</div>
					<div id="divRentOut_" style="display: none;" >
						<span>[租价查询]:</span>
						<a href="javascript:f_selectFilter('price','price_')" id="price_" class="selected_filter">全部</a>
						<s:iterator value="#application.est_filter.rentPriceOut" id="var" >
							<a href="javascript:f_selectFilter('price','price_${var.from }_${var.to }')" id="price_${var.from }_${var.to }" class="choose_filter"><s:property value="#var.name"/></a>
						</s:iterator>
					</div>
					<div id="divSaleIn_" style="display: none;" >
						<span>[最低接受售价]:</span>
						<s:select list="#application.est_filter.salePrice" listKey="from" listValue="name" emptyOption="true" 
						name="estateInParameter._nle_buyPriceFrom" onchange="f_query()" theme="simple" cssStyle="height:20px;"  />
					</div>
					<div id="divRentIn_" style="display: none;" >
						<span>[最低接受租价]:</span>
						<s:select list="#application.est_filter.rentPrice" listKey="from" listValue="name" emptyOption="true" cssStyle="font-size:12px;" 
						name="estateInParameter._nle_rentPriceFrom" onchange="f_query()" theme="simple" />
					</div>
				</div>
				<p>
				<div id="area">
					<div id="divArea_1">
						<span>[面积查询]:</span>
						<a href="javascript:f_selectFilter('area','area_')" id="area_" class="selected_filter">全部</a>
						<s:iterator value="#application.est_filter.area" id="var" >
							<a href="javascript:f_selectFilter('area','area_${var.from }_${var.to }')" id="area_${var.from }_${var.to }" class="choose_filter"><s:property value="#var.name"/></a>
						</s:iterator>
					</div>
					<div id="divArea_2" style="display: none;">
						<span>[最小接受面积]:</span>
						<a href="javascript:f_selectFilter('area','area_')" id="area_" class="selected_filter">不限</a>
						<s:iterator value="#application.est_filter.lowArea" id="var" >
							<a href="javascript:f_selectFilter('area','area_${var.from }_${var.to }')" id="area_${var.from }_${var.to }" class="choose_filter"><s:property value="#var.name"/></a>
						</s:iterator>
						<span>[最大接受面积]:</span>
						<a href="javascript:f_selectFilter('area','area_')" id="area_" class="selected_filter">不限</a>
						<s:iterator value="#application.est_filter.highArea" id="var" >
							<a href="javascript:f_selectFilter('area','area_${var.from }_${var.to }')" id="area_${var.from }_${var.to }" class="choose_filter"><s:property value="#var.name"/></a>
						</s:iterator>
					</div>
				</div>
				<p>
				<div id="bedroom">
					<span>[房型查询]:</span>
					<a href="javascript:f_selectFilter('bedroom','bedroom_')" id="bedroom_" class="selected_filter">全部</a>
					<s:iterator value="#application.est_filter.bedroom" id="var" >
						<a href="javascript:f_selectFilter('bedroom','bedroom_${var.value }_${var.from }_${var.to }')" id="bedroom_${var.value }_${var.from }_${var.to }" class="choose_filter"><s:property value="#var.name"/></a>
					</s:iterator>
				</div>
		</div>
	</div>
</div>