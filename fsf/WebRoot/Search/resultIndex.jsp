<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!-- content -->
<div class="freeTrade_contnet">
	<!-- left -->
	<div class="freeTrade_contnetL">
		<div class="freeTrade_contnetL_show">

			<div id="EstateInfo" class="freeTrade_contnetL_title01" style="display: none;">
				<img src="<%=contextPath %>/images/Loading.gif"><br>
				加载中，请稍候...
			</div>
			<div id="content" >
			<s:if test="flag=='out'">
				<s:if test="listEstateOut==null">
					<table border="0" cellpadding="0" 	cellspacing="0" class="trade_table" width="100%">
						<tr><td>没有符合条件的数据</td></tr>
					</table>
				</s:if>
				<s:if test="listEstateOut!=null">
					<table border="0" cellpadding="0" cellspacing="0" class="trade_table" width="850px">
						<s:if test="estateOutParameter._nin_tradeMode[0]==1">
							<tr>
								<td id="PropertyName" class="grayBg" width="330px" colspan="2">
									<span class="cOrange">房产</span>
								</td>
								<td class="grayBg">户型</td>
								<td class="grayBg"><span>面积</span></td>
								<td class="grayBg">租价</td>
								<td class="grayBg">发布时间</td>
							</tr>
							<s:iterator value="listEstateOut" id="item">
								<tr>
									<td>
										<s:if test="tradeType==1">
											<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank">
										</s:if>
										<s:if test="tradeType==2">
											<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank">
										</s:if>
												<s:if test="imagePath!=null && imagePath.trim()!=''">
													<img src="<%=contextPath %>${imagePath }" width="105" height="80" />
												</s:if>
												<s:else>
													<img src="<%=contextPath %>/images/logo.jpg" width="154" height="51" />
												</s:else>
											</a>
									</td>
									<td>
										<s:if test="tradeType==1">
											<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank">
												<s:property value="#item.estateName" />
											</a>
										</s:if>
										<s:if test="tradeType==2">
											<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank">
												<s:property value="#item.estateName" />
											</a>
										</s:if>
									</td>
									<td><s:property value="#item.area" />m<sup>2</sup></td>
									<td><s:property value="#item.bedroom" />房<s:property value="#item.hall" />厅</td>
									<td><s:property value="#item.rentPrice" />元/月</td>
									<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
								</tr>
							</s:iterator>
						</s:if>
						<s:if test="estateOutParameter._nin_tradeMode[0]==2">
							<tr>
								<td id="PropertyName" class="grayBg" width="330px" colspan="2">
									<span class="cOrange">房产</span>
								</td>
								<td class="grayBg">户型</td>
								<td class="grayBg"><span>面积</span></td>
								<td class="grayBg">单价</td>
								<td class="grayBg"><span class="cOrange">总价</span></td>
								<td class="grayBg">发布时间</td>
							</tr>
							<s:iterator value="listEstateOut" id="item">
								<tr>
									<td>
										<s:if test="tradeType==1">
											<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank">
										</s:if>
										<s:if test="tradeType==2">
											<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank">
										</s:if>
												<s:if test="imagePath!=null && imagePath.trim()!=''">
													<img src="<%=contextPath %>${imagePath }" width="105" height="80" />
												</s:if>
												<s:else>
													<img src="<%=contextPath %>/images/logo.jpg" width="154" height="51" />
												</s:else>
											</a>
									</td>
									<td><a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank"><s:property value="#item.estateName" /></a></td>
									<td><s:property value="#item.bedroom" />房<s:property value="#item.hall" />厅</td>
									<td><s:property value="#item.area" />m<sup>2</sup></td>
									<td><s:property value="#item.unitPrice" />元</td>
									<td><s:property value="#item.salePrice/10000" />万元</td>
									<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
								</tr>
							</s:iterator>
						</s:if>	
					</table>
				</s:if>
			</s:if>

			<s:if test="flag=='in'">
				<s:if test="listEstateIn==null">
					<table border="0" cellpadding="0" 	cellspacing="0" class="trade_table" width="100%">
						<tr><td>没有符合条件的数据</td></tr>
					</table>
				</s:if>
				<s:if test="listEstateIn!=null">
					<table border="0" cellpadding="0" cellspacing="0" class="trade_table" width="100%">
						<s:if test="estateInParameter._nin_tradeMode[0]==1">
							<tr>
								<td>标题</td>
								<td>户型</td>
								<td>租价</td>
								<td>面积</td>
								<td>发布时间</td>
							</tr>
							<s:iterator value="listEstateIn" id="item">
								<tr>
									<td><a href="<%=contextPath %>/freetrade/inContent.action?estateId=<s:property value="#item.estateId" />" target="blank"><s:property value="#item.title" /></a></td>
									<td><s:property value="#item.bedroom" />房<s:property value="#item.hall" />厅</td>
									<td><s:property value="#item.rentPriceFrom" />-<s:property value="#item.rentPriceTo" />元/月</td>
									<td><s:property value="#item.area" />m<sup>2</sup></td>
									<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
								</tr>
							</s:iterator>
						</s:if>
						<s:if test="estateInParameter._nin_tradeMode[0]==2">
							<tr>
								<td>标题</td>
								<td>户型</td>
								<td>售价</td>
								<td>面积</td>
								<td>发布时间</td>
							</tr>
							<s:iterator value="listEstateIn" id="item">
								<tr>
									<td><a href="<%=contextPath %>/freetrade/inContent.action?estateId=<s:property value="#item.estateId" />" target="blank" ><s:property value="#item.title" /></a></td>
									<td><s:property value="#item.bedroom" />房<s:property value="#item.hall" />厅</td>
									<td><s:property value="#item.buyPriceFrom" />-<s:property value="#item.buyPriceTo" /></td>
									<td><s:property value="#item.areaFrom" />-<s:property value="#item.areaTo" />m<sup>2</sup></td>
									<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
								</tr>
							</s:iterator>
						</s:if>	
					</table>
				</s:if>
			</s:if>
				<div id="pageNavigation">
					<%@ include file="/share/pageNavigation.jsp" %>
				</div>
			</div>
		</div>
	</div>
</div>
