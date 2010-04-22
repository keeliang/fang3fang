<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
 if(request.getParameter("estateFlagSet")!=null){
   Object estateFlag = request.getParameter("estateFlagSet");
   session.setAttribute("estateFlag",estateFlag);
 }
 if(request.getParameter("estateFlagGet")!=null){
   out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
   out.println("<Messages>");
   out.println("<Message>");
   out.println("<estateFlag>");
   out.println((Integer)session.getAttribute("estateFlag"));
   out.println("</estateFlag>");
   out.println("</Message>");
   out.println("</Messages>");
   out.flush();
   out.close();
 }
  
 %>
<div class="col03">
	<div class="nav02_content">
		<div class="float_right paddingS">
			<a href="#" class="cBlue">[高级搜索]</a>
			<span class="cOrange">热门关键字:</span><a href="#">A</a>
			<a href="#">B</a>
			<a href="#">C</a>
			<a href="#">D</a>
			<a href="#">E</a>
			<a href="#">F</a>
			<a href="#">G</a>
			<a href="#">H</a>
			<a href="#">I</a>
			<a href="#">J</a>
			<a href="#">K</a>
			<a href="#">L</a>
			<a href="#">M</a>
			<a href="#">N</a>
			<a href="#">O</a>
			<a href="#">P</a>
			<a href="#">Q</a>
			<a href="#">R</a>
			<a href="#">S</a>
			<a href="#">T</a>
			<a href="#">U</a>
			<a href="#">V</a>
			<a href="#">W</a>
			<a href="#">X</a>
			<a href="#">Y</a>
			<a href="#">Z</a>
			<a href="#" class="cOrange">全部</a>
		</div>
		<div class="tap">

			<div id="aboutnav11" class="active">
				<a href="javascript:showDiv(1,1);"
					onmouseover="javascript:showDiv(1,1);" target="_self">房源</a>
			</div>
			<div id="aboutnav12">
				<a href="javascript:showDiv(2,1);"
					onmouseover="javascript:showDiv(2,1);" target="_self">地皮</a>
			</div>
			<div id="aboutnav13">
				<a href="javascript:showDiv(3,1);"
					onmouseover="javascript:showDiv(3,1);" target="_self">住宅</a>
			</div>
			<div id="aboutnav14">
				<a href="javascript:showDiv(4,1);"
					onmouseover="javascript:showDiv(4,1);" target="_self">商铺</a>
			</div>
			<div id="aboutnav15">
				<a href="javascript:showDiv(5,1);"
					onmouseover="javascript:showDiv(5,1);" target="_self">写字楼</a>
			</div>
			<div id="aboutnav16">
				<a href="javascript:showDiv(6,1);"
					onmouseover="javascript:showDiv(6,1);" target="_self">别墅</a>
			</div>
			<div id="aboutnav17">
				<a href="javascript:showDiv(7,1);"
					onmouseover="javascript:showDiv(7,1);" target="_self">厂房</a>
			</div>

		</div>
		<div class="clear"></div>
		<div class="list1" id="about11" style="display: block;">
			<form id="form11" name="form11" method="post" action="">
				<select name="select110" id="select110">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select111" id="select111">
					<option value="">
						城市
					</option>
				</select>
				<select name="select112" id="select112">
					<option value="">
						地区
					</option>
				</select>
				<select name="select113" id="select113">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select114" id="select114">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>
				</select>
				<select name="select115" id="select115">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select116" id="select116">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select117" id="select117">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select118" id="select118">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>

		<div class="list1" id="about12" style="display: none;">
			<form id="form12" name="form12" method="post" action="">
				<select name="select120" id="select120">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select121" id="select121">
					<option value="">
						城市
					</option>
				</select>
				<select name="select122" id="select122">
					<option value="">
						地区
					</option>
				</select>
				<select name="select123" id="select123">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select124" id="select124">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>
				</select>
				<select name="select125" id="select125">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select126" id="select126">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select127" id="select127">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select128" id="select128">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>

		<div class="list1" id="about13" style="display: none;">
			<form id="form13" name="form13" method="post" action="">
				<select name="select130" id="select130">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select131" id="select131">
					<option value="">
						城市
					</option>
				</select>
				<select name="select132" id="select132">
					<option value="">
						地区
					</option>
				</select>
				<select name="select133" id="select133">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select134" id="select134">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>
				</select>
				<select name="select135" id="select135">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select136" id="select136">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select137" id="select137">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select138" id="select138">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>

		<div class="list1" id="about14" style="display: none;">
			<form id="form14" name="form14" method="post" action="">
				<select name="select140" id="select140">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select141" id="select141">
					<option value="">
						城市
					</option>
				</select>
				<select name="select142" id="select142">
					<option value="">
						地区
					</option>
				</select>
				<select name="select143" id="select143">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select144" id="select144">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>
				</select>
				<select name="select145" id="select145">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select146" id="select146">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select147" id="select147">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select148" id="select148">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>

		<div class="list1" id="about15" style="display: none;">
			<form id="form15" name="form15" method="post" action="">
				<select name="select150" id="select150">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select151" id="select151">
					<option value="">
						城市
					</option>
				</select>
				<select name="select152" id="select152">
					<option value="">
						地区
					</option>
				</select>
				<select name="select153" id="select153">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select154" id="select154">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>					
				</select>
				<select name="select155" id="select155">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select156" id="select156">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select157" id="select157">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select158" id="select158">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>

		<div class="list1" id="about16" style="display: none;">
			<form id="form16" name="form16" method="post" action="">
				<select name="select160" id="select160">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select161" id="select161">
					<option value="">
						城市
					</option>
				</select>
				<select name="select162" id="select162">
					<option value="">
						地区
					</option>
				</select>
				<select name="select163" id="select163">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select164" id="select164">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>
				</select>
				<select name="select165" id="select165">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select166" id="select166">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select167" id="select167">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select168" id="select168">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>

		<div class="list1" id="about17" style="display: none;">
			<form id="form17" name="form17" method="post" action="">
				<select name="select170" id="select170">
					<option value="0">
						售
					</option>
					<option value="1">
						租
					</option>
				</select>
				<select name="select171" id="select171">
					<option value="">
						城市
					</option>
				</select>
				<select name="select172" id="select172">
					<option value="">
						地区
					</option>
				</select>
				<select name="select173" id="select173">
					<option value="">
						商圈
					</option>
				</select>
				<select name="select174" id="select174">
					<option value="">
						室
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
					<option value="3">
						3
					</option>
					<option value="4">
						4
					</option>
					<option value="5">
						5
					</option>
				</select>
				<select name="select175" id="select175">
					<option value="">
						厅
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select176" id="select176">
					<option value="">
						卫
					</option>
					<option value="1">
						1
					</option>
					<option value="2">
						2
					</option>
				</select>
				<select name="select177" id="select177">
					<option value="">
						面积
					</option>
					<option value="1">
						60平方米以下
					</option>
					<option value="2">
						60 - 100平方米
					</option>
					<option value="3">
						100 - 150平方米
					</option>
					<option value="4">
						150平方米以上
					</option>
				</select>
				<select name="select178" id="select178">
					<option value="">
						价格
					</option>
					<option value="1">
						50万元以下
					</option>
					<option value="2">
						50 - 100万元
					</option>
					<option value="3">
						100万元以上
					</option>
				</select>
				<input name="text" type="text" value="请输入关键字" size="17" />
				<input type="submit" name="" value=" 搜索 " />
			</form>
		</div>
	</div>
