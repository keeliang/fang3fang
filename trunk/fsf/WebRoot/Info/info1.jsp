<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
	<div class="info_fjNews">
 		<s:if test="listInfo1.size()>0">
			<dl>
				<dt>
					<img src="images/info_pic003.jpg" width="80" height="60" alt="" title="" />
				</dt>
				<dd>
					<a href="<%=contextPath %>/Info/infoContent.action?informationId=<s:property value="listInfo2.get(0).informationId"/>" class="cRed03"><b><s:property value="listInfo1.get(0).informationTitle"/></b></a>
				</dd>
				<dd>
					<s:property value="@chance.util.HtmlUtils@removeHTML(listInfo1.get(0).informationContent,22)"/>
					<a href="<%=contextPath %>/Info/infoContent.action?informationId=<s:property value="listInfo2.get(0).informationId"/>" class="cOrange">[全文]</a>
				</dd>
			</dl>
		</s:if>
		<div class="clear"></div>
		<ul>
			<s:iterator value="listInfo1" id="item" status="s" >
				<s:if test="#s.index!=0">
					<li>
						<a target="_blank" href="<%=contextPath %>/Info/infoContent.action?informationId=<s:property value="#item.informationId"/>">${informationTitle }</a>
					</li>
				</s:if>
			</s:iterator>
		</ul>
		<s:if test="listInfo1.size()>0">
			<div align="right" ><a target="_blank" href="<%=contextPath %>/Info/infoList.action?informationParameter._ne_informationType=1&informationParameter.currentPage=1&informationParameter.maxResults=30" >更多&gt;&gt;</a></div>
		</s:if>
	</div>
