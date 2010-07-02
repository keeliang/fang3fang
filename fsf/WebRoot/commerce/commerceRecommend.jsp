<%@ page language="java" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<div class="wangpu_CF_right">
	<div class="wangpu_col_line"></div>
	<div class="wangpu_col_content wangpu_tuijian"><b>推荐房源</b></div>
	<div class="clear"></div>
	<div class="wangpu_col_line"></div>
	<div id="loadingDiv" style="width: 100%;text-align: center;" >
		<img src="<%=contextPath %>/images/loading2.gif" />
		<br />
		<font style="font-weight: bold;" >加载中...</font>
	</div>
	<div id="estateDiv" >
		<aa:zone name="zoneRecommondEstateOnInfo">
			<ul>
				<s:iterator value="listRecommondEstateOnInfo" >
					<li>
					    <p>
					    	<s:if test="imagePath!=null && imagePath.trim()!=''">
									<img src="<%=contextPath %>${imagePath }" width="131" height="86" />
								</s:if>
								<s:else>
									<img src="<%=contextPath %>/images/logo.jpg" width="154" height="51" />
								</s:else>
					    </p>
					    <p>
					    	<s:if test="tradeType==1">
									<a href="<%=contextPath %>/freetrade/outContent.action?estateId=${estateId }" class="cRed02">${estateName }</a>
								</s:if>
								<s:if test="tradeType==2">
									<a href="<%=contextPath %>/entrustTrade/outContent.action?estateId=${estateId }" class="cRed02">${estateName }</a>
								</s:if>
					    </p>
					    <p>
					    	<span class="cRed02"><s:date name="createTime" format="yyyy-MM-dd" /></span>&nbsp;&nbsp;
								<span class="cRed02">${unitPrice}元/平方</span>
					    </p>
					</li>
				</s:iterator>
			</ul>
		</aa:zone>
	</div>
</div>