</div>

<!-- city list -->

        <div class="city_list">
					<p id="QuickSearchContent">
						[区域查询]： 
						<a href="../Search/Result.jsp" class="cRed"><u>从化区</u> </a>
						<a href="../Search/Result.jsp" class="cRed"><u>花都区</u> </a>
						<a href="../Search/Result.jsp" class="cRed"><u>黄埔区</u> </a>
						<a href="../Search/Result.jsp" class="cRed"><u>芳村区</u> </a>
						<a href="../Search/Result.jsp" class="cRed"><u>白云区</u> </a>
						<a href="../Search/Result.jsp" class="cRed"><u>番禺区</u> </a>
						<a href="../Search/Result.jsp" class="cRed"><u>海珠区</u> </a>
						<a href="#" class="cRed"><u>荔湾区</u> </a>
						<a href="#" class="cRed"><u>越秀区</u> </a>
						<a href="#" class="cRed"><u>增城区</u> </a>
						<a href="#" class="cRed"><u>天河区</u> </a>
						<a href="#" class="cRed"><u>东山区</u> </a>
						<a href="#" class="cRed"><u>南海</u> </a>
						<a href="#" class="cRed"><u>萝岗区</u> </a>
						<a href="#" class="cRed"><u>佛山市</u> </a>
						<a href="#" class="cRed"><u>中山</u> </a>
					</p>
					<p id="PriceContent">
						[价格查询]：
						<a href="../Search/QuickSearch.jsp?Title=C30万以下"   class="cRed"><u>30万以下</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C30-60万"   class="cRed"><u>30-60万</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C60-100万"  class="cRed"><u>60-100万</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C100-150万" class="cRed"><u>100-150万</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C150-200万" class="cRed"><u>150-200万</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C200-300万" class="cRed"><u>200-300万</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C300-500万" class="cRed"><u>300-500万</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=C500万以上"  class="cRed"><u>500万以上</u> </a>
					</p>
					<p id="AreaContent">
						[面积查询]：
						<a href="../Search/QuickSearch.jsp?Title=A40平米以下"    class="cRed"><u>40平米以下</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A40-60平米"    class="cRed"><u>40-60平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A60-80平米"    class="cRed"><u>60-80平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A80-110平米"   class="cRed"><u>80-110平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A110-130平米"  class="cRed"><u>110-130平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A130-150平米"  class="cRed"><u>130-150平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A150-200平米"  class="cRed"><u>150-200平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A200-300平米"  class="cRed"><u>200-300平米</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=A300-500平米"  class="cRed"><u>300-500平米</u> </a>
					</p>
					<p id="HouseTypeContent">
						[房型查询]：
						<a href="../Search/QuickSearch.jsp?Title=R一房"  class="cRed"><u>一房</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=R二房"  class="cRed"><u>二房</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=R三房"  class="cRed"><u>三房</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=R四房"  class="cRed"><u>四房</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=R五房"  class="cRed"><u>五房</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=R五房以上"  class="cRed"><u>五房以上</u> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[物业类型]：
						<a href="../Search/QuickSearch.jsp?Title=P普通住宅"  class="cRed"><u>普通住宅</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=P公寓"     class="cRed"><u>公寓</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=P商铺"     class="cRed"><u>商铺</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=P别墅"     class="cRed"><u>别墅</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=P写字楼"   class="cRed"><u>写字楼</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=P仓库厂房"  class="cRed"><u>仓库厂房</u> </a>
						<a href="../Search/QuickSearch.jsp?Title=P车位"     class="cRed"><u>车位</u> </a>
					</p>
		</div>

