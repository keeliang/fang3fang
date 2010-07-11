<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!-- left -->
<div class="memberC_left">
	<div class="memberC_leftC" id="CollapsiblePanel1">
		<div class="memberC_leftTitle" tabindex="0">
			<div class="memberC_leftTitleMore">
				<img src="images/memberC_leftDot01.jpg" width="7" height="8" />
			</div>
			<b>我要买房</b>
		</div>
		<div class="memberC_leftShow">
			<div class="blank10"></div>
			<p class="font14">
				<img src="images/memberC_leftDot02.jpg" width="26" height="21"
					align="absmiddle" />
			</p>
			<p class="memberC_leftShow_line"></p>
			<dl>
				<dt class="cRed05">
					<b>免费发布信息</b>
				</dt>
				<dd>
					自主交易区-<a href="<%=contextPath %>/memberCenter/estateInOwnNew.action">求购求租信息</a>
				</dd>
				<dt class="cRed05">
					<b>委托收费发布信息</b>
				</dt>
				<dd>
					委托交易区-<a href="<%=contextPath %>/memberCenter/estateInNew.action">求购求租信息</a>
				</dd>
			</dl>
			<div class="blank10"></div>
		</div>
		<div class="memberC_leftC" id="CollapsiblePanel2">
			<div class="memberC_leftTitle02" tabindex="1">
				<div class="memberC_leftTitleMore">
					<img src="images/memberC_leftDot01.jpg" width="7" height="8" />
				</div>
				<b>我要卖房</b>
			</div>
			<div class="memberC_leftShow">
				<div class="blank10"></div>
				<p class="font14">
					<img src="images/memberC_leftDot03.jpg" width="26" height="21" align="absmiddle" />
				</p>
				<p class="memberC_leftShow_line"></p>
				<dl>
					<dt class="cRed05"><b>免费发布信息</b></dt>
					<dd>自主交易区-<a href="<%=contextPath %>/memberCenter/estateOutOwnNew.action">出售出租信息</a></dd>
					<dt class="cRed05"><b>委托收费发布信息</b></dt>
					<dd>委托交易区-<a href="<%=contextPath %>/memberCenter/estateOutNew.action">出售出租信息</a></dd>
				</dl>
				<div class="blank10"></div>
			</div>
			<div class="memberC_leftBottom"></div>
		</div>
	</div>

	<div class="clear"></div>
	<div class="blankP"></div>

	<div class="memberC_leftC" id="CollapsiblePanel3">
		<div class="memberC_leftTitle" tabindex="2">
			<div class="memberC_leftTitleMore">
				<img src="images/memberC_leftDot01.jpg" width="7" height="8" />
			</div>
			<b>管理个人发布信息</b>
		</div>
		<div class="memberC_leftShow02">
			<div class="blank10"></div>
			<dl>
				<dd>
					自主交易区-<a href="<%=contextPath %>/memberCenter/estateInOwnList.action?estateInParameter._ne_createUserId=${USER.userId }&estateInParameter._ne_tradeType=1" class="cRed06">求购求租管理</a>
				</dd>
				<dd>
					自主交易区-<a href="<%=contextPath %>/memberCenter/estateOutOwnList.action?estateOutParameter._ne_createUserId=${USER.userId }&estateOutParameter._ne_tradeType=1" class="cRed06">出售出租管理</a>
				</dd>
				<dd>
					委托交易区-<a href="<%=contextPath %>/memberCenter/estateInList.action?estateInParameter._ne_createUserId=${User.userId }&estateInParameter._ne_tradeType=2" class="cRed06">求购求租管理</a>
				</dd>
				<dd>
					委托交易区-<a href="<%=contextPath %>/memberCenter/estateOutList.action?estateOutParameter._ne_createUserId=${USER.userId }&estateOutParameter._ne_tradeType=2" class="cRed06">出售出租管理</a>
				</dd>
			</dl>
			<div class="blank10"></div>
		</div>
		<div class="memberC_leftBottom"></div>
	</div>
</div>