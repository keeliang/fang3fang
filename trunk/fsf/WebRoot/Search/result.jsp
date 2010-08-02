<%@ page language="java" pageEncoding="UTF-8"	contentType="text/html; charset=UTF-8"%>
<!-- content -->
<div class="freeTrade_contnet">
	<!-- left -->
	<div class="freeTrade_contnetL_show">
	
		<div id="EstateInfo" class="freeTrade_contnetL_title01" style="display: none;text-align: center;">
			<img src="<%=contextPath %>/images/Loading.gif"><br>
			加载中，请稍候...
		</div>
		
		<div id="content" >
		<s:if test="flag=='out'">
			<s:if test="pageView.records==null || pageView.records.size()==0">
				<table border="0" cellpadding="0" 	cellspacing="0" class="trade_table" width="100%">
					<tr><td>没有符合条件的数据</td></tr>
				</table>
			</s:if>
			<s:if test="pageView.records!=null && pageView.records.size()>0">
				<table border="0" cellpadding="0" cellspacing="0" class="trade_table" width="850px">
					<s:if test="estateOutParameter._nin_tradeMode[0]==1">
						<tr>
							<td id="PropertyName" class="grayBg" width="330px" colspan="2">
								<span class="cOrange">房产</span>
							</td>
							<td class="grayBg">户型</td>
							<td class="grayBg"><span>面积</span></td>
							<td class="grayBg">租价</td>
							<td class="grayBg"><span class="cOrange">发布时间</span></td>
						</tr>
						<s:iterator value="pageView.records" id="item">
							<tr>
								<td>
									<s:if test="estateOutParameter._ne_tradeType==1">
										<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
									</s:if>
									<s:if test="estateOutParameter._ne_tradeType==2">
										<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
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
									<s:if test="estateOutParameter._ne_tradeType==1">
										<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.estateName" />
										</a>
									</s:if>
									<s:if test="estateOutParameter._ne_tradeType==2">
										<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
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
							<td class="grayBg"><span class="cOrange">发布人</span></td>
						</tr>
						<s:iterator value="pageView.records" id="item">
							<tr>
								<td>
									<s:if test="estateOutParameter._ne_tradeType==1">
										<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
									</s:if>
									<s:if test="estateOutParameter._ne_tradeType==2">
										<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
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
									<s:if test="estateOutParameter._ne_tradeType==1">
										<a href="<%=contextPath %>/freetrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.estateName" />
										</a>
									</s:if>
									<s:if test="estateOutParameter._ne_tradeType==2">
										<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.estateName" />
										</a>
									</s:if>
								</td>
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
			<s:if test="pageView.records==null || pageView.records.size()==0">
				<table border="0" cellpadding="0" 	cellspacing="0" class="trade_table" width="100%">
					<tr><td>没有符合条件的数据</td></tr>
				</table>
			</s:if>
			<s:if test="pageView.records!=null || pageView.records.size()>0">
				<table border="0" cellpadding="0" cellspacing="0" class="trade_table" width="100%">
					<s:if test="estateInParameter._nin_tradeMode[0]==1">
						<tr>
							<td>房产名</td>
							<td>户型</td>
							<td>租价</td>
							<td>面积</td>
							<td>发布人</td>
						</tr>
						<s:iterator value="pageView.records" id="item">
							<tr>
								<td>
									<s:if test="estateInParameter._ne_tradeType==1">
										<a href="<%=contextPath %>/freetrade/inContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.title" />	
										</a>
									</s:if>
									<s:if test="estateInParameter._ne_tradeType==2">
										<a href="<%=contextPath %>/entrustTrade/inContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.title" />	
										</a>
									</s:if>
								</td>
								<td><s:property value="#item.bedroom" />房<s:property value="#item.hall" />厅</td>
								<td><s:property value="#item.rentPriceFrom" />-<s:property value="#item.rentPriceTo" />元/月</td>
								<td><s:property value="#item.area" />m<sup>2</sup></td>
								<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
							</tr>
						</s:iterator>
					</s:if>
					<s:if test="estateInParameter._nin_tradeMode[0]==2">
						<tr>
							<td>房产名</td>
							<td>户型</td>
							<td>售价</td>
							<td>面积</td>
							<td>发布人</td>
						</tr>
						<s:iterator value="pageView.records" id="item">
							<tr>
								<td>
									<s:if test="estateInParameter._ne_tradeType==1">
										<a href="<%=contextPath %>/freetrade/inContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.title" />
										</a>
									</s:if>
									<s:if test="estateInParameter._ne_tradeType==2">
										<a href="<%=contextPath %>/entrustTrade/inContent.action?estateId=<s:property value="#item.estateId" />" target="blank" >
											<s:property value="#item.title" />	
										</a>
									</s:if>
								</td>
								<td><s:property value="#item.bedroom" />房<s:property value="#item.hall" />厅</td>
								<td><s:property value="#item.buyPriceFrom/10000" />-<s:property value="#item.buyPriceTo/10000" />万元</td>
								<td><s:property value="#item.areaFrom" />-<s:property value="#item.areaTo" />m<sup>2</sup></td>
								<td><s:date name="createTime" format="yyyy-MM-dd"/></td>
							</tr>
						</s:iterator>
					</s:if>	
				</table>
			</s:if>
		</s:if>
		
		<s:if test="flag=='new'">
			<s:if test="pageView.records==null || pageView.records.size()==0">
				<table border="0" cellpadding="0" 	cellspacing="0" class="trade_table" width="100%">
					<tr><td>没有符合条件的数据</td></tr>
				</table>
			</s:if>
			<s:if test="pageView.records!=null && pageView.records.size()>0">
				<table border="0" cellpadding="0" cellspacing="0" class="trade_table" width="850px">
					<tr>
						<s:iterator value="pageView.records" id="item" status="st" >
							<td style="width: 50%;" >
								<div class="two_left_5_2" >
									<a href="<%=contextPath %>/newHouse/content.action?estateId=<s:property value="estateId" />" target="_blank">
										<s:if test="imagePath!=null && imagePath.trim()!=''">
											<img src="<%=contextPath %>${imagePath }" alt="${estateName }" width="74" height="59" border="0" />
										</s:if>
										<s:else>
											<img src="<%=contextPath %>/images/logo.jpg" width="120" height="40" alt="${estateName }" />
										</s:else>
									</a>
								</div>
								<div class="two_left_5_3" >
									<a href="<%=contextPath %>/newHouse/content.action?estateId=<s:property value="estateId" />" target="_blank" title="${estateName }" ><s:property value="@chance.util.HtmlUtils@removeHTML(estateName,20)"/></a><br/>
									${bedroom }室${hall }厅&nbsp;&nbsp; ${price/10000 }万元<br/>
									<s:property value="@chance.util.HtmlUtils@removeHTML(remark,20)"/>
								</div>
							</td>
							<s:if test="#st.count%2==0">
								</tr><tr>
							</s:if>
						</s:iterator>
					</tr>
				</table>
			</s:if>
		</s:if>
		
			<div id="pageNavigation">
				<%@ include file="/share/fontPageNavigation.jsp" %>
			</div>
		</div>
	</div>
</div>
<s:if test="flag=='out'">
	<div id="Trade_des" class="freeTrade_des">
		<p>
			如果没有找到您要的出售或出租房源，请重新设置查找条件，或发布一条求购求租信息，让房源来找您，现在就
			<a href="<%=contextPath %>/<s:if test="estateOutParameter._ne_tradeType==1">freetrade</s:if><s:elseif test="estateOutParameter._ne_tradeType==2">entrustTrade</s:elseif>/estateOwnRelease.action?flag=in" class="cRed"><u>发布求购求租</u></a>。
		</p>
	</div>
</s:if>
<s:if test="flag=='in'">
	<div id="Trade_des" class="freeTrade_des">
		<p>
			如果没有找到您要的求购或求租信息，请重新设置查找条件，或发布一个出售出租房源，让客户来找您，现在就
			<a href="<%=contextPath %>/<s:if test="estateInParameter._ne_tradeType==1">freetrade</s:if><s:elseif test="estateInParameter._ne_tradeType==2">entrustTrade</s:elseif>/estateOwnRelease.action?flag=out" class="cRed"><u>发布出售出租</u></a>。
		</p>
	</div>
</s:if>